@interface AXTouchAccommodationsUIServer
+ (id)sharedInstance;
- (AXTouchAccommodationsUIServer)init;
- (CGPoint)pointWithRespectToSceneReferenceSpace:(CGPoint)space;
- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled;
- (id)_getPointsArrayFromPathInfoArray:(id)array;
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)_addTouchAccommodationsSceneController:(BOOL)controller;
- (void)_disableTouchAccommodations;
- (void)_enableTouchAccommodations;
- (void)_handleUsageConfirmation;
- (void)_hideContentViewController;
- (void)_showBannerWithText:(id)text andSubtitleText:(id)subtitleText;
- (void)_showContentViewController;
- (void)_suspendOrResumeTouchAccommodationsAsNeeded;
- (void)_zoomToggledShowController;
- (void)dealloc;
- (void)eventProcessor:(id)processor didResetTouchAccommodationsProgressAtPathInfos:(id)infos;
- (void)eventProcessor:(id)processor didUpdateTouchAccommodationsAtPathInfos:(id)infos;
@end

@implementation AXTouchAccommodationsUIServer

+ (id)sharedInstance
{
  if (qword_15628 != -1)
  {
    sub_78D8();
  }

  v3 = qword_15620;

  return v3;
}

- (AXTouchAccommodationsUIServer)init
{
  v9.receiver = self;
  v9.super_class = AXTouchAccommodationsUIServer;
  v2 = [(AXTouchAccommodationsUIServer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXTouchAccommodationsEventProcessor);
    [(AXTouchAccommodationsEventProcessor *)v3 setDelegate:v2];
    [(AXTouchAccommodationsUIServer *)v2 setEventProcessor:v3];
    v4 = objc_alloc_init(AXTouchAccommodationsViewController);
    [(AXTouchAccommodationsUIServer *)v2 setViewController:v4];

    v5 = objc_alloc_init(AXAlertBannerManager);
    [(AXTouchAccommodationsUIServer *)v2 setAlertBannerManager:v5];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_suspendOrResumeTouchAccommodationsAsNeeded" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_zoomToggledShowController" name:kAXSZoomTouchEnabledNotification object:0];
  }

  return v2;
}

- (void)_suspendOrResumeTouchAccommodationsAsNeeded
{
  v2 = +[AXSettings sharedInstance];
  touchAccommodationsEnabled = [v2 touchAccommodationsEnabled];

  if (touchAccommodationsEnabled)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)_zoomToggledShowController
{
  v2 = +[AXSettings sharedInstance];
  touchAccommodationsEnabled = [v2 touchAccommodationsEnabled];

  if (touchAccommodationsEnabled)
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (void)_showBannerWithText:(id)text andSubtitleText:(id)subtitleText
{
  subtitleTextCopy = subtitleText;
  textCopy = text;
  v9 = +[AXUIDisplayManager sharedDisplayManager];
  v8 = [v9 showAlertWithText:textCopy subtitleText:subtitleTextCopy iconImage:0 type:2 priority:30 duration:self forService:AXUIAlertDisplayTimeDefaultForBanners];

  [(AXTouchAccommodationsUIServer *)self setTouchAccommodationsAlertIdentifier:v8];
}

- (void)dealloc
{
  eventProcessor = [(AXTouchAccommodationsUIServer *)self eventProcessor];
  [eventProcessor setDelegate:0];

  v4.receiver = self;
  v4.super_class = AXTouchAccommodationsUIServer;
  [(AXTouchAccommodationsUIServer *)&v4 dealloc];
}

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  messageCopy = message;
  [(AXTouchAccommodationsUIServer *)self setTouchAccommodationsAlertIdentifier:0];
  if (identifier > 3)
  {
    switch(identifier)
    {
      case 4uLL:
        holdDurationTripleClickHelpAlertIdentifier = [(AXTouchAccommodationsUIServer *)self holdDurationTripleClickHelpAlertIdentifier];

        if (holdDurationTripleClickHelpAlertIdentifier)
        {
          v35 = +[AXUIDisplayManager sharedDisplayManager];
          holdDurationTripleClickHelpAlertIdentifier2 = [(AXTouchAccommodationsUIServer *)self holdDurationTripleClickHelpAlertIdentifier];
          [v35 hideAlertWithIdentifier:holdDurationTripleClickHelpAlertIdentifier2 forService:self];

          [(AXTouchAccommodationsUIServer *)self setHoldDurationTripleClickHelpAlertIdentifier:0];
        }

        break;
      case 5uLL:
        v37 = [messageCopy objectForKeyedSubscript:@"title"];
        v38 = v37;
        v39 = @"Accessibility";
        if (v37)
        {
          v39 = v37;
        }

        v16 = v39;

        v19 = [messageCopy objectForKeyedSubscript:@"text"];
        if (![v19 length])
        {
          goto LABEL_41;
        }

        v20 = +[AXUIDisplayManager sharedDisplayManager];
        v40 = [v20 showAlertWithText:v16 subtitleText:v19 iconImage:0 type:2 priority:30 duration:0 userInfo:5.0 forService:self];
        goto LABEL_29;
      case 6uLL:
        v22 = [messageCopy objectForKeyedSubscript:@"title"];
        v23 = v22;
        v24 = @"Accessibility";
        if (v22)
        {
          v24 = v22;
        }

        v16 = v24;

        v19 = [messageCopy objectForKeyedSubscript:@"text"];
        if (![v19 length])
        {
          goto LABEL_41;
        }

        v25 = [AXAlertBannerContent alloc];
        v26 = +[NSUUID UUID];
        uUIDString = [v26 UUIDString];
        v28 = [NSString stringWithFormat:@"accessibility-help-banner-%@", uUIDString];
        v29 = [UIImage systemImageNamed:@"accessibility"];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_1E18;
        v49[3] = &unk_10420;
        v49[4] = self;
        v20 = [v25 initWithIdentifier:v28 title:v16 subtitle:v19 iconImage:v29 userInfo:&__NSDictionary0__struct actionBlock:v49];

        v21 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:16.0];
        v30 = +[UIButtonConfiguration filledButtonConfiguration];
        [v30 setCornerStyle:4];
        v31 = [UIImage systemImageNamed:@"xmark" withConfiguration:v21];
        [v30 setImage:v31];

        [v20 setActionButtonConfiguration:v30];
        alertBannerManager = [(AXTouchAccommodationsUIServer *)self alertBannerManager];
        [alertBannerManager postAlertBanner:v20];

        goto LABEL_18;
    }
  }

  else
  {
    if (identifier == 1)
    {
      v16 = +[AXSettings sharedInstance];
      if ([(__CFString *)v16 touchAccommodationsAreConfigured])
      {
        v33 = AXLocStringKeyForHomeButtonAndExclusiveModel();
        v19 = sub_12B4(v33);
      }

      else if ([(__CFString *)v16 touchAccommodationsEnabled])
      {
        v19 = sub_12B4(@"TOUCH-ACCOMMODATIONS-UNCONFIGURED");
      }

      else
      {
        v19 = 0;
      }

      v45 = +[AXUIDisplayManager sharedDisplayManager];
      v46 = sub_12B4(@"TOUCH-ACCOMMODATIONS-DISABLED");
      v47 = [v45 showAlertWithText:v46 subtitleText:v19 iconImage:0 type:2 priority:30 duration:self forService:AXUIAlertDisplayTimeDefaultForBanners];
      [(AXTouchAccommodationsUIServer *)self setTouchAccommodationsAlertIdentifier:v47];

      if (!self->showZoomControllerEnabled)
      {
        AXPerformBlockOnMainThread();
      }

      [(AXTouchAccommodationsUIServer *)self _disableTouchAccommodations];
      goto LABEL_41;
    }

    if (identifier == 2)
    {
      if (_AXSVoiceOverTouchEnabled())
      {
        v49[10] = _NSConcreteStackBlock;
        v49[11] = 3221225472;
        v49[12] = sub_1CC0;
        v49[13] = &unk_10420;
        v49[14] = self;
        AXPerformBlockOnMainThreadAfterDelay();
      }

      else
      {
        v41 = AXLocStringKeyForHomeButtonAndExclusiveModel();
        v42 = sub_12B4(v41);
        v43 = sub_12B4(@"TOUCH-ACCOMMODATIONS-ENABLED");
        [(AXTouchAccommodationsUIServer *)self _showBannerWithText:v43 andSubtitleText:v42];

        v44 = +[AXSettings sharedInstance];
        self->showZoomControllerEnabled = [v44 zoomShouldShowSlug];

        if (!self->showZoomControllerEnabled)
        {
          AXPerformBlockOnMainThread();
          if (_UIAccessibilityZoomTouchEnabled())
          {
            v49[5] = _NSConcreteStackBlock;
            v49[6] = 3221225472;
            v49[7] = sub_1D6C;
            v49[8] = &unk_10420;
            v49[9] = self;
            AXPerformBlockOnMainThreadAfterDelay();
          }
        }
      }

      [(AXTouchAccommodationsUIServer *)self _enableTouchAccommodations];
    }

    else if (identifier == 3 && !_AXSVoiceOverTouchEnabled())
    {
      holdDurationTripleClickHelpAlertIdentifier3 = [(AXTouchAccommodationsUIServer *)self holdDurationTripleClickHelpAlertIdentifier];

      if (holdDurationTripleClickHelpAlertIdentifier3)
      {
        _AXAssert();
      }

      holdDurationTripleClickHelpAlertIdentifier4 = [(AXTouchAccommodationsUIServer *)self holdDurationTripleClickHelpAlertIdentifier];

      if (holdDurationTripleClickHelpAlertIdentifier4)
      {
        v11 = +[AXUIDisplayManager sharedDisplayManager];
        holdDurationTripleClickHelpAlertIdentifier5 = [(AXTouchAccommodationsUIServer *)self holdDurationTripleClickHelpAlertIdentifier];
        [v11 hideAlertWithIdentifier:holdDurationTripleClickHelpAlertIdentifier5 forService:self];
      }

      v13 = +[AXSettings sharedInstance];
      [v13 touchAccommodationsHoldDuration];
      v15 = v14;

      v16 = sub_12B4(@"HOLD_DURATION_TRIPLE_CLICK_HELP_FORMAT");
      v17 = sub_12B4(@"HOLD_DURATION_TRIPLE_CLICK_HELP_FORMAT_SUBTITLE");
      v18 = v15;
      v19 = [NSString localizedStringWithFormat:v17, v18];

      v20 = +[AXUIDisplayManager sharedDisplayManager];
      v21 = [v20 showAlertWithText:v16 subtitleText:v19 iconImage:0 type:2 priority:30 duration:self forService:AXUIAlertDisplayTimeForever];
      [(AXTouchAccommodationsUIServer *)self setHoldDurationTripleClickHelpAlertIdentifier:v21];
LABEL_18:

LABEL_29:
LABEL_41:
    }
  }

  return 0;
}

- (void)_enableTouchAccommodations
{
  eventProcessor = [(AXTouchAccommodationsUIServer *)self eventProcessor];
  [eventProcessor beginHandlingHIDEventsForReason:@"Touch Accommodations wants them"];

  [(AXTouchAccommodationsUIServer *)self _handleUsageConfirmation];
  [(AXTouchAccommodationsUIServer *)self _sendTouchAccommodationsEnabledTipSignal:1];

  [(AXTouchAccommodationsUIServer *)self _addTouchAccommodationsSceneController:1];
}

- (void)_disableTouchAccommodations
{
  eventProcessor = [(AXTouchAccommodationsUIServer *)self eventProcessor];
  [eventProcessor endHandlingHIDEventsForReason:@"Touch Accommodations wants them"];

  [(AXTouchAccommodationsUIServer *)self _sendTouchAccommodationsEnabledTipSignal:0];

  [(AXTouchAccommodationsUIServer *)self _addTouchAccommodationsSceneController:0];
}

- (void)_addTouchAccommodationsSceneController:(BOOL)controller
{
  if (controller)
  {
    [(AXTouchAccommodationsUIServer *)self _showContentViewController];
  }

  else
  {
    [(AXTouchAccommodationsUIServer *)self _hideContentViewController];
  }
}

- (void)_showContentViewController
{
  preventBackgroundViewController = [(AXTouchAccommodationsUIServer *)self preventBackgroundViewController];
  if (!preventBackgroundViewController)
  {
    v5 = objc_opt_new();
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    [v4 addContentViewController:v5 withUserInteractionEnabled:0 forService:self context:0 completion:&stru_104A0];

    [(AXTouchAccommodationsUIServer *)self setPreventBackgroundViewController:v5];
    preventBackgroundViewController = v5;
  }
}

- (void)_hideContentViewController
{
  preventBackgroundViewController = [(AXTouchAccommodationsUIServer *)self preventBackgroundViewController];
  if (preventBackgroundViewController)
  {
    v5 = preventBackgroundViewController;
    v4 = +[AXUIDisplayManager sharedDisplayManager];
    [v4 removeContentViewController:v5 withUserInteractionEnabled:0 forService:self context:0 completion:&stru_104C0];

    [(AXTouchAccommodationsUIServer *)self setPreventBackgroundViewController:0];
    preventBackgroundViewController = v5;
  }
}

- (void)_handleUsageConfirmation
{
  v3 = +[AXSettings sharedInstance];
  if (([v3 touchAccommodationsUsageConfirmed] & 1) == 0)
  {
    v4 = +[AXSpringBoardServer server];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_2418;
    v11 = &unk_104E8;
    v12 = v3;
    selfCopy = self;
    [v4 showAlert:6 withHandler:&v8];

    v5 = [(AXTouchAccommodationsUIServer *)self usageConfirmationTimeoutTimer:v8];
    [v5 cancel];

    v6 = objc_alloc_init(AXDispatchTimer);
    [(AXTouchAccommodationsUIServer *)self setUsageConfirmationTimeoutTimer:v6];

    usageConfirmationTimeoutTimer = [(AXTouchAccommodationsUIServer *)self usageConfirmationTimeoutTimer];
    [usageConfirmationTimeoutTimer afterDelay:&stru_10508 processBlock:30.0];
  }
}

- (CGPoint)pointWithRespectToSceneReferenceSpace:(CGPoint)space
{
  viewController = [(AXTouchAccommodationsUIServer *)self viewController];
  view = [viewController view];
  window = [view window];
  if (window)
  {
    viewController2 = [(AXTouchAccommodationsUIServer *)self viewController];
    view2 = [viewController2 view];
    window2 = [view2 window];
    AXDenormalizePoint();
    [window2 _convertPointFromSceneReferenceSpace:?];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    AXDenormalizePoint();
    v11 = v14;
    v13 = v15;
  }

  v16 = v11;
  v17 = v13;
  result.y = v17;
  result.x = v16;
  return result;
}

- (id)_getPointsArrayFromPathInfoArray:(id)array
{
  arrayCopy = array;
  v5 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) pathLocation];
        [(AXTouchAccommodationsUIServer *)self pointWithRespectToSceneReferenceSpace:?];
        v11 = [NSValue valueWithCGPoint:?];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)eventProcessor:(id)processor didUpdateTouchAccommodationsAtPathInfos:(id)infos
{
  infosCopy = infos;
  v4 = infosCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)eventProcessor:(id)processor didResetTouchAccommodationsProgressAtPathInfos:(id)infos
{
  infosCopy = infos;
  v4 = infosCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled
{
  result = UIWindowLevelNormal;
  if (self->_viewController == controller)
  {
    return 10000020.0;
  }

  return result;
}

@end