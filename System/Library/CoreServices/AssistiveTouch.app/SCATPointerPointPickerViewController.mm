@interface SCATPointerPointPickerViewController
- (CGPoint)currentPoint;
- (void)_resetPointer;
- (void)_systemPointerSettingsDidChange;
- (void)_updateCursorDrawing;
- (void)_updateZoomWithDisplayPoint:(CGPoint)point;
- (void)cancelDwellAnimation;
- (void)dealloc;
- (void)moveToPoint:(CGPoint)point;
- (void)orientationDidChange:(id)change;
- (void)pickPoint;
- (void)pressFingersDown:(BOOL)down;
- (void)startDwellAnimationWithCompletion:(id)completion;
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

  mousePointerAppearance = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];

  if (!mousePointerAppearance)
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

  mousePointerAppearance2 = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];
  fingerController = [(SCATPointerPointPickerViewController *)self fingerController];
  [fingerController setAppearanceDelegate:mousePointerAppearance2];

  view = [(SCATPointerPointPickerViewController *)self view];
  fingerController2 = [(SCATPointerPointPickerViewController *)self fingerController];
  fingerContainerView = [fingerController2 fingerContainerView];
  [view addSubview:fingerContainerView];

  [(SCATPointerPointPickerViewController *)self _updateCursorDrawing];
}

- (void)dealloc
{
  if (sub_100042C64())
  {
    systemPointerSettingsChangedDebouncer = [(SCATPointerPointPickerViewController *)self systemPointerSettingsChangedDebouncer];
    [systemPointerSettingsChangedDebouncer cancel];

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
  mousePointerAppearance = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];
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

    mousePointerAppearance2 = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];
    [mousePointerAppearance2 setSizeMultiplier:v6];

    v10 = +[AXSettings sharedInstance];
    assistiveTouchCursorColor = [v10 assistiveTouchCursorColor];
    mousePointerAppearance3 = [(SCATPointerPointPickerViewController *)self mousePointerAppearance];
    [mousePointerAppearance3 setCursorColor:assistiveTouchCursorColor];
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
  fingerController = [(SCATPointerPointPickerViewController *)self fingerController];
  [(SCATPointerPointPickerViewController *)self currentPoint];
  [fingerController clearAllFingersAnimated:1 endPointForAnimation:?];

  [(SCATPointerPointPickerViewController *)self currentPoint];
  v4 = [AXPIFingerModel fingerModelForLocation:?];
  fingerController2 = [(SCATPointerPointPickerViewController *)self fingerController];
  v7 = v4;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(SCATPointerPointPickerViewController *)self currentPoint];
  [fingerController2 showFingerModels:v6 animated:1 startPointForAnimation:?];
}

- (void)moveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = fmax(fmin(v8, x), 0.0);
  v12 = fmax(fmin(v10, y), 0.0);
  fingerController = [(SCATPointerPointPickerViewController *)self fingerController];
  numberOfFingers = [fingerController numberOfFingers];

  if (!numberOfFingers)
  {
    [(SCATPointerPointPickerViewController *)self currentPoint];
    v15 = [AXPIFingerModel fingerModelForLocation:?];
    fingerController2 = [(SCATPointerPointPickerViewController *)self fingerController];
    v23 = v15;
    v17 = [NSArray arrayWithObjects:&v23 count:1];
    [fingerController2 showFingerModels:v17 animated:0 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
  }

  fingerController3 = [(SCATPointerPointPickerViewController *)self fingerController];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B0898;
  v22[3] = &unk_1001D69F8;
  *&v22[4] = v11;
  *&v22[5] = v12;
  [fingerController3 enumerateFingersUsingBlock:v22];

  if ([(SCATPointerPointPickerViewController *)self fingersDown])
  {
    v19 = +[HNDHandManager sharedManager];
    mainDisplayManager = [v19 mainDisplayManager];
    fingerController4 = [mainDisplayManager fingerController];
    [(SCATPointerPointPickerViewController *)self currentPoint];
    [fingerController4 performMoveToPoint:?];
  }

  [(SCATPointerPointPickerViewController *)self setCurrentPoint:v11, v12];
  if ([(SCATPointerPointPickerViewController *)self shouldUpdateZoomLocation])
  {
    [(SCATPointerPointPickerViewController *)self _updateZoomWithDisplayPoint:v11, v12];
  }
}

- (void)pickPoint
{
  pointPicker = [(SCATPointPickerViewController *)self pointPicker];
  [(SCATPointerPointPickerViewController *)self currentPoint];
  [pointPicker _savePoint:1 andNotifyDelegate:?];
}

- (void)startDwellAnimationWithCompletion:(id)completion
{
  completionCopy = completion;
  fingerController = [(SCATPointerPointPickerViewController *)self fingerController];
  v5 = +[AXSettings sharedInstance];
  [v5 switchControlCameraPointPickerDwellActivationTimeout];
  [fingerController performCircularProgressAnimationOnFingersWithDuration:completionCopy completion:?];
}

- (void)cancelDwellAnimation
{
  fingerController = [(SCATPointerPointPickerViewController *)self fingerController];
  [fingerController cancelCircularProgressAnimation];
}

- (void)pressFingersDown:(BOOL)down
{
  downCopy = down;
  fingerController = [(SCATPointerPointPickerViewController *)self fingerController];
  numberOfFingers = [fingerController numberOfFingers];

  if (!numberOfFingers)
  {
    [(SCATPointerPointPickerViewController *)self currentPoint];
    v7 = [AXPIFingerModel fingerModelForLocation:?];
    fingerController2 = [(SCATPointerPointPickerViewController *)self fingerController];
    v14 = v7;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    [fingerController2 showFingerModels:v9 animated:0 startPointForAnimation:{CGPointZero.x, CGPointZero.y}];
  }

  fingersDown = [(SCATPointerPointPickerViewController *)self fingersDown];
  if (downCopy)
  {
    if (fingersDown)
    {
      return;
    }

    v11 = +[HNDHandManager sharedManager];
    mainDisplayManager = [v11 mainDisplayManager];
    fingerController3 = [mainDisplayManager fingerController];
    [(SCATPointerPointPickerViewController *)self currentPoint];
    [fingerController3 performDownAtPoint:?];
  }

  else
  {
    if (!fingersDown)
    {
      return;
    }

    v11 = +[HNDHandManager sharedManager];
    mainDisplayManager = [v11 mainDisplayManager];
    fingerController3 = [mainDisplayManager fingerController];
    [(SCATPointerPointPickerViewController *)self currentPoint];
    [fingerController3 performUpAtPoint:?];
  }

  [(SCATPointerPointPickerViewController *)self setFingersDown:downCopy];
}

- (void)orientationDidChange:(id)change
{
  pointPicker = [(SCATPointPickerViewController *)self pointPicker];
  [pointPicker redisplayIfNeeded:0];
}

- (void)_updateZoomWithDisplayPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (_AXSZoomTouchEnabled())
  {
    v6 = +[AXSettings sharedInstance];
    assistiveTouchMouseZoomPanningStyle = [v6 assistiveTouchMouseZoomPanningStyle];

    v12 = +[ZoomServices sharedInstance];
    view = [(SCATPointerPointPickerViewController *)self view];
    window = [view window];
    screen = [window screen];
    displayIdentity = [screen displayIdentity];
    [v12 autoPanZoomUsingLocation:assistiveTouchMouseZoomPanningStyle withPanningStyle:objc_msgSend(displayIdentity onDisplay:{"displayID"), x, y}];
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