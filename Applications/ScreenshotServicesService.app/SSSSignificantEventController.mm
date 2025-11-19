@interface SSSSignificantEventController
+ (id)sharedSignificantEventController;
- (id)_runPPTServiceRequestForScreenshot:(id)a3;
- (id)_runPPTServiceRequestForScreenshots:(id)a3;
- (void)_finishRunPPTServiceRequest:(id)a3;
- (void)screenshotAppearAnimationBeganForScreenshot:(id)a3;
- (void)screenshotAppearAnimationEndedForScreenshot:(id)a3 userInterface:(id)a4;
- (void)screenshotUIWithScreenshots:(id)a3 beganStateChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)screenshotUIWithScreenshots:(id)a3 endedStateChangeFromState:(unint64_t)a4 toState:(unint64_t)a5 userInterface:(id)a6;
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

- (id)_runPPTServiceRequestForScreenshot:(id)a3
{
  v3 = [a3 environmentDescription];
  v4 = [v3 appleInternalOptions];
  v5 = [v4 runPPTServiceRequest];

  return v5;
}

- (id)_runPPTServiceRequestForScreenshots:(id)a3
{
  v4 = [a3 firstObject];
  v5 = [(SSSSignificantEventController *)self _runPPTServiceRequestForScreenshot:v4];

  return v5;
}

- (void)_finishRunPPTServiceRequest:(id)a3
{
  v4 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v4 testName];

  [v5 finishedIPTest:v6];
  self->_isRunningScreenshotPPT = 0;
}

- (void)screenshotAppearAnimationBeganForScreenshot:(id)a3
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

- (void)screenshotAppearAnimationEndedForScreenshot:(id)a3 userInterface:(id)a4
{
  v6 = a4;
  v7 = a3;
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

  v10 = [(SSSSignificantEventController *)self _runPPTServiceRequestForScreenshot:v7];

  if (v10)
  {
    v11 = [v10 testName];
    v12 = [v11 isEqualToString:@"TakeScreenshot"];

    if (v12)
    {
      [(SSSSignificantEventController *)self _finishRunPPTServiceRequest:v10];
      goto LABEL_17;
    }

    v13 = [v10 testName];
    v14 = [v13 isEqualToString:@"ExpandToFullscreen"];

    if (v14)
    {
      [(SSSSignificantEventController *)self _startRunPPTServiceRequest:v10];
      [v6 significantEventControllerRequestsTransitionToStateForTest:1];
      goto LABEL_17;
    }

    v15 = [v10 testName];
    v16 = [v15 isEqualToString:@"GlitchFreeHero"];

    if (!v16)
    {
      v19 = [v10 testName];
      v20 = [v19 isEqualToString:@"CropAndZoom"];

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
      v17 = [v6 numberOfScreenshots];
      if (v17 >= [v10 numberOfRequiredScreenshots])
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

- (void)screenshotUIWithScreenshots:(id)a3 beganStateChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;
  if (a4 != a5)
  {
    if (a4 == 1)
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

    if (!a4)
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

- (void)screenshotUIWithScreenshots:(id)a3 endedStateChangeFromState:(unint64_t)a4 toState:(unint64_t)a5 userInterface:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (a4 != a5)
  {
    if (a4 == 1)
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

    if (!a4)
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

      v14 = [(SSSSignificantEventController *)self _runPPTServiceRequestForScreenshots:v10];
      v15 = [v14 testName];
      v16 = [v15 isEqualToString:@"ExpandToFullscreen"];

      if (v16)
      {
        [(SSSSignificantEventController *)self _finishRunPPTServiceRequest:v14];
      }

LABEL_14:
    }
  }
}

@end