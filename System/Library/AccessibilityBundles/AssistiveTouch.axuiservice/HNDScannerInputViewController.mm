@interface HNDScannerInputViewController
- (HNDUIServer)userInterfaceServer;
- (void)_hideAlertsForAllSources;
- (void)_hideStateForAllSources;
- (void)dealloc;
- (void)hideAlertForSource:(unint64_t)source;
- (void)hideAlerts;
- (void)hideStateForSource:(unint64_t)source;
- (void)showAlert:(id)alert forSource:(unint64_t)source;
- (void)showState:(id)state forSource:(unint64_t)source;
@end

@implementation HNDScannerInputViewController

- (void)_hideAlertsForAllSources
{
  [(HNDScannerInputViewController *)self hideAlertForSource:1];
  [(HNDScannerInputViewController *)self hideAlertForSource:2];

  [(HNDScannerInputViewController *)self hideAlertForSource:3];
}

- (void)_hideStateForAllSources
{
  [(HNDScannerInputViewController *)self hideStateForSource:1];
  [(HNDScannerInputViewController *)self hideStateForSource:2];

  [(HNDScannerInputViewController *)self hideStateForSource:3];
}

- (void)dealloc
{
  [(HNDScannerInputViewController *)self _hideAlertsForAllSources];
  [(HNDScannerInputViewController *)self _hideStateForAllSources];
  v3.receiver = self;
  v3.super_class = HNDScannerInputViewController;
  [(HNDScannerInputViewController *)&v3 dealloc];
}

- (void)hideAlerts
{
  v9 = +[AXUIDisplayManager sharedDisplayManager];
  cameraInputSourceAlertIdentifier = [(HNDScannerInputViewController *)self cameraInputSourceAlertIdentifier];
  userInterfaceServer = [(HNDScannerInputViewController *)self userInterfaceServer];
  [v9 hideAlertWithIdentifier:cameraInputSourceAlertIdentifier forService:userInterfaceServer];

  hardwareInputSourceAlertIdentifier = [(HNDScannerInputViewController *)self hardwareInputSourceAlertIdentifier];
  userInterfaceServer2 = [(HNDScannerInputViewController *)self userInterfaceServer];
  [v9 hideAlertWithIdentifier:hardwareInputSourceAlertIdentifier forService:userInterfaceServer2];

  screenInputSourceAlertIdentifier = [(HNDScannerInputViewController *)self screenInputSourceAlertIdentifier];
  userInterfaceServer3 = [(HNDScannerInputViewController *)self userInterfaceServer];
  [v9 hideAlertWithIdentifier:screenInputSourceAlertIdentifier forService:userInterfaceServer3];

  [(HNDScannerInputViewController *)self setScreenInputSourceAlertIdentifier:0];
  [(HNDScannerInputViewController *)self setCameraInputSourceAlertIdentifier:0];
  [(HNDScannerInputViewController *)self setHardwareInputSourceAlertIdentifier:0];
}

- (void)hideAlertForSource:(unint64_t)source
{
  v7 = +[AXUIDisplayManager sharedDisplayManager];
  userInterfaceServer = [(HNDScannerInputViewController *)self userInterfaceServer];
  switch(source)
  {
    case 3uLL:
      screenInputSourceAlertIdentifier = [(HNDScannerInputViewController *)self screenInputSourceAlertIdentifier];
      [v7 hideAlertWithIdentifier:screenInputSourceAlertIdentifier forService:userInterfaceServer];
      [(HNDScannerInputViewController *)self setScreenInputSourceAlertIdentifier:0];
      goto LABEL_7;
    case 2uLL:
      screenInputSourceAlertIdentifier = [(HNDScannerInputViewController *)self hardwareInputSourceAlertIdentifier];
      [v7 hideAlertWithIdentifier:screenInputSourceAlertIdentifier forService:userInterfaceServer];
      [(HNDScannerInputViewController *)self setHardwareInputSourceAlertIdentifier:0];
      goto LABEL_7;
    case 1uLL:
      screenInputSourceAlertIdentifier = [(HNDScannerInputViewController *)self cameraInputSourceAlertIdentifier];
      [v7 hideAlertWithIdentifier:screenInputSourceAlertIdentifier forService:userInterfaceServer];
      [(HNDScannerInputViewController *)self setCameraInputSourceAlertIdentifier:0];
LABEL_7:

      goto LABEL_9;
  }

  _AXLogWithFacility();
LABEL_9:
}

- (void)showAlert:(id)alert forSource:(unint64_t)source
{
  alertCopy = alert;
  v6 = +[AXUIDisplayManager sharedDisplayManager];
  userInterfaceServer = [(HNDScannerInputViewController *)self userInterfaceServer];
  v8 = [NSString alloc];
  v9 = HNDLocString(@"SWITCH_OVER_TITLE");
  alertCopy = [v8 initWithFormat:@"%@\n%@", v9, alertCopy];

  switch(source)
  {
    case 3uLL:
      screenInputSourceAlertIdentifier = [(HNDScannerInputViewController *)self screenInputSourceAlertIdentifier];
      [v6 hideAlertWithIdentifier:screenInputSourceAlertIdentifier forService:userInterfaceServer];
      v12 = [v6 showAlertWithText:alertCopy subtitleText:0 iconImage:0 type:2 priority:30 duration:userInterfaceServer forService:AXUIAlertDisplayTimeForever];
      [(HNDScannerInputViewController *)self setScreenInputSourceAlertIdentifier:v12];
      goto LABEL_7;
    case 2uLL:
      screenInputSourceAlertIdentifier = [(HNDScannerInputViewController *)self hardwareInputSourceAlertIdentifier];
      [v6 hideAlertWithIdentifier:screenInputSourceAlertIdentifier forService:userInterfaceServer];
      v12 = [v6 showAlertWithText:alertCopy subtitleText:0 iconImage:0 type:2 priority:30 duration:userInterfaceServer forService:AXUIAlertDisplayTimeForever];
      [(HNDScannerInputViewController *)self setHardwareInputSourceAlertIdentifier:v12];
      goto LABEL_7;
    case 1uLL:
      screenInputSourceAlertIdentifier = [(HNDScannerInputViewController *)self cameraInputSourceAlertIdentifier];
      [v6 hideAlertWithIdentifier:screenInputSourceAlertIdentifier forService:userInterfaceServer];
      v12 = [v6 showAlertWithText:alertCopy subtitleText:0 iconImage:0 type:2 priority:30 duration:userInterfaceServer forService:AXUIAlertDisplayTimeForever];
      [(HNDScannerInputViewController *)self setCameraInputSourceAlertIdentifier:v12];
LABEL_7:

      goto LABEL_9;
  }

  _AXLogWithFacility();
LABEL_9:
}

- (void)hideStateForSource:(unint64_t)source
{
  if (source - 2 >= 2)
  {
    if (source == 1)
    {
      cameraInputSourceStateLeftLayer = [(HNDScannerInputViewController *)self cameraInputSourceStateLeftLayer];
      if (cameraInputSourceStateLeftLayer)
      {
        [cameraInputSourceStateLeftLayer removeFromSuperlayer];
        [(HNDScannerInputViewController *)self setCameraInputSourceStateLeftLayer:0];
      }

      cameraInputSourceStateRightLayer = [(HNDScannerInputViewController *)self cameraInputSourceStateRightLayer];
      v5 = cameraInputSourceStateRightLayer;
      if (cameraInputSourceStateRightLayer)
      {
        [cameraInputSourceStateRightLayer removeFromSuperlayer];
        [(HNDScannerInputViewController *)self setCameraInputSourceStateRightLayer:0];
      }
    }

    else
    {
      _AXLogWithFacility();
    }
  }
}

- (void)showState:(id)state forSource:(unint64_t)source
{
  stateCopy = state;
  if (source - 2 >= 2)
  {
    v23 = stateCopy;
    if (source == 1)
    {
      view = [(HNDScannerInputViewController *)self view];
      layer = [view layer];

      v9 = [v23 objectAtIndexedSubscript:0];
      [v9 floatValue];
      v11 = v10;

      v12 = [v23 objectAtIndexedSubscript:1];
      [v12 floatValue];
      v14 = v13;

      cameraInputSourceStateLeftLayer = [(HNDScannerInputViewController *)self cameraInputSourceStateLeftLayer];
      if (!cameraInputSourceStateLeftLayer)
      {
        cameraInputSourceStateLeftLayer = +[CALayer layer];
        [cameraInputSourceStateLeftLayer setAnchorPoint:{0.0, 0.0}];
        v16 = +[AXSettings sharedInstance];
        [v16 assistiveTouchCursorColor];

        v17 = [UIColor colorWithCGColor:AXSAssistiveTouchCursorColor()];
        [cameraInputSourceStateLeftLayer setBackgroundColor:{objc_msgSend(v17, "CGColor")}];

        [layer bounds];
        [cameraInputSourceStateLeftLayer setBounds:{0.0, 0.0, 7.5, CGRectGetHeight(v25)}];
        LODWORD(v18) = 0.5;
        [cameraInputSourceStateLeftLayer setOpacity:v18];
        [cameraInputSourceStateLeftLayer setPosition:{0.0, 0.0}];
        [(HNDScannerInputViewController *)self setCameraInputSourceStateLeftLayer:cameraInputSourceStateLeftLayer];
        [layer addSublayer:cameraInputSourceStateLeftLayer];
      }

      cameraInputSourceStateRightLayer = [(HNDScannerInputViewController *)self cameraInputSourceStateRightLayer];
      if (!cameraInputSourceStateRightLayer)
      {
        cameraInputSourceStateRightLayer = +[CALayer layer];
        [cameraInputSourceStateRightLayer setAnchorPoint:{0.0, 0.0}];
        v20 = +[AXSettings sharedInstance];
        [v20 assistiveTouchCursorColor];

        v21 = [UIColor colorWithCGColor:AXSAssistiveTouchCursorColor()];
        [cameraInputSourceStateRightLayer setBackgroundColor:{objc_msgSend(v21, "CGColor")}];

        [layer bounds];
        [cameraInputSourceStateRightLayer setBounds:{0.0, 0.0, 7.5, CGRectGetHeight(v26)}];
        LODWORD(v22) = 0.5;
        [cameraInputSourceStateRightLayer setOpacity:v22];
        [layer bounds];
        [cameraInputSourceStateRightLayer setPosition:{CGRectGetWidth(v27) + -7.5, 0.0}];
        [(HNDScannerInputViewController *)self setCameraInputSourceStateRightLayer:cameraInputSourceStateRightLayer];
        [layer addSublayer:cameraInputSourceStateRightLayer];
      }

      +[CATransaction begin];
      [layer bounds];
      [cameraInputSourceStateLeftLayer setBounds:{0.0, 0.0, 7.5, CGRectGetHeight(v28)}];
      [cameraInputSourceStateLeftLayer setPosition:{v11 * -7.5 + 0.0, 0.0}];
      [layer bounds];
      [cameraInputSourceStateRightLayer setBounds:{0.0, 0.0, 7.5, CGRectGetHeight(v29)}];
      [layer bounds];
      [cameraInputSourceStateRightLayer setPosition:{CGRectGetWidth(v30) + -7.5 + v14 * 7.5, 0.0}];
      +[CATransaction commit];
    }

    else
    {
      _AXLogWithFacility();
    }

    stateCopy = v23;
  }
}

- (HNDUIServer)userInterfaceServer
{
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceServer);

  return WeakRetained;
}

@end