@interface AXBackTapUIServer
+ (id)sharedInstance;
- (AXBackTapUIServer)init;
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)_addBackTapViewController:(id)controller;
- (void)_confirmFalsePositiveReportForFilename:(id)filename;
- (void)_hideContentViewController;
- (void)_registerForBackTapEvents;
- (void)_serverEnabled;
- (void)_showContentViewController:(id)controller;
- (void)_startGestureDetector;
- (void)_stopGestureDetector;
- (void)_unregisterForBackTapEvents;
- (void)_updateBackTapPolicy:(unint64_t)policy;
- (void)_updateClickSpeed;
- (void)alertWithIdentifierDidDisappear:(id)disappear;
- (void)alertWithIdentifierWasActivated:(id)activated userInfo:(id)info;
- (void)dealloc;
- (void)phoenixClassifierDidLogFile:(id)file;
- (void)phoenixGestureDetector:(id)detector failedWithError:(id)error;
- (void)phoenixGestureDetector:(id)detector stoppedWithError:(id)error;
- (void)phoenixGestureDetectorDidDetectDoubleTap:(id)tap;
- (void)phoenixGestureDetectorDidDetectTripleTap:(id)tap;
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

  gestureDetector = [(AXBackTapUIServer *)self gestureDetector];
  *&v7 = v5;
  [gestureDetector setTapSpeed:v7];
}

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  messageCopy = message;
  withIdentifierCopy = withIdentifier;
  if (identifier > 10001)
  {
    if (identifier == 10002)
    {
      gestureDetector = [(AXBackTapUIServer *)self gestureDetector];
      [(AXBackTapUIServer *)self phoenixGestureDetectorDidDetectDoubleTap:gestureDetector];
    }

    else
    {
      if (identifier != 10003)
      {
        goto LABEL_12;
      }

      gestureDetector = [(AXBackTapUIServer *)self gestureDetector];
      [(AXBackTapUIServer *)self phoenixGestureDetectorDidDetectTripleTap:gestureDetector];
    }

LABEL_11:

    goto LABEL_12;
  }

  if (identifier == 10000)
  {
    gestureDetector = [messageCopy objectForKey:AXBackTapClientRegistrationKeyPolicy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[AXBackTapUIServer _updateBackTapPolicy:](self, "_updateBackTapPolicy:", [gestureDetector unsignedIntegerValue]);
      [(AXBackTapUIServer *)self _startGestureDetector];
    }

    goto LABEL_11;
  }

  if (identifier == 10001)
  {
    [(AXBackTapUIServer *)self _stopGestureDetector];
  }

LABEL_12:

  return 0;
}

- (void)_updateBackTapPolicy:(unint64_t)policy
{
  v3 = policy & 3;
  gestureDetector = [(AXBackTapUIServer *)self gestureDetector];
  v5 = gestureDetector;
  if (v3 == 2)
  {
    [gestureDetector setTripleTapPolicy];

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
    [gestureDetector setDoubleTapPolicy];

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
    [gestureDetector setGeneralPolicy];

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
    gestureDetector = [(AXBackTapUIServer *)self gestureDetector];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1CB8;
    v5[3] = &unk_8338;
    objc_copyWeak(&v6, buf);
    v5[4] = self;
    [gestureDetector startWithCompletion:v5];

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

    gestureDetector = [(AXBackTapUIServer *)self gestureDetector];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1E18;
    v5[3] = &unk_8360;
    v5[4] = self;
    [gestureDetector stopWithCompletion:v5];
  }
}

- (void)_serverEnabled
{
  v2 = +[AXSettings sharedInstance];
  backTapDoubleTapAction = [v2 backTapDoubleTapAction];
  v4 = AXASTSiriShortcutPrefixName;
  if ([backTapDoubleTapAction hasPrefix:AXASTSiriShortcutPrefixName])
  {
  }

  else
  {
    v5 = +[AXSettings sharedInstance];
    backTapTripleTapAction = [v5 backTapTripleTapAction];
    v7 = [backTapTripleTapAction hasPrefix:v4];

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

- (void)alertWithIdentifierDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  activeAlertIdentifier = [(AXBackTapUIServer *)self activeAlertIdentifier];
  v6 = [activeAlertIdentifier isEqualToString:disappearCopy];

  if (v6)
  {

    [(AXBackTapUIServer *)self setActiveAlertIdentifier:0];
  }
}

- (void)alertWithIdentifierWasActivated:(id)activated userInfo:(id)info
{
  infoCopy = info;
  activatedCopy = activated;
  v8 = +[AXUIDisplayManager sharedDisplayManager];
  activeAlertIdentifier = [(AXBackTapUIServer *)self activeAlertIdentifier];
  [v8 hideAlertWithIdentifier:activeAlertIdentifier forService:self];

  reportAlertIdentifier = [(AXBackTapUIServer *)self reportAlertIdentifier];
  LODWORD(activeAlertIdentifier) = [activatedCopy isEqualToString:reportAlertIdentifier];

  if (activeAlertIdentifier)
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
    selfCopy = self;
    v26 = infoCopy;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v21];

    [v15 addAction:{v19, v21, v22, v23, v24, selfCopy}];
    backTapViewController = [(AXBackTapUIServer *)self backTapViewController];
    [backTapViewController presentViewController:v15 animated:1 completion:0];
  }
}

- (void)_confirmFalsePositiveReportForFilename:(id)filename
{
  filenameCopy = filename;
  if ([filenameCopy length])
  {
    v5 = AXLogBackTap();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = filenameCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Tapped on false positive alert for filename: %@", buf, 0xCu);
    }

    gestureDetector = [(AXBackTapUIServer *)self gestureDetector];
    [gestureDetector reportFalsePositive:filenameCopy];

    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = accessibilityLocalizedString(@"confirmation.alert.message.title");
    v9 = accessibilityLocalizedString(@"confirmation.alert.message.subtitle");
    v10 = [v7 showAlertWithText:v8 subtitleText:v9 iconImage:0 type:3 priority:30 duration:0 userInfo:3.0 forService:self];
    [(AXBackTapUIServer *)self setConfirmAlertIdentifier:v10];
  }
}

- (void)_addBackTapViewController:(id)controller
{
  controllerCopy = controller;
  if ([(AXBackTapUIServer *)self gestureDetectorRunning])
  {
    [(AXBackTapUIServer *)self _showContentViewController:controllerCopy];
  }

  else
  {
    [(AXBackTapUIServer *)self _hideContentViewController];
    if (controllerCopy)
    {
      controllerCopy[2]();
    }
  }
}

- (void)_showContentViewController:(id)controller
{
  controllerCopy = controller;
  backTapViewController = [(AXBackTapUIServer *)self backTapViewController];
  if (!backTapViewController)
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
    backTapViewController = v7;
    v10 = backTapViewController;
    v11 = controllerCopy;
    [v8 addContentViewController:backTapViewController withUserInteractionEnabled:1 forService:self context:0 completion:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)_hideContentViewController
{
  backTapViewController = [(AXBackTapUIServer *)self backTapViewController];
  if (backTapViewController)
  {
    v4 = AXLogBackTap();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Hiding Scene View Controller for Back Tap", v6, 2u);
    }

    v5 = +[AXUIDisplayManager sharedDisplayManager];
    [v5 removeContentViewController:backTapViewController withUserInteractionEnabled:0 forService:self];

    [(AXBackTapUIServer *)self setBackTapViewController:0];
  }
}

- (void)phoenixClassifierDidLogFile:(id)file
{
  fileCopy = file;
  v3 = fileCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)phoenixGestureDetectorDidDetectDoubleTap:(id)tap
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 backTapConfirmationBannerEnabled])
  {
    v4 = +[AXSettings sharedInstance];
    backTapFalsePositiveAlertsEnabled = [v4 backTapFalsePositiveAlertsEnabled];

    if ((backTapFalsePositiveAlertsEnabled & 1) == 0)
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
  backTapUsageCount = [v8 backTapUsageCount];
  v10 = +[AXSettings sharedInstance];
  [v10 setBackTapUsageCount:backTapUsageCount + 1];
}

- (void)phoenixGestureDetectorDidDetectTripleTap:(id)tap
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 backTapConfirmationBannerEnabled])
  {
    v4 = +[AXSettings sharedInstance];
    backTapFalsePositiveAlertsEnabled = [v4 backTapFalsePositiveAlertsEnabled];

    if ((backTapFalsePositiveAlertsEnabled & 1) == 0)
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
  backTapUsageCount = [v8 backTapUsageCount];
  v10 = +[AXSettings sharedInstance];
  [v10 setBackTapUsageCount:backTapUsageCount + 1];
}

- (void)phoenixGestureDetector:(id)detector failedWithError:(id)error
{
  errorCopy = error;
  v5 = AXLogBackTap();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_32F8(errorCopy, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)phoenixGestureDetector:(id)detector stoppedWithError:(id)error
{
  errorCopy = error;
  v5 = AXLogBackTap();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Phoenix gesture detector stopped: %@", &v6, 0xCu);
  }
}

@end