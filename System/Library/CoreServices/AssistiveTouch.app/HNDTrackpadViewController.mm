@interface HNDTrackpadViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isPressingOnTrackpad;
- (BOOL)trackpadCanPinch;
- (BOOL)trackpadCanScroll;
- (BOOL)trackpadContainsPoint:(CGPoint)point;
- (CGPoint)getPointsDelta:(CGPoint)delta startPoint:(CGPoint)point scale:(double)scale;
- (CGPoint)pinchFirstPoint;
- (CGPoint)pinchSecondPoint;
- (CGPoint)pointerLocation;
- (CGPoint)previousPointerPoint;
- (CGPoint)previousTouchPoint;
- (CGRect)_getTrackpadBorderFrame;
- (CGRect)_getTrackpadFrame:(double)frame borderFrame:(CGRect)borderFrame;
- (CGRect)trackpadViewFrame;
- (HNDTrackpadViewController)init;
- (void)_handleMovePointer:(CGPoint)pointer startPoint:(CGPoint)point;
- (void)_initSettings;
- (void)_registerForSettingsUpdates;
- (void)_sendEventAtPinchPoint:(CGPoint)point pointTwo:(CGPoint)two handEventType:(unsigned int)type;
- (void)_sendMouseMoveEventWithDelta:(CGPoint)delta;
- (void)_setTrackpadBorderFrame:(CGRect)frame;
- (void)_setTrackpadPositionBottomRight;
- (void)_setUpGestureRecognizers;
- (void)_updateTrackpadSize;
- (void)dealloc;
- (void)fadeTrackpad;
- (void)handleBorderViewMove:(id)move;
- (void)handleOrientationChange;
- (void)handleTrackpadBorderTap:(id)tap moveAmount:(double)amount;
- (void)handleTrackpadMove:(id)move;
- (void)handleTrackpadPinch:(unint64_t)pinch firstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint;
- (void)handleTrackpadPress:(id)press;
- (void)handleTrackpadScroll:(unint64_t)scroll point:(CGPoint)point;
- (void)handleTrackpadTap:(id)tap;
- (void)highlightTrackpad;
- (void)loadView;
- (void)resetVisibility:(BOOL)visibility;
- (void)setTrackpadViewFrame:(CGRect)frame;
- (void)unload;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HNDTrackpadViewController

- (HNDTrackpadViewController)init
{
  v13.receiver = self;
  v13.super_class = HNDTrackpadViewController;
  v2 = [(HNDTrackpadViewController *)&v13 init];
  v3 = +[HNDHandManager sharedManager];
  handManager = v2->_handManager;
  v2->_handManager = v3;

  v5 = +[HNDHandManager sharedManager];
  currentDisplayManager = [v5 currentDisplayManager];
  displayManager = v2->_displayManager;
  v2->_displayManager = currentDisplayManager;

  v8 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  scrollHysteresisTimer = v2->_scrollHysteresisTimer;
  v2->_scrollHysteresisTimer = v8;

  v10 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  fadeTimer = v2->_fadeTimer;
  v2->_fadeTimer = v10;

  [(HNDTrackpadViewController *)v2 _initSettings];
  return v2;
}

- (void)loadView
{
  [(HNDTrackpadViewController *)self _getTrackpadBorderFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[AXSettings sharedInstance];
  [v11 assistiveTouchVirtualTrackpadBorderWidth];
  v13 = v12;

  [(HNDTrackpadViewController *)self _getTrackpadFrame:v13 borderFrame:v4, v6, v8, v10];
  v18 = [[HNDTrackpadView alloc] initWithFrame:v14, v15, v16, v17];
  trackpadView = self->_trackpadView;
  self->_trackpadView = v18;

  v20 = [[HNDTrackpadBorderView alloc] initWithFrame:v4, v6, v8, v10];
  trackpadBorderView = self->_trackpadBorderView;
  self->_trackpadBorderView = v20;

  [(HNDTrackpadBorderView *)self->_trackpadBorderView setDelegate:self];
  [(HNDTrackpadViewController *)self setView:self->_trackpadBorderView];
  view = [(HNDTrackpadViewController *)self view];
  [view addSubview:self->_trackpadView];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HNDTrackpadViewController;
  [(HNDTrackpadViewController *)&v7 viewDidLoad];
  virtualMouseClientAssertionForVirtualTrackpad = [(HNDTrackpadViewController *)self virtualMouseClientAssertionForVirtualTrackpad];

  if (!virtualMouseClientAssertionForVirtualTrackpad)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [HNDVirtualHIDMouse addActiveClientWithReason:v5];
    [(HNDTrackpadViewController *)self setVirtualMouseClientAssertionForVirtualTrackpad:v6];
  }

  [(HNDTrackpadViewController *)self _registerForSettingsUpdates];
  [(HNDTrackpadViewController *)self _setUpGestureRecognizers];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HNDTrackpadViewController;
  [(HNDTrackpadViewController *)&v4 viewDidLayoutSubviews];
  trackpadBorderView = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView updateFrameLayer];

  [(HNDTrackpadViewController *)self highlightTrackpad];
}

- (void)dealloc
{
  virtualMouseClientAssertionForVirtualTrackpad = [(HNDTrackpadViewController *)self virtualMouseClientAssertionForVirtualTrackpad];
  [virtualMouseClientAssertionForVirtualTrackpad invalidate];

  v4.receiver = self;
  v4.super_class = HNDTrackpadViewController;
  [(HNDTrackpadViewController *)&v4 dealloc];
}

- (void)unload
{
  virtualMouseClientAssertionForVirtualTrackpad = [(HNDTrackpadViewController *)self virtualMouseClientAssertionForVirtualTrackpad];
  [virtualMouseClientAssertionForVirtualTrackpad invalidate];

  [(HNDTrackpadViewController *)self setVirtualMouseClientAssertionForVirtualTrackpad:0];
  view = [(HNDTrackpadViewController *)self view];
  [view removeFromSuperview];
}

- (void)_setUpGestureRecognizers
{
  v17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTrackpadTap:"];
  trackpadView = [(HNDTrackpadViewController *)self trackpadView];
  [trackpadView addGestureRecognizer:v17];

  v4 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"handleTrackpadMove:"];
  [v4 setMaximumNumberOfTouches:1];
  [v4 setDelegate:self];
  [(HNDTrackpadViewController *)self setTrackpadMoveGestureRecognizer:v4];
  trackpadView2 = [(HNDTrackpadViewController *)self trackpadView];
  [trackpadView2 addGestureRecognizer:v4];

  v6 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleTrackpadPress:"];
  v7 = +[AXSettings sharedInstance];
  [v7 assistiveTouchVirtualTrackpadHoldDuration];
  [v6 setMinimumPressDuration:?];

  [v6 setDelegate:self];
  [(HNDTrackpadViewController *)self setTrackpadPressGestureRecognizer:v6];
  trackpadView3 = [(HNDTrackpadViewController *)self trackpadView];
  [trackpadView3 addGestureRecognizer:v6];

  v9 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:0];
  [v9 setMinimumNumberOfTouches:2];
  [v9 setMaximumNumberOfTouches:2];
  [v9 setDelegate:self];
  [(HNDTrackpadViewController *)self setTrackpadScrollGestureRecognizer:v9];
  trackpadView4 = [(HNDTrackpadViewController *)self trackpadView];
  [trackpadView4 addGestureRecognizer:v9];

  v11 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:0];
  [v11 setDelaysTouchesBegan:1];
  [v11 setDelegate:self];
  [(HNDTrackpadViewController *)self setTrackpadPinchGestureRecognizer:v11];
  trackpadView5 = [(HNDTrackpadViewController *)self trackpadView];
  [trackpadView5 addGestureRecognizer:v11];

  v13 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleBorderTap:"];
  trackpadBorderView = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView addGestureRecognizer:v13];

  v15 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"handleBorderViewMove:"];
  [v15 setMaximumNumberOfTouches:1];
  [(HNDTrackpadViewController *)self setBorderMoveGestureRecognizer:v15];
  trackpadBorderView2 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView2 addGestureRecognizer:v15];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  trackpadPressGestureRecognizer = [(HNDTrackpadViewController *)self trackpadPressGestureRecognizer];

  if (trackpadPressGestureRecognizer == recognizerCopy)
  {
    trackpadMoveGestureRecognizer = [(HNDTrackpadViewController *)self trackpadMoveGestureRecognizer];
    v9 = trackpadMoveGestureRecognizer == gestureRecognizerCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_initSettings
{
  v3 = +[AXSettings sharedInstance];
  [v3 assistiveTouchVirtualTrackpadSpeed];
  [(HNDTrackpadViewController *)self setPointerSpeed:?];

  v4 = +[AXSettings sharedInstance];
  [v4 assistiveTouchVirtualTrackpadFadeDelay];
  [(HNDTrackpadViewController *)self setFadeDelay:?];

  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchVirtualTrackpadScrollSpeed];
  [(HNDTrackpadViewController *)self setScrollSpeed:?];

  v6 = +[AXSettings sharedInstance];
  -[HNDTrackpadViewController setNaturalScroll:](self, "setNaturalScroll:", [v6 assistiveTouchVirtualTrackpadScrollToggleEnabled]);
}

- (void)_registerForSettingsUpdates
{
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000495AC;
  v16[3] = &unk_1001D3460;
  objc_copyWeak(&v17, &location);
  [v3 registerUpdateBlock:v16 forRetrieveSelector:"assistiveTouchVirtualTrackpadSpeed" withListener:self];

  objc_destroyWeak(&v17);
  v4 = +[AXSettings sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100049624;
  v14[3] = &unk_1001D3460;
  objc_copyWeak(&v15, &location);
  [v4 registerUpdateBlock:v14 forRetrieveSelector:"assistiveTouchVirtualTrackpadScrollSpeed" withListener:self];

  objc_destroyWeak(&v15);
  v5 = +[AXSettings sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004969C;
  v12[3] = &unk_1001D3460;
  objc_copyWeak(&v13, &location);
  [v5 registerUpdateBlock:v12 forRetrieveSelector:"assistiveTouchVirtualTrackpadFadeDelay" withListener:self];

  objc_destroyWeak(&v13);
  v6 = +[AXSettings sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100049714;
  v10[3] = &unk_1001D3460;
  objc_copyWeak(&v11, &location);
  [v6 registerUpdateBlock:v10 forRetrieveSelector:"assistiveTouchVirtualTrackpadScrollToggleEnabled" withListener:self];

  objc_destroyWeak(&v11);
  v7 = +[AXSettings sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049784;
  v8[3] = &unk_1001D3460;
  objc_copyWeak(&v9, &location);
  [v7 registerUpdateBlock:v8 forRetrieveSelector:"assistiveTouchVirtualTrackpadHoldDuration" withListener:self];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleTrackpadTap:(id)tap
{
  handManager = [(HNDTrackpadViewController *)self handManager];
  if (([handManager inCustomGesture] & 1) == 0)
  {

    goto LABEL_7;
  }

  displayManager = [(HNDTrackpadViewController *)self displayManager];
  rocker = [displayManager rocker];
  [rocker frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(HNDTrackpadViewController *)self pointerLocation];
  v20.x = v15;
  v20.y = v16;
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v17 = CGRectContainsPoint(v21, v20);

  if (!v17)
  {
LABEL_7:
    [(HNDTrackpadViewController *)self _handlePrimaryButtonPress:1];
    AXPerformBlockOnMainThreadAfterDelay();
    return;
  }

  handManager2 = [(HNDTrackpadViewController *)self handManager];
  [handManager2 specialToolUsageEnded:1];
}

- (void)handleTrackpadMove:(id)move
{
  moveCopy = move;
  [moveCopy locationInView:0];
  v6 = v5;
  v8 = v7;
  state = [moveCopy state];

  if (state == 2)
  {
    [(HNDTrackpadViewController *)self previousTouchPoint];
    [(HNDTrackpadViewController *)self _handleMovePointer:v6 startPoint:v8, v10, v11];
  }

  else if (state != 1)
  {
    return;
  }

  [(HNDTrackpadViewController *)self setPreviousTouchPoint:v6, v8];
}

- (void)handleTrackpadPress:(id)press
{
  state = [press state];
  v5 = state - 1;
  if (state - 1) <= 4 && ((0x1Du >> v5))
  {

    [(HNDTrackpadViewController *)self _handlePrimaryButtonPress:(3u >> v5) & 1];
  }
}

- (void)handleTrackpadScroll:(unint64_t)scroll point:(CGPoint)point
{
  if (scroll == 2)
  {
    [(HNDTrackpadViewController *)self _handlePrimaryButtonPress:0, point.x, point.y];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    y = point.y;
    x = point.x;
    if (scroll == 1)
    {
      [(HNDTrackpadViewController *)self previousTouchPoint];
      v9 = v8;
      v11 = v10;
      [(HNDTrackpadViewController *)self scrollSpeed];
      [(HNDTrackpadViewController *)self getPointsDelta:x startPoint:y scale:v9, v11, v12 * 0.03];
      v15 = fabs(v14) < fabs(v13);
      if (v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v14;
      }

      if (v15)
      {
        v17 = v13;
      }

      else
      {
        v17 = 0.0;
      }

      naturalScroll = [(HNDTrackpadViewController *)self naturalScroll];
      v19 = -v17;
      v20 = -v16;
      if (naturalScroll)
      {
        v20 = v16;
        v19 = v17;
      }

      [(HNDTrackpadViewController *)self _sendMouseMoveEventWithDelta:v19, v20];
    }

    else if (!scroll)
    {
      [(HNDTrackpadViewController *)self setPreviousTouchPoint:point.x, point.y];
      handManager = [(HNDTrackpadViewController *)self handManager];
      [handManager currentPointForPointer];
      [(HNDTrackpadViewController *)self setPreviousPointerPoint:?];

      [(HNDTrackpadViewController *)self _handlePrimaryButtonPress:1];
    }
  }
}

- (void)handleTrackpadPinch:(unint64_t)pinch firstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint
{
  if (pinch == 2)
  {
    v22 = 6;
  }

  else
  {
    y = secondPoint.y;
    x = secondPoint.x;
    v8 = point.y;
    v9 = point.x;
    if (pinch == 1)
    {
      v11 = 0;
    }

    else
    {
      if (pinch)
      {
        return;
      }

      v11 = 1;
    }

    AX_CGPointGetMidpointToPoint();
    v13 = v9 - v12;
    v15 = v8 - v14;
    v16 = x - v12;
    v17 = y - v14;
    [(HNDTrackpadViewController *)self pointerLocation];
    v19 = v18;
    v21 = v20;
    [(HNDTrackpadViewController *)self setPinchFirstPoint:v18 + v13, v20 + v15];
    [(HNDTrackpadViewController *)self setPinchSecondPoint:v19 + v16, v21 + v17];
    if (pinch == 1)
    {
      v22 = 2;
    }

    else
    {
      v22 = v11;
    }
  }

  [(HNDTrackpadViewController *)self pinchFirstPoint];
  v24 = v23;
  v26 = v25;
  [(HNDTrackpadViewController *)self pinchSecondPoint];

  [(HNDTrackpadViewController *)self _sendEventAtPinchPoint:v22 pointTwo:v24 handEventType:v26, v27, v28];
}

- (void)_handleMovePointer:(CGPoint)pointer startPoint:(CGPoint)point
{
  [(HNDTrackpadViewController *)self getPointsDelta:pointer.x startPoint:pointer.y scale:point.x, point.y, self->_pointerSpeed];

  [(HNDTrackpadViewController *)self _sendMouseMoveEventWithDelta:?];
}

- (void)_sendMouseMoveEventWithDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  v8 = [objc_allocWithZone(HNDEvent) init];
  [v8 setType:3];
  [v8 setDeltaX:x];
  [v8 setDeltaY:y];
  [v8 setIsVirtualTrackpadEvent:1];
  handManager = [(HNDTrackpadViewController *)self handManager];
  deviceManager = [handManager deviceManager];
  [deviceManager device:0 didPostEvent:v8];
}

- (void)_sendEventAtPinchPoint:(CGPoint)point pointTwo:(CGPoint)two handEventType:(unsigned int)type
{
  v5 = *&type;
  AXNormalizePoint();
  v27[0] = v7;
  v27[1] = v8;
  v9 = [NSValue valueWithBytes:v27 objCType:"{CGPoint=dd}"];
  v28[0] = v9;
  AXNormalizePoint();
  v26[0] = v10;
  v26[1] = v11;
  v12 = [NSValue valueWithBytes:v26 objCType:"{CGPoint=dd}"];
  v28[1] = v12;
  v13 = [NSArray arrayWithObjects:v28 count:2];

  v14 = [AXEventRepresentation gestureRepresentationWithHandType:v5 locations:v13];
  handInfo = [v14 handInfo];
  paths = [handInfo paths];
  firstPath = [paths firstPath];
  [firstPath setTransducerType:2];

  handInfo2 = [v14 handInfo];
  paths2 = [handInfo2 paths];
  secondPath = [paths2 secondPath];
  [secondPath setTransducerType:2];

  v21 = +[AXBackBoardServer server];
  [(HNDTrackpadViewController *)self pointerLocation];
  v22 = [v21 contextIdForPosition:?];

  [v14 setContextId:v22];
  v23 = +[AXEventTapManager sharedManager];
  displayManager = [(HNDTrackpadViewController *)self displayManager];
  fingerController = [displayManager fingerController];
  [v23 sendHIDSystemEvent:v14 senderID:{objc_msgSend(fingerController, "eventSenderServiceID")}];
}

- (void)handleTrackpadBorderTap:(id)tap moveAmount:(double)amount
{
  tapCopy = tap;
  trackpadBorderView = [(HNDTrackpadViewController *)self trackpadBorderView];
  [tapCopy locationInView:trackpadBorderView];
  v8 = v7;
  v10 = v9;

  [trackpadBorderView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [trackpadBorderView borderLocationFromPoint:{v8, v10}];
  if (v19 > 3)
  {
    v20 = v12 + amount;
    if (v19 != 5)
    {
      v20 = v12;
    }

    if (v19 == 4)
    {
      v12 = v12 - amount;
    }

    else
    {
      v12 = v20;
    }
  }

  else if (v19 == 2)
  {
    v14 = v14 - amount;
  }

  else if (v19 == 3)
  {
    v14 = v14 + amount;
  }

  [(HNDTrackpadViewController *)self _setTrackpadBorderFrame:v12, v14, v16, v18];
}

- (void)handleBorderViewMove:(id)move
{
  moveCopy = move;
  [moveCopy locationInView:0];
  v5 = v4;
  v7 = v6;
  state = [moveCopy state];
  if ((state - 3) < 3)
  {
    [(HNDTrackpadViewController *)self setCurrentBorderAction:0];
    goto LABEL_16;
  }

  if (state == 2)
  {
    [(HNDTrackpadViewController *)self previousTouchPoint];
    [(HNDTrackpadViewController *)self getPointsDelta:v5 startPoint:v7 scale:v17, v18, 1.0];
    v20 = v19;
    v22 = v21;
    currentBorderAction = [(HNDTrackpadViewController *)self currentBorderAction];
    if (currentBorderAction == 2)
    {
      trackpadBorderView = [(HNDTrackpadViewController *)self trackpadBorderView];
      [trackpadBorderView frame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      [(HNDTrackpadViewController *)self _setTrackpadBorderFrame:v20 + v27, v22 + v29, v31, v33];
    }

    else if (currentBorderAction == 1)
    {
      trackpadBorderView2 = [(HNDTrackpadViewController *)self trackpadBorderView];
      [trackpadBorderView2 resizeTrackpadWithDelta:{v20, v22}];
    }
  }

  else
  {
    if (state != 1)
    {
      goto LABEL_16;
    }

    trackpadBorderView3 = [(HNDTrackpadViewController *)self trackpadBorderView];
    [moveCopy locationInView:trackpadBorderView3];
    v11 = v10;
    v13 = v12;

    trackpadBorderView4 = [(HNDTrackpadViewController *)self trackpadBorderView];
    v15 = [trackpadBorderView4 borderLocationFromPoint:{v11, v13}];

    if (v15 == 1)
    {
      v16 = 1;
    }

    else if ([(HNDTrackpadViewController *)self trackpadContainsPoint:v5, v7])
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    [(HNDTrackpadViewController *)self setCurrentBorderAction:v16];
  }

  [(HNDTrackpadViewController *)self setPreviousTouchPoint:v5, v7];
LABEL_16:
}

- (void)_setTrackpadBorderFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  displayManager = [(HNDTrackpadViewController *)self displayManager];
  [displayManager screenBounds];
  v10 = v9;
  v12 = v11;

  if (x >= 0.0)
  {
    v13 = x;
  }

  else
  {
    v13 = 0.0;
  }

  if (v13 <= v10 - width)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10 - width;
  }

  if (y >= 0.0)
  {
    v15 = y;
  }

  else
  {
    v15 = 0.0;
  }

  if (v15 <= v12 - height)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12 - height;
  }

  trackpadBorderView = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView setFrame:{v14, v16, width, height}];
}

- (CGPoint)pointerLocation
{
  handManager = [(HNDTrackpadViewController *)self handManager];
  [handManager systemPointerLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)trackpadContainsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  trackpadBorderView = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView frame];
  v8.x = x;
  v8.y = y;
  v6 = CGRectContainsPoint(v9, v8);

  return v6;
}

- (BOOL)isPressingOnTrackpad
{
  trackpadPressGestureRecognizer = [(HNDTrackpadViewController *)self trackpadPressGestureRecognizer];
  state = [trackpadPressGestureRecognizer state];

  return (state - 1) < 2;
}

- (BOOL)trackpadCanPinch
{
  trackpadPinchGestureRecognizer = [(HNDTrackpadViewController *)self trackpadPinchGestureRecognizer];
  state = [trackpadPinchGestureRecognizer state];

  trackpadPinchGestureRecognizer2 = [(HNDTrackpadViewController *)self trackpadPinchGestureRecognizer];
  [trackpadPinchGestureRecognizer2 scale];
  v7 = v6;

  if ((state - 1) > 1)
  {
    return 0;
  }

  if (v7 < 0.95)
  {
    return 1;
  }

  return v7 > 1.05;
}

- (BOOL)trackpadCanScroll
{
  trackpadScrollGestureRecognizer = [(HNDTrackpadViewController *)self trackpadScrollGestureRecognizer];
  state = [trackpadScrollGestureRecognizer state];

  return (state - 1) < 2;
}

- (void)highlightTrackpad
{
  if ([(HNDTrackpadViewController *)self isTrackpadDimmed])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10004A7E4;
    v4[3] = &unk_1001D3488;
    v4[4] = self;
    [UIView animateWithDuration:v4 animations:0.15];
    [(HNDTrackpadViewController *)self setIsTrackpadDimmed:0];
  }

  else
  {
    fadeTimer = [(HNDTrackpadViewController *)self fadeTimer];
    [fadeTimer cancel];
  }

  [(HNDTrackpadViewController *)self fadeTrackpad];
}

- (void)fadeTrackpad
{
  if (![(HNDTrackpadViewController *)self isTrackpadDimmed])
  {
    fadeTimer = [(HNDTrackpadViewController *)self fadeTimer];
    [fadeTimer cancel];

    objc_initWeak(&location, self);
    fadeTimer2 = [(HNDTrackpadViewController *)self fadeTimer];
    [(HNDTrackpadViewController *)self fadeDelay];
    v6 = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004A900;
    v7[3] = &unk_1001D3460;
    objc_copyWeak(&v8, &location);
    [fadeTimer2 afterDelay:v7 processBlock:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)resetVisibility:(BOOL)visibility
{
  if (visibility)
  {
    view = [(HNDTrackpadViewController *)self view];
    [view setAlpha:1.0];
  }

  else
  {
    view = +[AXSettings sharedInstance];
    [view assistiveTouchIdleOpacity];
    v5 = v4;
    view2 = [(HNDTrackpadViewController *)self view];
    [view2 setAlpha:v5];
  }
}

- (void)handleOrientationChange
{
  [(HNDTrackpadViewController *)self _updateTrackpadSize];

  [(HNDTrackpadViewController *)self _setTrackpadPositionBottomRight];
}

- (void)_updateTrackpadSize
{
  displayManager = [(HNDTrackpadViewController *)self displayManager];
  [displayManager screenBounds];
  v5 = v4;
  v7 = v6;

  trackpadBorderView = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView frame];
  v28 = v10;
  v30 = v9;
  v12 = v11;
  v14 = v13;

  trackpadView = [(HNDTrackpadViewController *)self trackpadView];
  [trackpadView frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (v14 <= v7)
  {
    if (v12 > v5)
    {
      v25 = v12 - v5;
      v12 = v12 - (v12 - v5);
      v21 = v21 - v25;
    }
  }

  else
  {
    v24 = v14 - v7;
    v14 = v14 - (v14 - v7);
    v23 = v23 - v24;
  }

  trackpadBorderView2 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView2 setFrame:{*&v30, v29, v12, v14}];

  trackpadView2 = [(HNDTrackpadViewController *)self trackpadView];
  [trackpadView2 setFrame:{v17, v19, v21, v23}];

  trackpadBorderView3 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView3 updateFrameLayer];
}

- (void)_setTrackpadPositionBottomRight
{
  displayManager = [(HNDTrackpadViewController *)self displayManager];
  [displayManager screenBounds];
  v5 = v4;
  v7 = v6;

  trackpadBorderView = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView bounds];
  v10 = v9;
  v12 = v11;

  trackpadBorderView2 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView2 frame];
  v15 = v14;
  v17 = v16;

  trackpadBorderView3 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [trackpadBorderView3 setFrame:{v5 - v10, v7 - v12, v15, v17}];
}

- (CGRect)_getTrackpadBorderFrame
{
  [HNDHandManager screenFrame:]_0();
  v4 = v2;
  v5 = v3;
  if (v2 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  if (v2 >= v3)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  IsPad = AXDeviceIsPad();
  v9 = 1.5;
  if (IsPad)
  {
    v9 = 2.0;
  }

  v10 = v6 / v9;
  v11 = v7 / 3.5;
  v12 = v4 - v6 / v9;
  v13 = v5 - v7 / 3.5;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_getTrackpadFrame:(double)frame borderFrame:(CGRect)borderFrame
{
  v4 = borderFrame.size.width + frame * -2.0;
  v5 = borderFrame.size.height + frame * -2.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = frame;
  result.origin.x = frame;
  return result;
}

- (void)setTrackpadViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  trackpadView = [(HNDTrackpadViewController *)self trackpadView];
  [trackpadView setFrame:{x, y, width, height}];
}

- (CGRect)trackpadViewFrame
{
  trackpadView = [(HNDTrackpadViewController *)self trackpadView];
  [trackpadView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)getPointsDelta:(CGPoint)delta startPoint:(CGPoint)point scale:(double)scale
{
  v5 = (delta.x - point.x) * scale;
  v6 = (delta.y - point.y) * scale;
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)previousTouchPoint
{
  x = self->_previousTouchPoint.x;
  y = self->_previousTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)previousPointerPoint
{
  x = self->_previousPointerPoint.x;
  y = self->_previousPointerPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pinchFirstPoint
{
  x = self->_pinchFirstPoint.x;
  y = self->_pinchFirstPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pinchSecondPoint
{
  x = self->_pinchSecondPoint.x;
  y = self->_pinchSecondPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end