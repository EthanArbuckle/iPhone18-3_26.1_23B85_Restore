@interface SSSSignificantEventController
+ (id)sharedSignificantEventController;
- (id)_runPPTServiceRequestForScreenshot:(id)screenshot;
- (id)_runPPTServiceRequestForScreenshots:(id)screenshots;
- (void)_finishRunPPTServiceRequest:(id)request;
- (void)screenshotAppearAnimationBeganForScreenshot:(id)screenshot;
- (void)screenshotAppearAnimationEndedForScreenshot:(id)screenshot userInterface:(id)interface;
- (void)screenshotUIWithScreenshots:(id)screenshots beganStateChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)screenshotUIWithScreenshots:(id)screenshots endedStateChangeFromState:(unint64_t)state toState:(unint64_t)toState userInterface:(id)interface;
@end

@implementation SSSSignificantEventController

+ (id)sharedSignificantEventController
{
  if (qword_1000D4A48 != -1)
  {
    sub_100074A70();
  }

  v3 = qword_1000D4A40;

  return v3;
}

- (id)_runPPTServiceRequestForScreenshot:(id)screenshot
{
  environmentDescription = [screenshot environmentDescription];
  appleInternalOptions = [environmentDescription appleInternalOptions];
  runPPTServiceRequest = [appleInternalOptions runPPTServiceRequest];

  return runPPTServiceRequest;
}

- (id)_runPPTServiceRequestForScreenshots:(id)screenshots
{
  firstObject = [screenshots firstObject];
  v5 = [(SSSSignificantEventController *)self _runPPTServiceRequestForScreenshot:firstObject];

  return v5;
}

- (void)_finishRunPPTServiceRequest:(id)request
{
  requestCopy = request;
  v5 = +[UIApplication sharedApplication];
  testName = [requestCopy testName];

  [v5 finishedIPTest:testName];
  self->_isRunningScreenshotPPT = 0;
}

- (void)screenshotAppearAnimationBeganForScreenshot:(id)screenshot
{
  v3 = _SSSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScreenshotAnimation", "", buf, 2u);
  }

  v4 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BEGIN ScreenshotAnimation", v9, 2u);
  }

  v5 = _SSSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScreenshotGestureToAnimationStart", "", v8, 2u);
  }

  v6 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "END ScreenshotGestureToAnimationStart", v7, 2u);
  }
}

- (void)screenshotAppearAnimationEndedForScreenshot:(id)screenshot userInterface:(id)interface
{
  interfaceCopy = interface;
  screenshotCopy = screenshot;
  v8 = _SSSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScreenshotAnimation", "", buf, 2u);
  }

  v9 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "END ScreenshotAnimation", buf, 2u);
  }

  v10 = [(SSSSignificantEventController *)self _runPPTServiceRequestForScreenshot:screenshotCopy];

  if (v10)
  {
    testName = [v10 testName];
    v12 = [testName isEqualToString:@"TakeScreenshot"];

    if (v12)
    {
      [(SSSSignificantEventController *)self _finishRunPPTServiceRequest:v10];
      goto LABEL_17;
    }

    testName2 = [v10 testName];
    v14 = [testName2 isEqualToString:@"ExpandToFullscreen"];

    if (v14)
    {
      [(SSSSignificantEventController *)self _startRunPPTServiceRequest:v10];
      [interfaceCopy significantEventControllerRequestsTransitionToStateForTest:1];
      goto LABEL_17;
    }

    testName3 = [v10 testName];
    v16 = [testName3 isEqualToString:@"GlitchFreeHero"];

    if (!v16)
    {
      testName4 = [v10 testName];
      v20 = [testName4 isEqualToString:@"CropAndZoom"];

      if (!v20)
      {
        goto LABEL_17;
      }

      [(SSSSignificantEventController *)self _startRunPPTServiceRequest:v10];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100029FBC;
      v21[3] = &unk_1000BA3E8;
      v21[4] = self;
      v22 = v10;
      sub_10000A7C8(v21);
      v18 = v22;
LABEL_16:

      goto LABEL_17;
    }

    if (!self->_isRunningScreenshotPPT)
    {
      numberOfScreenshots = [interfaceCopy numberOfScreenshots];
      if (numberOfScreenshots >= [v10 numberOfRequiredScreenshots])
      {
        [(SSSSignificantEventController *)self _startRunPPTServiceRequest:v10];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100029FB0;
        v23[3] = &unk_1000BA3E8;
        v23[4] = self;
        v24 = v10;
        sub_10000A0E8(v23);
        v18 = v24;
        goto LABEL_16;
      }
    }
  }

LABEL_17:
}

- (void)screenshotUIWithScreenshots:(id)screenshots beganStateChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  screenshotsCopy = screenshots;
  if (state != toState)
  {
    if (state == 1)
    {
      v13 = _SSSignpostLog();
      if (os_signpost_enabled(v13))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScreenshotPIPMiniaturize", "", v15, 2u);
      }

      v10 = os_log_create("com.apple.screenshotservices", "Performance");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v14 = 0;
      v11 = "BEGIN ScreenshotPIPMiniaturize";
      v12 = &v14;
      goto LABEL_12;
    }

    if (!state)
    {
      v8 = +[SSStatisticsManager sharedStatisticsManager];
      [v8 pipExpanded];

      v9 = _SSSignpostLog();
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ScreenshotPIPExpand", "", buf, 2u);
      }

      v10 = os_log_create("com.apple.screenshotservices", "Performance");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v16 = 0;
      v11 = "BEGIN ScreenshotPIPExpand";
      v12 = &v16;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, v12, 2u);
LABEL_13:
    }
  }
}

- (void)screenshotUIWithScreenshots:(id)screenshots endedStateChangeFromState:(unint64_t)state toState:(unint64_t)toState userInterface:(id)interface
{
  screenshotsCopy = screenshots;
  interfaceCopy = interface;
  if (state != toState)
  {
    if (state == 1)
    {
      v17 = _SSSignpostLog();
      if (os_signpost_enabled(v17))
      {
        *v19 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScreenshotPIPMiniaturize", "", v19, 2u);
      }

      v14 = os_log_create("com.apple.screenshotservices", "Performance");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "END ScreenshotPIPMiniaturize", v18, 2u);
      }

      goto LABEL_14;
    }

    if (!state)
    {
      v12 = _SSSignpostLog();
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ScreenshotPIPExpand", "", buf, 2u);
      }

      v13 = os_log_create("com.apple.screenshotservices", "Performance");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "END ScreenshotPIPExpand", v20, 2u);
      }

      v14 = [(SSSSignificantEventController *)self _runPPTServiceRequestForScreenshots:screenshotsCopy];
      testName = [v14 testName];
      v16 = [testName isEqualToString:@"ExpandToFullscreen"];

      if (v16)
      {
        [(SSSSignificantEventController *)self _finishRunPPTServiceRequest:v14];
      }

LABEL_14:
    }
  }
}

@end