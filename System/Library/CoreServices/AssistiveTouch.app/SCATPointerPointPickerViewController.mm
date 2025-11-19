@interface SCATPointerPointPickerViewController
- (CGPoint)currentPoint;
- (void)_resetPointer;
- (void)_systemPointerSettingsDidChange;
- (void)_updateCursorDrawing;
- (void)_updateZoomWithDisplayPoint:(CGPoint)a3;
- (void)cancelDwellAnimation;
- (void)dealloc;
- (void)moveToPoint:(CGPoint)a3;
- (void)orientationDidChange:(id)a3;
- (void)pickPoint;
- (void)pressFingersDown:(BOOL)a3;
- (void)startDwellAnimationWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation SCATPointerPointPickerViewController

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = SCATPointerPointPickerViewController;
  [(SCATElementManagerViewController *)&v20 viewDidLoad];
  v3 = objc_alloc_init(AXPIFingerController);
  [(SCATPointerPointPickerViewController *)self setFingerController:v3];

  if (sub_100042C64())
  {
    v4 = objc_alloc_init(AXPISystemPointerLargeAppearance);
    [(SCATPointerPointPickerViewController *)self setMousePointerAppearance:v4];

    v5 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(SCATPointerPointPickerViewController *)self setSystemPointerSettingsChangedDebouncer:v5];

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, sub_1000B0248, kAXSPointerIncreasedContrastPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v7, self, sub_1000B0248, kAXSPointerSizeMultiplierPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v8 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v8, self, sub_1000B0248, kAXSPointerStrokeColorPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v9 = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];

  if (!v9)
  {
    v10 = objc_alloc_init(HNDMousePointerAppearance);
    [(SCATPointerPointPickerViewController *)self setMousePointerAppearance:v10];

    v11 = +[AXSettings sharedInstance];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B0250;
    v19[3] = &unk_1001D3488;
    v19[4] = self;
    [v11 registerUpdateBlock:v19 forRetrieveSelector:"assistiveTouchScannerCursorHighVisibilityEnabled" withListener:self];

    v12 = +[AXSettings sharedInstance];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000B028C;
    v18[3] = &unk_1001D3488;
    v18[4] = self;
    [v12 registerUpdateBlock:v18 forRetrieveSelector:"assistiveTouchCursorColor" withListener:self];
  }

  v13 = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];
  v14 = [(SCATPointerPointPickerViewController *)self fingerController];
  [v14 setAppearanceDelegate:v13];

  v15 = [(SCATPointerPointPickerViewController *)self view];
  v16 = [(SCATPointerPointPickerViewController *)self fingerController];
  v17 = [v16 fingerContainerView];
  [v15 addSubview:v17];

  [(SCATPointerPointPickerViewController *)self _updateCursorDrawing];
}

- (void)dealloc
{
  if (sub_100042C64())
  {
    v3 = [(SCATPointerPointPickerViewController *)self systemPointerSettingsChangedDebouncer];
    [v3 cancel];

    [(SCATPointerPointPickerViewController *)self setSystemPointerSettingsChangedDebouncer:0];
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  }

  v5.receiver = self;
  v5.super_class = SCATPointerPointPickerViewController;
  [(SCATPointPickerViewController *)&v5 dealloc];
}

- (void)_updateCursorDrawing
{
  v3 = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = +[AXSettings sharedInstance];
    if ([v5 assistiveTouchScannerCursorHighVisibilityEnabled])
    {
      v6 = 2.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];
    [v7 setSizeMultiplier:v6];

    v10 = +[AXSettings sharedInstance];
    v8 = [v10 assistiveTouchCursorColor];
    v9 = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];
    [v9 setCursorColor:v8];
  }
}

- (void)_systemPointerSettingsDidChange
{
  objc_initWeak(&location, self);
  [(AXDispatchTimer *)self->_systemPointerSettingsChangedDebouncer cancel];
  systemPointerSettingsChangedDebouncer = self->_systemPointerSettingsChangedDebouncer;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B0534;
  v4[3] = &unk_1001D3460;
  objc_copyWeak(&v5, &location);
  [(AXDispatchTimer *)systemPointerSettingsChangedDebouncer afterDelay:v4 processBlock:0.1];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_resetPointer
{
  v3 = [(SCATPointerPointPickerViewController *)self fingerController];
  [(SCATPointerPointPickerViewController *)self currentPoint];
  [v3 clearAllFingersAnimated:1 endPointForAnimation:?];

  [(SCATPointerPointPickerViewController *)self currentPoint];
  v4 = [AXPIFingerModel fingerModelForLocation:?];
  v5 = [(SCATPointerPointPickerViewController *)self fingerController];
  v7 = v4;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(SCATPointerPointPickerViewController *)self currentPoint];
  [v5 showFingerModels:v6 animated:1 startPointForAnimation:?];
}

- (void)moveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = fmax(fmin(v8, x), 0.0);
  v12 = fmax(fmin(v10, y), 0.0);
  v13 = [(SCATPointerPointPickerViewController *)self fingerController];
  v14 = [v13 numberOfFingers];

  if (!v14)
  {
    [(SCATPointerPointPickerViewController *)self currentPoint];
    v15 = [AXPIFingerModel fingerModelForLocation:?];
    v16 = [(SCATPointerPointPickerViewController *)self fingerController];
    v23 = v15;
    v17 = [NSArray arrayWithObjects:&v23 count:1];
    [v16 showFingerModels:v17 animated:0 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
  }

  v18 = [(SCATPointerPointPickerViewController *)self fingerController];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B0898;
  v22[3] = &unk_1001D69F8;
  *&v22[4] = v11;
  *&v22[5] = v12;
  [v18 enumerateFingersUsingBlock:v22];

  if ([(SCATPointerPointPickerViewController *)self fingersDown])
  {
    v19 = +[HNDHandManager sharedManager];
    v20 = [v19 mainDisplayManager];
    v21 = [v20 fingerController];
    [(SCATPointerPointPickerViewController *)self currentPoint];
    [v21 performMoveToPoint:?];
  }

  [(SCATPointerPointPickerViewController *)self setCurrentPoint:v11, v12];
  if ([(SCATPointerPointPickerViewController *)self shouldUpdateZoomLocation])
  {
    [(SCATPointerPointPickerViewController *)self _updateZoomWithDisplayPoint:v11, v12];
  }
}

- (void)pickPoint
{
  v3 = [(SCATPointPickerViewController *)self pointPicker];
  [(SCATPointerPointPickerViewController *)self currentPoint];
  [v3 _savePoint:1 andNotifyDelegate:?];
}

- (void)startDwellAnimationWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(SCATPointerPointPickerViewController *)self fingerController];
  v5 = +[AXSettings sharedInstance];
  [v5 switchControlCameraPointPickerDwellActivationTimeout];
  [v6 performCircularProgressAnimationOnFingersWithDuration:v4 completion:?];
}

- (void)cancelDwellAnimation
{
  v2 = [(SCATPointerPointPickerViewController *)self fingerController];
  [v2 cancelCircularProgressAnimation];
}

- (void)pressFingersDown:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATPointerPointPickerViewController *)self fingerController];
  v6 = [v5 numberOfFingers];

  if (!v6)
  {
    [(SCATPointerPointPickerViewController *)self currentPoint];
    v7 = [AXPIFingerModel fingerModelForLocation:?];
    v8 = [(SCATPointerPointPickerViewController *)self fingerController];
    v14 = v7;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    [v8 showFingerModels:v9 animated:0 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
  }

  v10 = [(SCATPointerPointPickerViewController *)self fingersDown];
  if (v3)
  {
    if (v10)
    {
      return;
    }

    v11 = +[HNDHandManager sharedManager];
    v12 = [v11 mainDisplayManager];
    v13 = [v12 fingerController];
    [(SCATPointerPointPickerViewController *)self currentPoint];
    [v13 performDownAtPoint:?];
  }

  else
  {
    if (!v10)
    {
      return;
    }

    v11 = +[HNDHandManager sharedManager];
    v12 = [v11 mainDisplayManager];
    v13 = [v12 fingerController];
    [(SCATPointerPointPickerViewController *)self currentPoint];
    [v13 performUpAtPoint:?];
  }

  [(SCATPointerPointPickerViewController *)self setFingersDown:v3];
}

- (void)orientationDidChange:(id)a3
{
  v3 = [(SCATPointPickerViewController *)self pointPicker];
  [v3 redisplayIfNeeded:0];
}

- (void)_updateZoomWithDisplayPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (_AXSZoomTouchEnabled())
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 assistiveTouchMouseZoomPanningStyle];

    v12 = +[ZoomServices sharedInstance];
    v8 = [(SCATPointerPointPickerViewController *)self view];
    v9 = [v8 window];
    v10 = [v9 screen];
    v11 = [v10 displayIdentity];
    [v12 autoPanZoomUsingLocation:v7 withPanningStyle:objc_msgSend(v11 onDisplay:{"displayID"), x, y}];
  }
}

- (CGPoint)currentPoint
{
  x = self->_currentPoint.x;
  y = self->_currentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end