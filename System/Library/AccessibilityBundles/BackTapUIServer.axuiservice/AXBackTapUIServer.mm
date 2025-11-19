@interface AXBackTapUIServer
+ (id)sharedInstance;
- (AXBackTapUIServer)init;
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)_addBackTapViewController:(id)a3;
- (void)_confirmFalsePositiveReportForFilename:(id)a3;
- (void)_hideContentViewController;
- (void)_registerForBackTapEvents;
- (void)_serverEnabled;
- (void)_showContentViewController:(id)a3;
- (void)_startGestureDetector;
- (void)_stopGestureDetector;
- (void)_unregisterForBackTapEvents;
- (void)_updateBackTapPolicy:(unint64_t)a3;
- (void)_updateClickSpeed;
- (void)alertWithIdentifierDidDisappear:(id)a3;
- (void)alertWithIdentifierWasActivated:(id)a3 userInfo:(id)a4;
- (void)dealloc;
- (void)phoenixClassifierDidLogFile:(id)a3;
- (void)phoenixGestureDetector:(id)a3 failedWithError:(id)a4;
- (void)phoenixGestureDetector:(id)a3 stoppedWithError:(id)a4;
- (void)phoenixGestureDetectorDidDetectDoubleTap:(id)a3;
- (void)phoenixGestureDetectorDidDetectTripleTap:(id)a3;
@end

@implementation AXBackTapUIServer

+ (id)sharedInstance
{
  if (qword_CAC8 != -1)
  {
    sub_31C8();
  }

  v3 = qword_CAC0;

  return v3;
}

- (AXBackTapUIServer)init
{
  v7.receiver = self;
  v7.super_class = AXBackTapUIServer;
  v2 = [(AXBackTapUIServer *)&v7 init];
  if (v2 && AXDeviceSupportsBackTap())
  {
    objc_initWeak(&location, v2);
    objc_copyWeak(&v5, &location);
    v4 = v2;
    AXPerformBlockOnMainThread();

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(AXBackTapUIServer *)self _unregisterForBackTapEvents];
  v3.receiver = self;
  v3.super_class = AXBackTapUIServer;
  [(AXBackTapUIServer *)&v3 dealloc];
}

- (void)_registerForBackTapEvents
{
  v3 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"System back tap" HIDEventTapPriority:10 systemEventTapIdentifier:0 systemEventTapPriority:0];
  eventProcessor = self->_eventProcessor;
  self->_eventProcessor = v3;

  [(AXEventProcessor *)self->_eventProcessor setHIDEventFilterMask:32];
  [(AXEventProcessor *)self->_eventProcessor setHIDEventHandler:&stru_8310];
  v5 = self->_eventProcessor;

  [(AXEventProcessor *)v5 beginHandlingHIDEventsForReason:@"System back tap"];
}

- (void)_unregisterForBackTapEvents
{
  [(AXEventProcessor *)self->_eventProcessor endHandlingHIDEventsForReason:@"System back tap"];
  eventProcessor = self->_eventProcessor;

  [(AXEventProcessor *)eventProcessor cleanup];
}

- (void)_updateClickSpeed
{
  _AXSHomeClickSpeed();
  v4 = v3;
  if (AXDeviceHasHomeButton())
  {
    v5 = v4;
  }

  else
  {
    _AXSSideButtonClickSpeed();
    if (fabsf(v6 + -1.2) >= 0.01)
    {
      v5 = 0.5;
      if (fabsf(v6 + -0.7) >= 0.01)
      {
        v5 = v4;
        if (fabsf(v6 + -0.4) < 0.01)
        {
          v5 = 0.35;
        }
      }
    }

    else
    {
      v5 = 0.7;
    }
  }

  v8 = [(AXBackTapUIServer *)self gestureDetector];
  *&v7 = v5;
  [v8 setTapSpeed:v7];
}

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (a4 > 10001)
  {
    if (a4 == 10002)
    {
      v11 = [(AXBackTapUIServer *)self gestureDetector];
      [(AXBackTapUIServer *)self phoenixGestureDetectorDidDetectDoubleTap:v11];
    }

    else
    {
      if (a4 != 10003)
      {
        goto LABEL_12;
      }

      v11 = [(AXBackTapUIServer *)self gestureDetector];
      [(AXBackTapUIServer *)self phoenixGestureDetectorDidDetectTripleTap:v11];
    }

LABEL_11:

    goto LABEL_12;
  }

  if (a4 == 10000)
  {
    v11 = [v9 objectForKey:AXBackTapClientRegistrationKeyPolicy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[AXBackTapUIServer _updateBackTapPolicy:](self, "_updateBackTapPolicy:", [v11 unsignedIntegerValue]);
      [(AXBackTapUIServer *)self _startGestureDetector];
    }

    goto LABEL_11;
  }

  if (a4 == 10001)
  {
    [(AXBackTapUIServer *)self _stopGestureDetector];
  }

LABEL_12:

  return 0;
}

- (void)_updateBackTapPolicy:(unint64_t)a3
{
  v3 = a3 & 3;
  v4 = [(AXBackTapUIServer *)self gestureDetector];
  v5 = v4;
  if (v3 == 2)
  {
    [v4 setTripleTapPolicy];

    v6 = AXLogBackTap();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "Set triple tap policy in phoenix gesture detector";
      v8 = &v10;
      goto LABEL_9;
    }
  }

  else if (v3 == 1)
  {
    [v4 setDoubleTapPolicy];

    v6 = AXLogBackTap();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v7 = "Set double tap policy in phoenix gesture detector";
      v8 = &v11;
LABEL_9:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    [v4 setGeneralPolicy];

    v6 = AXLogBackTap();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = "Set general policy in phoenix gesture detector";
      v8 = &v9;
      goto LABEL_9;
    }
  }
}

- (void)_startGestureDetector
{
  if (![(AXBackTapUIServer *)self gestureDetectorRunning])
  {
    v3 = AXLogBackTap();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting gesture detector from AXBackTap", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = [(AXBackTapUIServer *)self gestureDetector];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1CB8;
    v5[3] = &unk_8338;
    objc_copyWeak(&v6, buf);
    v5[4] = self;
    [v4 startWithCompletion:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

- (void)_stopGestureDetector
{
  if ([(AXBackTapUIServer *)self gestureDetectorRunning])
  {
    v3 = AXLogBackTap();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping gesture detector from AXBackTap", buf, 2u);
    }

    v4 = [(AXBackTapUIServer *)self gestureDetector];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1E18;
    v5[3] = &unk_8360;
    v5[4] = self;
    [v4 stopWithCompletion:v5];
  }
}

- (void)_serverEnabled
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 backTapDoubleTapAction];
  v4 = AXASTSiriShortcutPrefixName;
  if ([v3 hasPrefix:AXASTSiriShortcutPrefixName])
  {
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 backTapTripleTapAction];
    v7 = [v6 hasPrefix:v4];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = +[AXSiriShortcutsManager sharedManager];
LABEL_5:
  v9 = +[AXPISystemActionHelper sharedInstance];
  [v9 warm];

  v10 = AXLogBackTap();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Server enabled, warming up shortcuts and AXPI", v11, 2u);
  }
}

- (void)alertWithIdentifierDidDisappear:(id)a3
{
  v4 = a3;
  v5 = [(AXBackTapUIServer *)self activeAlertIdentifier];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {

    [(AXBackTapUIServer *)self setActiveAlertIdentifier:0];
  }
}

- (void)alertWithIdentifierWasActivated:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AXUIDisplayManager sharedDisplayManager];
  v9 = [(AXBackTapUIServer *)self activeAlertIdentifier];
  [v8 hideAlertWithIdentifier:v9 forService:self];

  v10 = [(AXBackTapUIServer *)self reportAlertIdentifier];
  LODWORD(v9) = [v7 isEqualToString:v10];

  if (v9)
  {
    v11 = accessibilityLocalizedString(@"confirm.alert.message.title");
    v12 = +[AXSettings sharedInstance];
    if ([v12 backTapRNNModelEnabled])
    {
      v13 = @"confirm.alert.message.message.rnn";
    }

    else
    {
      v13 = @"confirm.alert.message.message";
    }

    v14 = accessibilityLocalizedString(v13);
    v15 = [UIAlertController alertControllerWithTitle:v11 message:v14 preferredStyle:1];

    v16 = accessibilityLocalizedString(@"confirm.alert.action.cancel");
    v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:0];
    [v15 addAction:v17];

    v18 = accessibilityLocalizedString(@"confirm.alert.action.confirm");
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_2314;
    v24 = &unk_83B0;
    v25 = self;
    v26 = v6;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v21];

    [v15 addAction:{v19, v21, v22, v23, v24, v25}];
    v20 = [(AXBackTapUIServer *)self backTapViewController];
    [v20 presentViewController:v15 animated:1 completion:0];
  }
}

- (void)_confirmFalsePositiveReportForFilename:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = AXLogBackTap();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Tapped on false positive alert for filename: %@", buf, 0xCu);
    }

    v6 = [(AXBackTapUIServer *)self gestureDetector];
    [v6 reportFalsePositive:v4];

    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = accessibilityLocalizedString(@"confirmation.alert.message.title");
    v9 = accessibilityLocalizedString(@"confirmation.alert.message.subtitle");
    v10 = [v7 showAlertWithText:v8 subtitleText:v9 iconImage:0 type:3 priority:30 duration:0 userInfo:3.0 forService:self];
    [(AXBackTapUIServer *)self setConfirmAlertIdentifier:v10];
  }
}

- (void)_addBackTapViewController:(id)a3
{
  v4 = a3;
  if ([(AXBackTapUIServer *)self gestureDetectorRunning])
  {
    [(AXBackTapUIServer *)self _showContentViewController:v4];
  }

  else
  {
    [(AXBackTapUIServer *)self _hideContentViewController];
    if (v4)
    {
      v4[2]();
    }
  }
}

- (void)_showContentViewController:(id)a3
{
  v4 = a3;
  v5 = [(AXBackTapUIServer *)self backTapViewController];
  if (!v5)
  {
    v6 = AXLogBackTap();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Showing Scene View Controller for Back Tap", buf, 2u);
    }

    v7 = objc_opt_new();
    objc_initWeak(buf, self);
    v8 = +[AXUIDisplayManager sharedDisplayManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_26F4;
    v9[3] = &unk_83D8;
    objc_copyWeak(&v12, buf);
    v5 = v7;
    v10 = v5;
    v11 = v4;
    [v8 addContentViewController:v5 withUserInteractionEnabled:1 forService:self context:0 completion:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)_hideContentViewController
{
  v3 = [(AXBackTapUIServer *)self backTapViewController];
  if (v3)
  {
    v4 = AXLogBackTap();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Hiding Scene View Controller for Back Tap", v6, 2u);
    }

    v5 = +[AXUIDisplayManager sharedDisplayManager];
    [v5 removeContentViewController:v3 withUserInteractionEnabled:0 forService:self];

    [(AXBackTapUIServer *)self setBackTapViewController:0];
  }
}

- (void)phoenixClassifierDidLogFile:(id)a3
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)phoenixGestureDetectorDidDetectDoubleTap:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 backTapConfirmationBannerEnabled])
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 backTapFalsePositiveAlertsEnabled];

    if ((v5 & 1) == 0)
    {
      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }

  else
  {
  }

  v6 = [AXEventRepresentation accessibilityEventRepresentationWithSender:4 usagePage:1 usage:1];
  v7 = +[AXEventTapManager sharedManager];
  [v7 sendHIDSystemEvent:v6 senderID:0x8000000817319381];

  v8 = +[AXSettings sharedInstance];
  v9 = [v8 backTapUsageCount];
  v10 = +[AXSettings sharedInstance];
  [v10 setBackTapUsageCount:v9 + 1];
}

- (void)phoenixGestureDetectorDidDetectTripleTap:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 backTapConfirmationBannerEnabled])
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 backTapFalsePositiveAlertsEnabled];

    if ((v5 & 1) == 0)
    {
      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }

  else
  {
  }

  v6 = [AXEventRepresentation accessibilityEventRepresentationWithSender:4 usagePage:1 usage:2];
  v7 = +[AXEventTapManager sharedManager];
  [v7 sendHIDSystemEvent:v6 senderID:0x8000000817319381];

  v8 = +[AXSettings sharedInstance];
  v9 = [v8 backTapUsageCount];
  v10 = +[AXSettings sharedInstance];
  [v10 setBackTapUsageCount:v9 + 1];
}

- (void)phoenixGestureDetector:(id)a3 failedWithError:(id)a4
{
  v4 = a4;
  v5 = AXLogBackTap();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_32F8(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)phoenixGestureDetector:(id)a3 stoppedWithError:(id)a4
{
  v4 = a4;
  v5 = AXLogBackTap();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Phoenix gesture detector stopped: %@", &v6, 0xCu);
  }
}

@end