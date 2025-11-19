@interface HNDTrackpadViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isPressingOnTrackpad;
- (BOOL)trackpadCanPinch;
- (BOOL)trackpadCanScroll;
- (BOOL)trackpadContainsPoint:(CGPoint)a3;
- (CGPoint)getPointsDelta:(CGPoint)a3 startPoint:(CGPoint)a4 scale:(double)a5;
- (CGPoint)pinchFirstPoint;
- (CGPoint)pinchSecondPoint;
- (CGPoint)pointerLocation;
- (CGPoint)previousPointerPoint;
- (CGPoint)previousTouchPoint;
- (CGRect)_getTrackpadBorderFrame;
- (CGRect)_getTrackpadFrame:(double)a3 borderFrame:(CGRect)a4;
- (CGRect)trackpadViewFrame;
- (HNDTrackpadViewController)init;
- (void)_handleMovePointer:(CGPoint)a3 startPoint:(CGPoint)a4;
- (void)_initSettings;
- (void)_registerForSettingsUpdates;
- (void)_sendEventAtPinchPoint:(CGPoint)a3 pointTwo:(CGPoint)a4 handEventType:(unsigned int)a5;
- (void)_sendMouseMoveEventWithDelta:(CGPoint)a3;
- (void)_setTrackpadBorderFrame:(CGRect)a3;
- (void)_setTrackpadPositionBottomRight;
- (void)_setUpGestureRecognizers;
- (void)_updateTrackpadSize;
- (void)dealloc;
- (void)fadeTrackpad;
- (void)handleBorderViewMove:(id)a3;
- (void)handleOrientationChange;
- (void)handleTrackpadBorderTap:(id)a3 moveAmount:(double)a4;
- (void)handleTrackpadMove:(id)a3;
- (void)handleTrackpadPinch:(unint64_t)a3 firstPoint:(CGPoint)a4 secondPoint:(CGPoint)a5;
- (void)handleTrackpadPress:(id)a3;
- (void)handleTrackpadScroll:(unint64_t)a3 point:(CGPoint)a4;
- (void)handleTrackpadTap:(id)a3;
- (void)highlightTrackpad;
- (void)loadView;
- (void)resetVisibility:(BOOL)a3;
- (void)setTrackpadViewFrame:(CGRect)a3;
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
  v6 = [v5 currentDisplayManager];
  displayManager = v2->_displayManager;
  v2->_displayManager = v6;

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
  v22 = [(HNDTrackpadViewController *)self view];
  [v22 addSubview:self->_trackpadView];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HNDTrackpadViewController;
  [(HNDTrackpadViewController *)&v7 viewDidLoad];
  v3 = [(HNDTrackpadViewController *)self virtualMouseClientAssertionForVirtualTrackpad];

  if (!v3)
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
  v3 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v3 updateFrameLayer];

  [(HNDTrackpadViewController *)self highlightTrackpad];
}

- (void)dealloc
{
  v3 = [(HNDTrackpadViewController *)self virtualMouseClientAssertionForVirtualTrackpad];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HNDTrackpadViewController;
  [(HNDTrackpadViewController *)&v4 dealloc];
}

- (void)unload
{
  v3 = [(HNDTrackpadViewController *)self virtualMouseClientAssertionForVirtualTrackpad];
  [v3 invalidate];

  [(HNDTrackpadViewController *)self setVirtualMouseClientAssertionForVirtualTrackpad:0];
  v4 = [(HNDTrackpadViewController *)self view];
  [v4 removeFromSuperview];
}

- (void)_setUpGestureRecognizers
{
  v17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTrackpadTap:"];
  v3 = [(HNDTrackpadViewController *)self trackpadView];
  [v3 addGestureRecognizer:v17];

  v4 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"handleTrackpadMove:"];
  [v4 setMaximumNumberOfTouches:1];
  [v4 setDelegate:self];
  [(HNDTrackpadViewController *)self setTrackpadMoveGestureRecognizer:v4];
  v5 = [(HNDTrackpadViewController *)self trackpadView];
  [v5 addGestureRecognizer:v4];

  v6 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleTrackpadPress:"];
  v7 = +[AXSettings sharedInstance];
  [v7 assistiveTouchVirtualTrackpadHoldDuration];
  [v6 setMinimumPressDuration:?];

  [v6 setDelegate:self];
  [(HNDTrackpadViewController *)self setTrackpadPressGestureRecognizer:v6];
  v8 = [(HNDTrackpadViewController *)self trackpadView];
  [v8 addGestureRecognizer:v6];

  v9 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:0];
  [v9 setMinimumNumberOfTouches:2];
  [v9 setMaximumNumberOfTouches:2];
  [v9 setDelegate:self];
  [(HNDTrackpadViewController *)self setTrackpadScrollGestureRecognizer:v9];
  v10 = [(HNDTrackpadViewController *)self trackpadView];
  [v10 addGestureRecognizer:v9];

  v11 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:0];
  [v11 setDelaysTouchesBegan:1];
  [v11 setDelegate:self];
  [(HNDTrackpadViewController *)self setTrackpadPinchGestureRecognizer:v11];
  v12 = [(HNDTrackpadViewController *)self trackpadView];
  [v12 addGestureRecognizer:v11];

  v13 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleBorderTap:"];
  v14 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v14 addGestureRecognizer:v13];

  v15 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"handleBorderViewMove:"];
  [v15 setMaximumNumberOfTouches:1];
  [(HNDTrackpadViewController *)self setBorderMoveGestureRecognizer:v15];
  v16 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v16 addGestureRecognizer:v15];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HNDTrackpadViewController *)self trackpadPressGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(HNDTrackpadViewController *)self trackpadMoveGestureRecognizer];
    v9 = v10 == v6;
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

- (void)handleTrackpadTap:(id)a3
{
  v4 = [(HNDTrackpadViewController *)self handManager];
  if (([v4 inCustomGesture] & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = [(HNDTrackpadViewController *)self displayManager];
  v6 = [v5 rocker];
  [v6 frame];
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

  v18 = [(HNDTrackpadViewController *)self handManager];
  [v18 specialToolUsageEnded:1];
}

- (void)handleTrackpadMove:(id)a3
{
  v4 = a3;
  [v4 locationInView:0];
  v6 = v5;
  v8 = v7;
  v9 = [v4 state];

  if (v9 == 2)
  {
    [(HNDTrackpadViewController *)self previousTouchPoint];
    [(HNDTrackpadViewController *)self _handleMovePointer:v6 startPoint:v8, v10, v11];
  }

  else if (v9 != 1)
  {
    return;
  }

  [(HNDTrackpadViewController *)self setPreviousTouchPoint:v6, v8];
}

- (void)handleTrackpadPress:(id)a3
{
  v4 = [a3 state];
  v5 = v4 - 1;
  if (v4 - 1) <= 4 && ((0x1Du >> v5))
  {

    [(HNDTrackpadViewController *)self _handlePrimaryButtonPress:(3u >> v5) & 1];
  }
}

- (void)handleTrackpadScroll:(unint64_t)a3 point:(CGPoint)a4
{
  if (a3 == 2)
  {
    [(HNDTrackpadViewController *)self _handlePrimaryButtonPress:0, a4.x, a4.y];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    y = a4.y;
    x = a4.x;
    if (a3 == 1)
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

      v18 = [(HNDTrackpadViewController *)self naturalScroll];
      v19 = -v17;
      v20 = -v16;
      if (v18)
      {
        v20 = v16;
        v19 = v17;
      }

      [(HNDTrackpadViewController *)self _sendMouseMoveEventWithDelta:v19, v20];
    }

    else if (!a3)
    {
      [(HNDTrackpadViewController *)self setPreviousTouchPoint:a4.x, a4.y];
      v7 = [(HNDTrackpadViewController *)self handManager];
      [v7 currentPointForPointer];
      [(HNDTrackpadViewController *)self setPreviousPointerPoint:?];

      [(HNDTrackpadViewController *)self _handlePrimaryButtonPress:1];
    }
  }
}

- (void)handleTrackpadPinch:(unint64_t)a3 firstPoint:(CGPoint)a4 secondPoint:(CGPoint)a5
{
  if (a3 == 2)
  {
    v22 = 6;
  }

  else
  {
    y = a5.y;
    x = a5.x;
    v8 = a4.y;
    v9 = a4.x;
    if (a3 == 1)
    {
      v11 = 0;
    }

    else
    {
      if (a3)
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
    if (a3 == 1)
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

- (void)_handleMovePointer:(CGPoint)a3 startPoint:(CGPoint)a4
{
  [(HNDTrackpadViewController *)self getPointsDelta:a3.x startPoint:a3.y scale:a4.x, a4.y, self->_pointerSpeed];

  [(HNDTrackpadViewController *)self _sendMouseMoveEventWithDelta:?];
}

- (void)_sendMouseMoveEventWithDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v8 = [objc_allocWithZone(HNDEvent) init];
  [v8 setType:3];
  [v8 setDeltaX:x];
  [v8 setDeltaY:y];
  [v8 setIsVirtualTrackpadEvent:1];
  v6 = [(HNDTrackpadViewController *)self handManager];
  v7 = [v6 deviceManager];
  [v7 device:0 didPostEvent:v8];
}

- (void)_sendEventAtPinchPoint:(CGPoint)a3 pointTwo:(CGPoint)a4 handEventType:(unsigned int)a5
{
  v5 = *&a5;
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
  v15 = [v14 handInfo];
  v16 = [v15 paths];
  v17 = [v16 firstPath];
  [v17 setTransducerType:2];

  v18 = [v14 handInfo];
  v19 = [v18 paths];
  v20 = [v19 secondPath];
  [v20 setTransducerType:2];

  v21 = +[AXBackBoardServer server];
  [(HNDTrackpadViewController *)self pointerLocation];
  v22 = [v21 contextIdForPosition:?];

  [v14 setContextId:v22];
  v23 = +[AXEventTapManager sharedManager];
  v24 = [(HNDTrackpadViewController *)self displayManager];
  v25 = [v24 fingerController];
  [v23 sendHIDSystemEvent:v14 senderID:{objc_msgSend(v25, "eventSenderServiceID")}];
}

- (void)handleTrackpadBorderTap:(id)a3 moveAmount:(double)a4
{
  v6 = a3;
  v21 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v6 locationInView:v21];
  v8 = v7;
  v10 = v9;

  [v21 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v21 borderLocationFromPoint:{v8, v10}];
  if (v19 > 3)
  {
    v20 = v12 + a4;
    if (v19 != 5)
    {
      v20 = v12;
    }

    if (v19 == 4)
    {
      v12 = v12 - a4;
    }

    else
    {
      v12 = v20;
    }
  }

  else if (v19 == 2)
  {
    v14 = v14 - a4;
  }

  else if (v19 == 3)
  {
    v14 = v14 + a4;
  }

  [(HNDTrackpadViewController *)self _setTrackpadBorderFrame:v12, v14, v16, v18];
}

- (void)handleBorderViewMove:(id)a3
{
  v34 = a3;
  [v34 locationInView:0];
  v5 = v4;
  v7 = v6;
  v8 = [v34 state];
  if ((v8 - 3) < 3)
  {
    [(HNDTrackpadViewController *)self setCurrentBorderAction:0];
    goto LABEL_16;
  }

  if (v8 == 2)
  {
    [(HNDTrackpadViewController *)self previousTouchPoint];
    [(HNDTrackpadViewController *)self getPointsDelta:v5 startPoint:v7 scale:v17, v18, 1.0];
    v20 = v19;
    v22 = v21;
    v23 = [(HNDTrackpadViewController *)self currentBorderAction];
    if (v23 == 2)
    {
      v25 = [(HNDTrackpadViewController *)self trackpadBorderView];
      [v25 frame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      [(HNDTrackpadViewController *)self _setTrackpadBorderFrame:v20 + v27, v22 + v29, v31, v33];
    }

    else if (v23 == 1)
    {
      v24 = [(HNDTrackpadViewController *)self trackpadBorderView];
      [v24 resizeTrackpadWithDelta:{v20, v22}];
    }
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_16;
    }

    v9 = [(HNDTrackpadViewController *)self trackpadBorderView];
    [v34 locationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = [(HNDTrackpadViewController *)self trackpadBorderView];
    v15 = [v14 borderLocationFromPoint:{v11, v13}];

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

- (void)_setTrackpadBorderFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(HNDTrackpadViewController *)self displayManager];
  [v8 screenBounds];
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

  v17 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v17 setFrame:{v14, v16, width, height}];
}

- (CGPoint)pointerLocation
{
  v2 = [(HNDTrackpadViewController *)self handManager];
  [v2 systemPointerLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)trackpadContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v5 frame];
  v8.x = x;
  v8.y = y;
  v6 = CGRectContainsPoint(v9, v8);

  return v6;
}

- (BOOL)isPressingOnTrackpad
{
  v2 = [(HNDTrackpadViewController *)self trackpadPressGestureRecognizer];
  v3 = [v2 state];

  return (v3 - 1) < 2;
}

- (BOOL)trackpadCanPinch
{
  v3 = [(HNDTrackpadViewController *)self trackpadPinchGestureRecognizer];
  v4 = [v3 state];

  v5 = [(HNDTrackpadViewController *)self trackpadPinchGestureRecognizer];
  [v5 scale];
  v7 = v6;

  if ((v4 - 1) > 1)
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
  v2 = [(HNDTrackpadViewController *)self trackpadScrollGestureRecognizer];
  v3 = [v2 state];

  return (v3 - 1) < 2;
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
    v3 = [(HNDTrackpadViewController *)self fadeTimer];
    [v3 cancel];
  }

  [(HNDTrackpadViewController *)self fadeTrackpad];
}

- (void)fadeTrackpad
{
  if (![(HNDTrackpadViewController *)self isTrackpadDimmed])
  {
    v3 = [(HNDTrackpadViewController *)self fadeTimer];
    [v3 cancel];

    objc_initWeak(&location, self);
    v4 = [(HNDTrackpadViewController *)self fadeTimer];
    [(HNDTrackpadViewController *)self fadeDelay];
    v6 = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004A900;
    v7[3] = &unk_1001D3460;
    objc_copyWeak(&v8, &location);
    [v4 afterDelay:v7 processBlock:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)resetVisibility:(BOOL)a3
{
  if (a3)
  {
    v7 = [(HNDTrackpadViewController *)self view];
    [v7 setAlpha:1.0];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    [v7 assistiveTouchIdleOpacity];
    v5 = v4;
    v6 = [(HNDTrackpadViewController *)self view];
    [v6 setAlpha:v5];
  }
}

- (void)handleOrientationChange
{
  [(HNDTrackpadViewController *)self _updateTrackpadSize];

  [(HNDTrackpadViewController *)self _setTrackpadPositionBottomRight];
}

- (void)_updateTrackpadSize
{
  v3 = [(HNDTrackpadViewController *)self displayManager];
  [v3 screenBounds];
  v5 = v4;
  v7 = v6;

  v8 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v8 frame];
  v28 = v10;
  v30 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(HNDTrackpadViewController *)self trackpadView];
  [v15 frame];
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

  v26 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v26 setFrame:{*&v30, v29, v12, v14}];

  v27 = [(HNDTrackpadViewController *)self trackpadView];
  [v27 setFrame:{v17, v19, v21, v23}];

  v31 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v31 updateFrameLayer];
}

- (void)_setTrackpadPositionBottomRight
{
  v3 = [(HNDTrackpadViewController *)self displayManager];
  [v3 screenBounds];
  v5 = v4;
  v7 = v6;

  v8 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v13 frame];
  v15 = v14;
  v17 = v16;

  v18 = [(HNDTrackpadViewController *)self trackpadBorderView];
  [v18 setFrame:{v5 - v10, v7 - v12, v15, v17}];
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

- (CGRect)_getTrackpadFrame:(double)a3 borderFrame:(CGRect)a4
{
  v4 = a4.size.width + a3 * -2.0;
  v5 = a4.size.height + a3 * -2.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = a3;
  result.origin.x = a3;
  return result;
}

- (void)setTrackpadViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(HNDTrackpadViewController *)self trackpadView];
  [v7 setFrame:{x, y, width, height}];
}

- (CGRect)trackpadViewFrame
{
  v2 = [(HNDTrackpadViewController *)self trackpadView];
  [v2 frame];
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

- (CGPoint)getPointsDelta:(CGPoint)a3 startPoint:(CGPoint)a4 scale:(double)a5
{
  v5 = (a3.x - a4.x) * a5;
  v6 = (a3.y - a4.y) * a5;
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