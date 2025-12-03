@interface ZWZoomDockedLensViewController
- (BOOL)_zoomRegionOnDockReplicatorEdge;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)zoomRegionOnScreenReplicatorEdge;
- (CGPoint)_lensDragMultiplier;
- (CGPoint)deltaForDockedZoomMovementToRect:(CGRect)rect;
- (CGPoint)maximumPanOffsetWithZoomFactor:(double)factor;
- (CGRect)frameForResizeDrag;
- (CGRect)zoomRegionFrame;
- (ZWZoomDockedLensViewControllerDelegate)dockedDelegate;
- (double)_maxDockHeight;
- (double)_maxDockWidth;
- (id)stringForCurrentDockPosition;
- (id)zoomRootview:(id)rootview viewForHitTestAtPoint:(CGPoint)point;
- (int64_t)_dockPositionForString:(id)string;
- (void)_applyInitialLayoutConstraints;
- (void)_layoutDockUIWithFrames:(CGRect)frames restOfScreeFrame:(CGRect)frame positionOrientationChanged:(BOOL)changed;
- (void)_moveZoomRegionToPoint:(CGPoint)point animated:(BOOL)animated;
- (void)_shiftReplicatorsWithOverflowPan:(CGPoint)pan useFullDelta:(BOOL)delta;
- (void)_toggleVisibilityButtonWasLongPressed;
- (void)_updateConstraintsAndShiftsForDockPosition:(int64_t)position;
- (void)_updateZoomRegionFrameForDockResizeWithScreenShiftDelta:(double)delta;
- (void)_updateZoomRegionPositionAndSize;
- (void)interceptFingerDownAtLocation:(CGPoint)location;
- (void)loadView;
- (void)moveDockedZoomToPhysicalScreenPoint:(CGPoint)point animated:(BOOL)animated;
- (void)resizeDock:(CGSize)dock animated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setInDockResizingMode:(BOOL)mode;
- (void)shiftDock:(double)dock;
- (void)shiftScreen:(double)screen animated:(BOOL)animated discardNewValue:(BOOL)value;
- (void)showOrHideUIForStandbyModeWithCompletion:(id)completion;
- (void)toggleZoomRegionVisibility;
- (void)transitionToDockPosition:(id)position completion:(id)completion;
- (void)updateZoomFactor:(double)factor panOffset:(CGPoint)offset animated:(BOOL)animated animationDuration:(double)duration completion:(id)completion;
- (void)viewDidLayoutSubviews;
@end

@implementation ZWZoomDockedLensViewController

- (void)loadView
{
  v52.receiver = self;
  v52.super_class = ZWZoomDockedLensViewController;
  [(ZWZoomLensViewController *)&v52 loadView];
  view = [(ZWZoomDockedLensViewController *)self view];
  screen = [(ZWZoomLensViewController *)self screen];
  [screen bounds];
  v6 = v5;

  screen2 = [(ZWZoomLensViewController *)self screen];
  [screen2 bounds];
  v9 = v8;

  v10 = +[ZWCoalescedSettings sharedInstance];
  [v10 dockSize];
  [(ZWZoomDockedLensViewController *)self setDockSize:?];

  [(ZWZoomDockedLensViewController *)self setDockPosition:0];
  [(ZWZoomDockedLensViewController *)self dockSize];
  v12 = v11;
  v13 = v6 * v11;
  v14 = [[UIView alloc] initWithFrame:{0.0, 0.0, v9, v6 * v11}];
  [(ZWZoomDockedLensViewController *)self setDockedLensView:v14];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [ZWDockedLensChromeBorderView alloc];
  [v14 frame];
  v48 = [(ZWDockedLensChromeBorderView *)v15 initWithFrame:?];
  [(ZWZoomDockedLensViewController *)self setDockedBorderView:v48];
  [v14 addSubview:v48];
  v45 = v14;
  [view addSubview:v14];
  [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:0.0, v13, v9, v13];
  v46 = [UIBezierPath bezierPathWithRect:0.0, v13, v9, v13];
  v47 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:v13, v9, v13, 5.0];
  [v46 appendPath:v47];
  v16 = objc_alloc_init(CAShapeLayer);
  [v16 setPath:{objc_msgSend(v46, "CGPath")}];
  v17 = +[UIColor blackColor];
  v18 = [v17 colorWithAlphaComponent:0.25];
  [v16 setFillColor:{objc_msgSend(v18, "CGColor")}];

  v19 = +[UIColor whiteColor];
  [v16 setStrokeColor:{objc_msgSend(v19, "CGColor")}];

  [v16 setStrokeStart:0.5];
  [v16 setLineWidth:3.0];
  [v16 setFillRule:kCAFillRuleEvenOdd];
  v44 = v16;
  [(ZWZoomDockedLensViewController *)self setMaskLayer:v16];
  [(ZWZoomDockedLensViewController *)self setZoomRegionVisible:1];
  layer = [view layer];
  layer2 = [v14 layer];
  [layer insertSublayer:v16 below:layer2];

  v22 = +[CAShapeLayer layer];
  v23 = +[UIColor whiteColor];
  v24 = [v23 colorWithAlphaComponent:0.01];
  [v22 setBackgroundColor:{objc_msgSend(v24, "CGColor")}];

  [v22 setFrame:{0.0, v13, v9, v13}];
  v43 = v22;
  [(ZWZoomDockedLensViewController *)self setTouchStealLayer:v22];
  layer3 = [view layer];
  [layer3 addSublayer:v22];

  v26 = [[UIView alloc] initWithFrame:{0.0, 0.0, v9, v6}];
  [v26 setCenter:{v9 * 0.5, v6 * 0.5}];
  [(ZWZoomDockedLensViewController *)self setScreenReplicatorView:v26];
  [view addSubview:v26];
  v27 = objc_alloc_init(CAReplicatorLayer);
  [v27 setAllowsHitTesting:0];
  [v27 setBounds:{0.0, 0.0, v9, v6}];
  [v26 center];
  [v27 setPosition:?];
  [v27 setInstanceCount:2];
  CATransform3DMakeTranslation(&v51, 0.0, v13, 0.0);
  v50 = v51;
  [v27 setInstanceTransform:&v50];
  [(ZWZoomDockedLensViewController *)self setScreenShift:v13];
  [(ZWZoomDockedLensViewController *)self setScreenReplicatorLayer:v27];
  layer4 = [v26 layer];
  [layer4 addSublayer:v27];

  v29 = objc_alloc_init(CABackdropLayer);
  [v29 setAllowsHitTesting:0];
  [v29 setEnabled:1];
  [v29 setBackdropRect:{0.0, 0.0, v9, v6}];
  [(ZWZoomDockedLensViewController *)self setScreenBackdropLayer:v29];
  [v27 addSublayer:v29];
  v30 = [[UIView alloc] initWithFrame:{0.0, 0.0, v9, v6}];
  [v30 setCenter:{v9 * 0.5, v6 * 0.5}];
  [(ZWZoomDockedLensViewController *)self setDockReplicatorView:v30];
  [view addSubview:v30];
  v31 = objc_alloc_init(CAReplicatorLayer);
  [v31 setAllowsHitTesting:0];
  [v31 setBounds:{0.0, 0.0, v9, v13}];
  [v31 setPosition:{v9 * 0.5, v13 * 1.5}];
  [v31 setInstanceCount:2];
  CATransform3DMakeTranslation(&v49, 0.0, -(v6 * v12), 0.0);
  v50 = v49;
  [v31 setInstanceTransform:&v50];
  [(ZWZoomDockedLensViewController *)self setDockShift:v13];
  [(ZWZoomDockedLensViewController *)self setDockReplicatorLayer:v31];
  layer5 = [v30 layer];
  [layer5 addSublayer:v31];

  v33 = objc_alloc_init(CABackdropLayer);
  [v33 setAllowsHitTesting:0];
  [v33 setEnabled:1];
  [v33 setBackdropRect:{0.0, 0.0, v9, v13}];
  [(ZWZoomDockedLensViewController *)self setDockBackdropLayer:v33];
  [v31 addSublayer:v33];
  v34 = view;
  [view sendSubviewToBack:v30];
  v42 = view;
  [view sendSubviewToBack:v26];
  v35 = objc_alloc_init(ZWShowHideZoomRegionButton);
  [(ZWShowHideZoomRegionButton *)v35 addTarget:self action:"_toggleVisibilityButtonWasPressed" forControlEvents:64];
  [(ZWZoomDockedLensViewController *)self setToggleZoomRegionButton:v35];
  toggleZoomRegionButton = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  [toggleZoomRegionButton makeHorizontal];

  toggleZoomRegionButton2 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  [toggleZoomRegionButton2 setCenter:{v9 * 0.5, v13}];

  [v34 addSubview:v35];
  v38 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_toggleVisibilityButtonWasLongPressed"];
  toggleZoomRegionButton3 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  [toggleZoomRegionButton3 addGestureRecognizer:v38];

  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  zoomReplicatorLayer = [lensZoomView zoomReplicatorLayer];
  [zoomReplicatorLayer setPosition:{v9 * 0.5, v13 * 0.5}];
}

- (int64_t)_dockPositionForString:(id)string
{
  stringCopy = string;
  if (([stringCopy isEqualToString:AXZoomDockPositionTop] & 1) == 0)
  {
    if ([stringCopy isEqualToString:AXZoomDockPositionLeft])
    {
      v4 = 1;
      goto LABEL_9;
    }

    if ([stringCopy isEqualToString:AXZoomDockPositionRight])
    {
      v4 = 2;
      goto LABEL_9;
    }

    if ([stringCopy isEqualToString:AXZoomDockPositionBottom])
    {
      v4 = 3;
      goto LABEL_9;
    }

    _AXAssert();
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (void)_applyInitialLayoutConstraints
{
  v29.receiver = self;
  v29.super_class = ZWZoomDockedLensViewController;
  [(ZWZoomLensViewController *)&v29 _applyInitialLayoutConstraints];
  view = [(ZWZoomDockedLensViewController *)self view];
  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  [dockedLensView bounds];
  v7 = v6;
  screen = [(ZWZoomLensViewController *)self screen];
  [screen bounds];
  v10 = v9;

  v11 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:1 relatedBy:0 toItem:dockedLensView attribute:1 multiplier:1.0 constant:0.0];
  [(ZWZoomDockedLensViewController *)self setZoomViewLeftConstraint:v11];

  v12 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:2 relatedBy:0 toItem:dockedLensView attribute:2 multiplier:1.0 constant:0.0];
  [(ZWZoomDockedLensViewController *)self setZoomViewRightConstraint:v12];

  v13 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:3 relatedBy:0 toItem:dockedLensView attribute:3 multiplier:1.0 constant:0.0];
  [(ZWZoomDockedLensViewController *)self setZoomViewTopConstraint:v13];

  v14 = [NSLayoutConstraint constraintWithItem:lensZoomView attribute:4 relatedBy:0 toItem:dockedLensView attribute:4 multiplier:1.0 constant:0.0];
  [(ZWZoomDockedLensViewController *)self setZoomViewBottomConstraint:v14];

  zoomViewTopConstraint = [(ZWZoomDockedLensViewController *)self zoomViewTopConstraint];
  v31[0] = zoomViewTopConstraint;
  zoomViewRightConstraint = [(ZWZoomDockedLensViewController *)self zoomViewRightConstraint];
  v31[1] = zoomViewRightConstraint;
  zoomViewLeftConstraint = [(ZWZoomDockedLensViewController *)self zoomViewLeftConstraint];
  v31[2] = zoomViewLeftConstraint;
  zoomViewBottomConstraint = [(ZWZoomDockedLensViewController *)self zoomViewBottomConstraint];
  v31[3] = zoomViewBottomConstraint;
  v19 = [NSArray arrayWithObjects:v31 count:4];
  [view addConstraints:v19];

  v20 = [NSLayoutConstraint constraintWithItem:dockedLensView attribute:1 relatedBy:0 toItem:view attribute:1 multiplier:1.0 constant:0.0];
  [(ZWZoomDockedLensViewController *)self setDockedViewLeftConstraint:v20];

  v21 = [NSLayoutConstraint constraintWithItem:dockedLensView attribute:2 relatedBy:0 toItem:view attribute:2 multiplier:1.0 constant:0.0];
  [(ZWZoomDockedLensViewController *)self setDockedViewRightConstraint:v21];

  v22 = [NSLayoutConstraint constraintWithItem:dockedLensView attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];
  [(ZWZoomDockedLensViewController *)self setDockedViewTopConstraint:v22];

  v23 = [NSLayoutConstraint constraintWithItem:dockedLensView attribute:4 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:-(v10 - v7)];
  [(ZWZoomDockedLensViewController *)self setDockedViewBottomConstraint:v23];

  dockedViewTopConstraint = [(ZWZoomDockedLensViewController *)self dockedViewTopConstraint];
  v30[0] = dockedViewTopConstraint;
  dockedViewRightConstraint = [(ZWZoomDockedLensViewController *)self dockedViewRightConstraint];
  v30[1] = dockedViewRightConstraint;
  dockedViewLeftConstraint = [(ZWZoomDockedLensViewController *)self dockedViewLeftConstraint];
  v30[2] = dockedViewLeftConstraint;
  dockedViewBottomConstraint = [(ZWZoomDockedLensViewController *)self dockedViewBottomConstraint];
  v30[3] = dockedViewBottomConstraint;
  v28 = [NSArray arrayWithObjects:v30 count:4];
  [view addConstraints:v28];
}

- (void)viewDidLayoutSubviews
{
  v54.receiver = self;
  v54.super_class = ZWZoomDockedLensViewController;
  [(ZWZoomDockedLensViewController *)&v54 viewDidLayoutSubviews];
  screenReplicatorView = [(ZWZoomDockedLensViewController *)self screenReplicatorView];
  dockReplicatorView = [(ZWZoomDockedLensViewController *)self dockReplicatorView];
  screenReplicatorLayer = [(ZWZoomDockedLensViewController *)self screenReplicatorLayer];
  screenBackdropLayer = [(ZWZoomDockedLensViewController *)self screenBackdropLayer];
  dockReplicatorLayer = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
  view = [(ZWZoomDockedLensViewController *)self view];
  [view bounds];
  v9 = v8;

  view2 = [(ZWZoomDockedLensViewController *)self view];
  [view2 bounds];
  v12 = v11;

  [(ZWZoomDockedLensViewController *)self dockSize];
  v14 = v9 * v13;
  if ([(ZWZoomDockedLensViewController *)self dockPosition])
  {
    v15 = v12;
    if ([(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
    {
      [(ZWZoomDockedLensViewController *)self dockSize];
      v15 = v12 * v16;
      v14 = v9;
    }
  }

  else
  {
    v15 = v12;
  }

  v17 = screenReplicatorView;
  [screenReplicatorView bounds];
  v19 = v18;
  v20 = +[AXSettings sharedInstance];
  zoomPreferredCurrentDockPosition = [v20 zoomPreferredCurrentDockPosition];
  stringForCurrentDockPosition = [(ZWZoomDockedLensViewController *)self stringForCurrentDockPosition];
  if ([zoomPreferredCurrentDockPosition isEqualToString:stringForCurrentDockPosition])
  {
  }

  else
  {
    dockPositionIsTransitioning = [(ZWZoomDockedLensViewController *)self dockPositionIsTransitioning];

    if ((dockPositionIsTransitioning & 1) == 0)
    {
      v40 = +[AXSettings sharedInstance];
      zoomPreferredCurrentDockPosition2 = [v40 zoomPreferredCurrentDockPosition];
      [(ZWZoomDockedLensViewController *)self transitionToDockPosition:zoomPreferredCurrentDockPosition2 completion:0];

      v24 = screenBackdropLayer;
      v25 = dockReplicatorLayer;
      v26 = screenReplicatorLayer;
      v27 = dockReplicatorView;
      goto LABEL_11;
    }
  }

  v24 = screenBackdropLayer;
  v25 = dockReplicatorLayer;
  v26 = screenReplicatorLayer;
  v27 = dockReplicatorView;
  if (vabdd_f64(v19, v12) < 2.22044605e-16)
  {
    view3 = [(ZWZoomDockedLensViewController *)self view];
    [view3 bounds];
    [v17 setBounds:?];

    [v17 center];
    v30 = v29;
    [v17 center];
    [v17 setCenter:{v30, v31}];
    view4 = [(ZWZoomDockedLensViewController *)self view];
    [view4 bounds];
    [dockReplicatorView setBounds:?];

    [dockReplicatorView center];
    v34 = v33;
    [dockReplicatorView center];
    [dockReplicatorView setCenter:{v34, v35}];
    view5 = [(ZWZoomDockedLensViewController *)self view];
    [view5 bounds];
    [v26 setBounds:?];

    screenReplicatorView2 = [(ZWZoomDockedLensViewController *)self screenReplicatorView];
    [screenReplicatorView2 center];
    [v26 setPosition:?];

    [(ZWZoomDockedLensViewController *)self screenShift];
    [(ZWZoomDockedLensViewController *)self setScreenShift:v9 * (v38 / v12)];
    [v24 setBackdropRect:{0.0, 0.0, v12, v9}];
    [v25 setBounds:{0.0, 0.0, v15, v14}];
    [(ZWZoomDockedLensViewController *)self dockShift];
    [(ZWZoomDockedLensViewController *)self setDockShift:v9 * (v39 / v12)];
    +[CATransaction begin];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = __55__ZWZoomDockedLensViewController_viewDidLayoutSubviews__block_invoke;
    v53[3] = &unk_78D00;
    v53[4] = self;
    [CATransaction setCompletionBlock:v53];
    [(ZWZoomDockedLensViewController *)self _updateConstraintsAndShiftsForDockPosition:[(ZWZoomDockedLensViewController *)self dockPosition]];
    +[CATransaction commit];
  }

LABEL_11:
  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView frame];
  v44 = v43;
  v46 = v45;

  y = CGPointZero.y;
  dockedBorderView = [(ZWZoomDockedLensViewController *)self dockedBorderView];
  [dockedBorderView setFrame:{CGPointZero.x, y, v44, v46}];

  dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
  dockedBorderView2 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
  [dockedBorderView2 setDockPosition:dockPosition];

  dockedBorderView3 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
  [dockedBorderView3 setNeedsLayout];
}

id __55__ZWZoomDockedLensViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lensZoomView];
  [v2 layoutSubviews];

  v3 = *(a1 + 32);

  return [v3 _updateZoomRegionPositionAndSize];
}

- (void)updateZoomFactor:(double)factor panOffset:(CGPoint)offset animated:(BOOL)animated animationDuration:(double)duration completion:(id)completion
{
  v8.receiver = self;
  v8.super_class = ZWZoomDockedLensViewController;
  [(ZWZoomLensViewController *)&v8 updateZoomFactor:animated panOffset:completion animated:factor animationDuration:offset.x completion:offset.y, duration];
  [(ZWZoomDockedLensViewController *)self _updateZoomRegionPositionAndSize];
}

- (void)toggleZoomRegionVisibility
{
  zoomRegionVisible = [(ZWZoomDockedLensViewController *)self zoomRegionVisible];
  v4 = 0.0;
  if (!zoomRegionVisible)
  {
    [(ZWZoomDockedLensViewController *)self _updateZoomRegionPositionAndSize];
    v4 = 1.0;
  }

  v5 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  *&v6 = v4;
  v7 = [NSNumber numberWithFloat:v6];
  [v5 setToValue:v7];

  maskLayer = [(ZWZoomDockedLensViewController *)self maskLayer];
  [maskLayer addAnimation:v5 forKey:0];

  maskLayer2 = [(ZWZoomDockedLensViewController *)self maskLayer];
  *&v10 = v4;
  [maskLayer2 setOpacity:v10];

  touchStealLayer = [(ZWZoomDockedLensViewController *)self touchStealLayer];
  [touchStealLayer setHidden:zoomRegionVisible];

  [(ZWZoomDockedLensViewController *)self setZoomRegionVisible:zoomRegionVisible ^ 1];
  dockedDelegate = [(ZWZoomDockedLensViewController *)self dockedDelegate];
  [dockedDelegate dockedLensViewController:self zoomRegionVisibilityWasChanged:{-[ZWZoomDockedLensViewController zoomRegionVisible](self, "zoomRegionVisible")}];
}

- (void)moveDockedZoomToPhysicalScreenPoint:(CGPoint)point animated:(BOOL)animated
{
  y = point.y;
  x = point.x;
  [(ZWZoomDockedLensViewController *)self _moveZoomRegionToPoint:animated animated:?];
  dockReplicatorLayer = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
  [dockReplicatorLayer position];
  v9 = x - v8;
  dockReplicatorLayer2 = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
  [dockReplicatorLayer2 position];
  v12 = y - v11;

  [(ZWZoomLensViewController *)self zoomPanOffset];
  v14 = v9 - v13;
  [(ZWZoomLensViewController *)self zoomPanOffset];
  v16 = v12 - v15;
  delegate = [(ZWZoomLensViewController *)self delegate];
  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  [delegate zoomLensViewController:self didMoveLens:lensZoomView withDelta:{v14, v16}];
}

- (void)interceptFingerDownAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  toggleZoomRegionButton = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  [toggleZoomRegionButton frame];
  v9.x = x;
  v9.y = y;
  if (CGRectContainsPoint(v11, v9) || ([(ZWZoomDockedLensViewController *)self zoomRegionFrame], v10.x = x, v10.y = y, CGRectContainsPoint(v12, v10)))
  {
  }

  else
  {
    zoomRegionVisible = [(ZWZoomDockedLensViewController *)self zoomRegionVisible];

    if (zoomRegionVisible)
    {

      [(ZWZoomDockedLensViewController *)self toggleZoomRegionVisibility];
    }
  }
}

- (void)showOrHideUIForStandbyModeWithCompletion:(id)completion
{
  completionCopy = completion;
  view = [(ZWZoomDockedLensViewController *)self view];
  [view bounds];
  v7 = v6;

  view2 = [(ZWZoomDockedLensViewController *)self view];
  [view2 bounds];
  v10 = v9;

  inStandbyMode = [(ZWZoomLensViewController *)self inStandbyMode];
  +[CATransaction begin];
  if (inStandbyMode)
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = __75__ZWZoomDockedLensViewController_showOrHideUIForStandbyModeWithCompletion___block_invoke;
    v43[3] = &unk_79018;
    v43[4] = self;
    v44 = completionCopy;
    [CATransaction setCompletionBlock:v43];
    maskLayer = [(ZWZoomDockedLensViewController *)self maskLayer];
    [maskLayer setHidden:1];

    view3 = [(ZWZoomDockedLensViewController *)self view];
    [view3 frame];
    v47.origin.x = CGRectZero.origin.x;
    v47.origin.y = CGRectZero.origin.y;
    v47.size.width = CGRectZero.size.width;
    v47.size.height = CGRectZero.size.height;
    v14 = CGRectEqualToRect(v45, v47);

    if (!v14)
    {
      [(ZWZoomDockedLensViewController *)self dockSize];
      v16 = v15;
      [(ZWZoomDockedLensViewController *)self screenShift];
      v18 = v17;
      [(ZWZoomDockedLensViewController *)self dockShift];
      v20 = v19;
      if (![(ZWZoomDockedLensViewController *)self dockPosition]|| (v21 = [(ZWZoomDockedLensViewController *)self dockPosition], v22 = 0.0, v21 == 3))
      {
        v7 = 0.0;
        v22 = v10;
      }

      [(ZWZoomDockedLensViewController *)self resizeDock:1 animated:v22, v7];
      [(ZWZoomDockedLensViewController *)self setDockSize:v16];
      [(ZWZoomDockedLensViewController *)self setScreenShift:v18];
      [(ZWZoomDockedLensViewController *)self setDockShift:v20];
    }

    +[CATransaction commit];
    v23 = v44;
  }

  else
  {
    v37 = _NSConcreteStackBlock;
    v38 = 3221225472;
    v39 = __75__ZWZoomDockedLensViewController_showOrHideUIForStandbyModeWithCompletion___block_invoke_2;
    v40 = &unk_79040;
    selfCopy = self;
    v42 = completionCopy;
    [CATransaction setCompletionBlock:&v37];
    v24 = [(ZWZoomDockedLensViewController *)self dockedLensView:v37];
    [v24 setHidden:0];

    screenReplicatorView = [(ZWZoomDockedLensViewController *)self screenReplicatorView];
    [screenReplicatorView setHidden:0];

    dockReplicatorView = [(ZWZoomDockedLensViewController *)self dockReplicatorView];
    [dockReplicatorView setHidden:0];

    toggleZoomRegionButton = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
    [toggleZoomRegionButton setHidden:0];

    if ([(ZWZoomDockedLensViewController *)self zoomRegionVisible])
    {
      touchStealLayer = [(ZWZoomDockedLensViewController *)self touchStealLayer];
      [touchStealLayer setHidden:0];
    }

    view4 = [(ZWZoomDockedLensViewController *)self view];
    [view4 frame];
    v48.origin.x = CGRectZero.origin.x;
    v48.origin.y = CGRectZero.origin.y;
    v48.size.width = CGRectZero.size.width;
    v48.size.height = CGRectZero.size.height;
    v30 = CGRectEqualToRect(v46, v48);

    if (!v30)
    {
      [(ZWZoomDockedLensViewController *)self screenShift];
      v32 = v31;
      [(ZWZoomDockedLensViewController *)self dockShift];
      v34 = v33;
      if ([(ZWZoomDockedLensViewController *)self dockPosition]&& [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
      {
        [(ZWZoomDockedLensViewController *)self dockSize];
        v10 = v10 * v36;
      }

      else
      {
        [(ZWZoomDockedLensViewController *)self dockSize];
        v7 = v7 * v35;
      }

      [(ZWZoomDockedLensViewController *)self resizeDock:1 animated:v10, v7];
      [CATransaction setAnimationDuration:0.35];
      [(ZWZoomDockedLensViewController *)self shiftDock:v34];
      [(ZWZoomDockedLensViewController *)self shiftScreen:v32];
    }

    +[CATransaction commit];
    v23 = v42;
  }
}

uint64_t __75__ZWZoomDockedLensViewController_showOrHideUIForStandbyModeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) toggleZoomRegionButton];
  [v2 setHidden:1];

  v3 = [*(a1 + 32) dockedLensView];
  [v3 setHidden:1];

  v4 = [*(a1 + 32) dockReplicatorView];
  [v4 setHidden:1];

  v5 = [*(a1 + 32) screenReplicatorView];
  [v5 setHidden:1];

  v6 = [*(a1 + 32) touchStealLayer];
  [v6 setHidden:1];

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __75__ZWZoomDockedLensViewController_showOrHideUIForStandbyModeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) _updateZoomRegionPositionAndSize];
  v3 = [*(a1 + 32) maskLayer];
  [v3 setHidden:0];
}

- (void)transitionToDockPosition:(id)position completion:(id)completion
{
  positionCopy = position;
  completionCopy = completion;
  +[CATransaction begin];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = __70__ZWZoomDockedLensViewController_transitionToDockPosition_completion___block_invoke;
  v13 = &unk_79018;
  selfCopy = self;
  v8 = completionCopy;
  v15 = v8;
  [CATransaction setCompletionBlock:&v10];
  if ([positionCopy isEqualToString:{AXZoomDockPositionTop, v10, v11, v12, v13, selfCopy}])
  {
    v9 = 0;
LABEL_9:
    [(ZWZoomDockedLensViewController *)self _updateConstraintsAndShiftsForDockPosition:v9];
    goto LABEL_10;
  }

  if ([positionCopy isEqualToString:AXZoomDockPositionLeft])
  {
    v9 = 1;
    goto LABEL_9;
  }

  if ([positionCopy isEqualToString:AXZoomDockPositionRight])
  {
    v9 = 2;
    goto LABEL_9;
  }

  if ([positionCopy isEqualToString:AXZoomDockPositionBottom])
  {
    v9 = 3;
    goto LABEL_9;
  }

LABEL_10:
  +[CATransaction commit];
}

uint64_t __70__ZWZoomDockedLensViewController_transitionToDockPosition_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) zoomRegionFrame];
  v3 = v2;
  [*(a1 + 32) zoomRegionFrame];
  v5 = v3 + v4 * 0.5;
  [*(a1 + 32) zoomRegionFrame];
  v7 = v6;
  [*(a1 + 32) zoomRegionFrame];
  v9 = v7 + v8 * 0.5;
  [*(a1 + 32) _moveZoomRegionToPoint:{v5, v9}];
  v10 = [*(a1 + 32) dockReplicatorLayer];
  [v10 position];
  v12 = v5 - v11;
  v13 = [*(a1 + 32) dockReplicatorLayer];
  [v13 position];
  v15 = v9 - v14;

  [*(a1 + 32) zoomPanOffset];
  v17 = v12 - v16;
  [*(a1 + 32) zoomPanOffset];
  v19 = v15 - v18;
  v20 = [*(a1 + 32) delegate];
  v21 = *(a1 + 32);
  v22 = [v21 lensZoomView];
  [v20 zoomLensViewController:v21 didMoveLens:v22 withDelta:{v17, v19}];

  result = *(a1 + 40);
  if (result)
  {
    v24 = *(result + 16);

    return v24();
  }

  return result;
}

- (void)_moveZoomRegionToPoint:(CGPoint)point animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  view = [(ZWZoomDockedLensViewController *)self view];
  [view bounds];
  v9 = v8;

  view2 = [(ZWZoomDockedLensViewController *)self view];
  [view2 bounds];
  v12 = v11;

  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView bounds];
  v15 = v14;

  dockedLensView2 = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView2 bounds];
  v18 = v17;

  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v54 = v19;
  v56 = v21;
  v57 = v20;
  v22 = v20 * 0.5;
  v23 = v21 * 0.5;
  v25 = v24 + v21 * 0.5;
  dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
  v27 = v12 - v18;
  v28 = v9 - v15;
  if (dockPosition == 3)
  {
    v29 = v12;
  }

  else
  {
    v29 = 0.0;
  }

  if (dockPosition != 3)
  {
    v28 = 0.0;
  }

  if (dockPosition == 2)
  {
    v28 = v9;
  }

  else
  {
    v27 = v29;
  }

  if (dockPosition == 1)
  {
    v30 = v12;
  }

  else
  {
    v30 = 0.0;
  }

  if (dockPosition == 1)
  {
    v31 = v18;
  }

  else
  {
    v31 = 0.0;
  }

  if (dockPosition == 1)
  {
    v32 = v9;
  }

  else
  {
    v32 = 0.0;
  }

  if (dockPosition)
  {
    v33 = 0.0;
  }

  else
  {
    v30 = v12;
    v31 = 0.0;
    v32 = v9;
    v33 = v15;
  }

  if (dockPosition <= 1)
  {
    v34 = v30;
  }

  else
  {
    v34 = v27;
  }

  if (dockPosition <= 1)
  {
    v35 = v31;
  }

  else
  {
    v35 = 0.0;
  }

  if (dockPosition <= 1)
  {
    v36 = v32;
  }

  else
  {
    v36 = v28;
  }

  if (dockPosition <= 1)
  {
    v37 = v33;
  }

  else
  {
    v37 = 0.0;
  }

  v38 = v36 - v23;
  if (y < v36 - v23)
  {
    v38 = y;
  }

  if (v38 >= v23 + v37)
  {
    v39 = v38;
  }

  else
  {
    v39 = v23 + v37;
  }

  v40 = v34 - v22;
  if (x < v34 - v22)
  {
    v40 = x;
  }

  if (v40 < v22 + v35)
  {
    v40 = v22 + v35;
  }

  v58 = v40;
  v55 = v39;
  v41 = v39 - v25;
  if ([(ZWZoomDockedLensViewController *)self dockPosition]&& [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
  {
    v41 = v58 - (v54 + v22);
  }

  [(ZWZoomDockedLensViewController *)self dockShift];
  [(ZWZoomDockedLensViewController *)self shiftDock:v41 + v42];
  v60 = [CABasicAnimation animationWithKeyPath:@"path"];
  maskLayer = [(ZWZoomDockedLensViewController *)self maskLayer];
  v44 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [maskLayer path]);
  [v60 setFromValue:v44];

  v45 = v34 - v35;
  v46 = [UIBezierPath bezierPathWithRect:v35, v37, v45, v36 - v37];
  v47 = v58 - v22;
  v48 = [UIBezierPath bezierPathWithRoundedRect:v47 cornerRadius:v55 - v23, v57, v56, 5.0];
  [v46 appendPath:v48];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  maskLayer2 = [(ZWZoomDockedLensViewController *)self maskLayer];
  [maskLayer2 setStrokeStart:(v36 - v37 + v36 - v37 + v45 * 2.0) / (v57 + v57 + v56 * 2.0 + -8.58407346 + v36 - v37 + v36 - v37 + v45 * 2.0)];

  +[CATransaction commit];
  [v60 setToValue:v46];
  [v60 setDuration:0.15];
  if (animatedCopy)
  {
    maskLayer3 = [(ZWZoomDockedLensViewController *)self maskLayer];
    keyPath = [v60 keyPath];
    [maskLayer3 addAnimation:v60 forKey:keyPath];
  }

  cGPath = [v46 CGPath];
  maskLayer4 = [(ZWZoomDockedLensViewController *)self maskLayer];
  [maskLayer4 setPath:cGPath];

  [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:v47, v55 - v23, v57, v56];
  self->_lastScrollPoint.x = v58;
  self->_lastScrollPoint.y = v55;
}

- (void)_updateZoomRegionPositionAndSize
{
  view = [(ZWZoomDockedLensViewController *)self view];
  [view bounds];
  v5 = v4;

  view2 = [(ZWZoomDockedLensViewController *)self view];
  [view2 bounds];
  v8 = v7;

  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  zoomReplicatorLayer = [lensZoomView zoomReplicatorLayer];
  [zoomReplicatorLayer frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v59 = v17;

  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView bounds];
  v20 = v19;

  dockedLensView2 = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView2 bounds];
  v23 = v22;

  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v60 = v24;
  v58 = v25;
  if ([(ZWZoomDockedLensViewController *)self dockPosition]&& [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
  {
    dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
    v26 = v8 - v23;
    v36 = 0.0;
    if (dockPosition == 1)
    {
      v36 = v23;
    }

    v61 = [UIBezierPath bezierPathWithRect:v36, 0.0, v8 - v23, v5];
    [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
    v38 = v37;
    [(ZWZoomDockedLensViewController *)self dockShift];
    [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:v12 + v39, v14, v16, v59];
    [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
    v41 = v40 - v38;
    [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
    v34 = v23 * (v41 / (v26 - v42));
    v8 = v5;
  }

  else
  {
    v26 = v5 - v20;
    if ([(ZWZoomDockedLensViewController *)self dockPosition])
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v20;
    }

    v61 = [UIBezierPath bezierPathWithRect:0.0, v27, v8, v5 - v20];
    [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
    v29 = v28;
    [(ZWZoomDockedLensViewController *)self dockShift];
    [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:v12, v14 + v30, v16, v59];
    [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
    v32 = v31 - v29;
    [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
    v34 = v20 * (v32 / (v26 - v33));
  }

  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v43 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  [v61 appendPath:v43];
  v44 = v26 + v26 + v8 * 2.0;
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v46 = v45;
  v48 = v47;
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v50 = v49;
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v52 = v51 + v51 + v50 * 2.0 + -8.58407346;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  maskLayer = [(ZWZoomDockedLensViewController *)self maskLayer];
  [maskLayer setStrokeStart:v44 / (v44 + v52)];

  v54 = v61;
  cGPath = [v61 CGPath];
  maskLayer2 = [(ZWZoomDockedLensViewController *)self maskLayer];
  [maskLayer2 setPath:cGPath];

  +[CATransaction commit];
  if (v60 == v46 && v58 == v48)
  {
    [(ZWZoomDockedLensViewController *)self screenShift];
    [(ZWZoomDockedLensViewController *)self shiftScreen:v57 - v34];
  }
}

- (BOOL)_zoomRegionOnDockReplicatorEdge
{
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  dockReplicatorLayer = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
  [dockReplicatorLayer frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (![(ZWZoomDockedLensViewController *)self dockPosition]|| [(ZWZoomDockedLensViewController *)self dockPosition]== &dword_0 + 3)
  {
    v20 = 1.0;
    if (vabdd_f64(v6, v15) >= 1.0)
    {
      v21 = v6 + v10;
      v22 = v15 + v19;
      return vabdd_f64(v21, v22) < v20;
    }

    return 1;
  }

  v20 = 1.0;
  if (vabdd_f64(v4, v13) < 1.0)
  {
    return 1;
  }

  v21 = v4 + v8;
  v22 = v13 + v17;
  return vabdd_f64(v21, v22) < v20;
}

- (BOOL)zoomRegionOnScreenReplicatorEdge
{
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  screenReplicatorLayer = [(ZWZoomDockedLensViewController *)self screenReplicatorLayer];
  [screenReplicatorLayer frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (![(ZWZoomDockedLensViewController *)self dockPosition]|| [(ZWZoomDockedLensViewController *)self dockPosition]== &dword_0 + 3)
  {
    v20 = 1.0;
    if (vabdd_f64(v6, v15) >= 1.0)
    {
      v21 = v6 + v10;
      v22 = v15 + v19;
      return vabdd_f64(v21, v22) < v20;
    }

    return 1;
  }

  v20 = 1.0;
  if (vabdd_f64(v4, v13) < 1.0)
  {
    return 1;
  }

  v21 = v4 + v8;
  v22 = v13 + v17;
  return vabdd_f64(v21, v22) < v20;
}

- (void)shiftScreen:(double)screen animated:(BOOL)animated discardNewValue:(BOOL)value
{
  animatedCopy = animated;
  v9 = *&CATransform3DIdentity.m33;
  *&v50.m31 = *&CATransform3DIdentity.m31;
  *&v50.m33 = v9;
  v10 = *&CATransform3DIdentity.m43;
  *&v50.m41 = *&CATransform3DIdentity.m41;
  *&v50.m43 = v10;
  v11 = *&CATransform3DIdentity.m13;
  *&v50.m11 = *&CATransform3DIdentity.m11;
  *&v50.m13 = v11;
  v12 = *&CATransform3DIdentity.m23;
  *&v50.m21 = *&CATransform3DIdentity.m21;
  *&v50.m23 = v12;
  [(ZWZoomDockedLensViewController *)self screenShift];
  v14 = v13;
  [CATransaction setDisableActions:1];
  +[CATransaction begin];
  dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
  if (dockPosition > 1)
  {
    if (dockPosition == 2)
    {
      dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
      [dockedLensView bounds];
      v35 = v34;

      if (v35 <= screen)
      {
        screenCopy = v35;
      }

      else
      {
        screenCopy = screen;
      }

      if (screenCopy >= 0.0)
      {
        v14 = screenCopy;
      }

      else
      {
        v14 = 0.0;
      }

      dockedLensView2 = [(ZWZoomDockedLensViewController *)self dockedLensView];
      [dockedLensView2 bounds];
      v39 = v38;

      v21 = -(v39 - v14);
      v20 = 0.0;
    }

    else
    {
      if (dockPosition != 3)
      {
        goto LABEL_35;
      }

      dockedLensView3 = [(ZWZoomDockedLensViewController *)self dockedLensView];
      [dockedLensView3 bounds];
      v24 = v23;

      if (v24 <= screen)
      {
        screenCopy2 = v24;
      }

      else
      {
        screenCopy2 = screen;
      }

      if (screenCopy2 >= 0.0)
      {
        v14 = screenCopy2;
      }

      else
      {
        v14 = 0.0;
      }

      dockedLensView4 = [(ZWZoomDockedLensViewController *)self dockedLensView];
      [dockedLensView4 bounds];
      v28 = v27;

      v20 = -(v28 - v14);
      v21 = 0.0;
    }
  }

  else if (dockPosition)
  {
    if (dockPosition != 1)
    {
      goto LABEL_35;
    }

    dockedLensView5 = [(ZWZoomDockedLensViewController *)self dockedLensView];
    [dockedLensView5 bounds];
    v18 = v17;

    if (v18 <= screen)
    {
      screenCopy3 = v18;
    }

    else
    {
      screenCopy3 = screen;
    }

    v20 = 0.0;
    if (screenCopy3 >= 0.0)
    {
      v14 = screenCopy3;
    }

    else
    {
      v14 = 0.0;
    }

    v21 = v14;
  }

  else
  {
    dockedLensView6 = [(ZWZoomDockedLensViewController *)self dockedLensView];
    [dockedLensView6 bounds];
    v31 = v30;

    if (v31 <= screen)
    {
      screenCopy4 = v31;
    }

    else
    {
      screenCopy4 = screen;
    }

    if (screenCopy4 >= 0.0)
    {
      v14 = screenCopy4;
    }

    else
    {
      v14 = 0.0;
    }

    v21 = 0.0;
    v20 = v14;
  }

  CATransform3DMakeTranslation(&v50, v21, v20, 0.0);
LABEL_35:
  if (animatedCopy)
  {
    v40 = [CABasicAnimation animationWithKeyPath:@"instanceTransform"];
    screenReplicatorLayer = [(ZWZoomDockedLensViewController *)self screenReplicatorLayer];
    v42 = screenReplicatorLayer;
    if (screenReplicatorLayer)
    {
      [screenReplicatorLayer instanceTransform];
    }

    else
    {
      memset(&v49, 0, sizeof(v49));
    }

    v43 = [NSValue valueWithCATransform3D:&v49];
    [v40 setFromValue:v43];

    v49 = v50;
    v44 = [NSValue valueWithCATransform3D:&v49];
    [v40 setToValue:v44];

    [v40 setDuration:0.35];
    v45 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    [v40 setTimingFunction:v45];

    [v40 setCumulative:1];
    screenReplicatorLayer2 = [(ZWZoomDockedLensViewController *)self screenReplicatorLayer];
    [screenReplicatorLayer2 addAnimation:v40 forKey:@"RepInstanceTransform"];
  }

  if (!value)
  {
    [(ZWZoomDockedLensViewController *)self setScreenShift:v14];
  }

  v47 = [(ZWZoomDockedLensViewController *)self screenReplicatorLayer:*&v50.m11];
  v49 = v48;
  [v47 setInstanceTransform:&v49];

  +[CATransaction commit];
}

- (void)shiftDock:(double)dock
{
  view = [(ZWZoomDockedLensViewController *)self view];
  [view bounds];
  v7 = v6;

  view2 = [(ZWZoomDockedLensViewController *)self view];
  [view2 bounds];
  v10 = v9;

  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView bounds];
  v13 = v12;

  dockedLensView2 = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView2 bounds];
  v16 = v15;

  [CATransaction setDisableActions:1];
  +[CATransaction begin];
  dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
  if (dockPosition > 1)
  {
    if (dockPosition == 2)
    {
      dockCopy = v7 + v16 * -2.0;
      if (dockCopy >= dock)
      {
        dockCopy = dock;
      }

      [(ZWZoomDockedLensViewController *)self setDockShift:dockCopy];
      [(ZWZoomDockedLensViewController *)self dockShift];
      [(ZWZoomDockedLensViewController *)self setDockShift:fmax(v41, 0.0)];
      [(ZWZoomDockedLensViewController *)self dockShift];
      v43 = v16 * 0.5 + v42;
      dockReplicatorLayer = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
      [dockReplicatorLayer setPosition:{v43, v13 * 0.5}];

      [(ZWZoomDockedLensViewController *)self dockShift];
      CATransform3DMakeTranslation(&v50, v7 - v16 - v45, 0.0, 0.0);
      dockReplicatorLayer2 = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
      v25 = dockReplicatorLayer2;
      v56 = *&v50.m31;
      v57 = *&v50.m33;
      v58 = *&v50.m41;
      v59 = *&v50.m43;
      v52 = *&v50.m11;
      v53 = *&v50.m13;
      v26 = *&v50.m21;
      v27 = *&v50.m23;
      goto LABEL_22;
    }

    if (dockPosition == 3)
    {
      dockCopy2 = v10 + v13 * -2.0;
      if (dockCopy2 >= dock)
      {
        dockCopy2 = dock;
      }

      [(ZWZoomDockedLensViewController *)self setDockShift:dockCopy2];
      [(ZWZoomDockedLensViewController *)self dockShift];
      [(ZWZoomDockedLensViewController *)self setDockShift:fmax(v29, 0.0)];
      [(ZWZoomDockedLensViewController *)self dockShift];
      v31 = v13 * 0.5 + v30;
      dockReplicatorLayer3 = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
      [dockReplicatorLayer3 setPosition:{v16 * 0.5, v31}];

      [(ZWZoomDockedLensViewController *)self dockShift];
      CATransform3DMakeTranslation(&v49, 0.0, v10 - v13 - v33, 0.0);
      dockReplicatorLayer2 = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
      v25 = dockReplicatorLayer2;
      v56 = *&v49.m31;
      v57 = *&v49.m33;
      v58 = *&v49.m41;
      v59 = *&v49.m43;
      v52 = *&v49.m11;
      v53 = *&v49.m13;
      v26 = *&v49.m21;
      v27 = *&v49.m23;
      goto LABEL_22;
    }
  }

  else
  {
    if (!dockPosition)
    {
      dockCopy3 = v10 - v13;
      if (v10 - v13 >= dock)
      {
        dockCopy3 = dock;
      }

      [(ZWZoomDockedLensViewController *)self setDockShift:dockCopy3];
      [(ZWZoomDockedLensViewController *)self dockShift];
      if (v13 >= v35)
      {
        v35 = v13;
      }

      [(ZWZoomDockedLensViewController *)self setDockShift:v35];
      [(ZWZoomDockedLensViewController *)self dockShift];
      v37 = v13 * 0.5 + v36;
      dockReplicatorLayer4 = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
      [dockReplicatorLayer4 setPosition:{v16 * 0.5, v37}];

      [(ZWZoomDockedLensViewController *)self dockShift];
      CATransform3DMakeTranslation(&v60, 0.0, -v39, 0.0);
      dockReplicatorLayer2 = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
      v25 = dockReplicatorLayer2;
      v56 = *&v60.m31;
      v57 = *&v60.m33;
      v58 = *&v60.m41;
      v59 = *&v60.m43;
      v52 = *&v60.m11;
      v53 = *&v60.m13;
      v26 = *&v60.m21;
      v27 = *&v60.m23;
      goto LABEL_22;
    }

    if (dockPosition == 1)
    {
      dockCopy4 = v7 - v16;
      if (v7 - v16 >= dock)
      {
        dockCopy4 = dock;
      }

      [(ZWZoomDockedLensViewController *)self setDockShift:dockCopy4];
      [(ZWZoomDockedLensViewController *)self dockShift];
      if (v16 >= v19)
      {
        v19 = v16;
      }

      [(ZWZoomDockedLensViewController *)self setDockShift:v19];
      [(ZWZoomDockedLensViewController *)self dockShift];
      v21 = v16 * 0.5 + v20;
      dockReplicatorLayer5 = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
      [dockReplicatorLayer5 setPosition:{v21, v13 * 0.5}];

      [(ZWZoomDockedLensViewController *)self dockShift];
      CATransform3DMakeTranslation(&v51, -v23, 0.0, 0.0);
      dockReplicatorLayer2 = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
      v25 = dockReplicatorLayer2;
      v56 = *&v51.m31;
      v57 = *&v51.m33;
      v58 = *&v51.m41;
      v59 = *&v51.m43;
      v52 = *&v51.m11;
      v53 = *&v51.m13;
      v26 = *&v51.m21;
      v27 = *&v51.m23;
LABEL_22:
      v54 = v26;
      v55 = v27;
      [dockReplicatorLayer2 setInstanceTransform:&v52];
    }
  }

  +[CATransaction commit];
  [(ZWZoomDockedLensViewController *)self dockShift];
  v47 = dock - v46;
  [(ZWZoomDockedLensViewController *)self screenShift];
  [(ZWZoomDockedLensViewController *)self shiftScreen:v48 - v47];
}

- (void)_shiftReplicatorsWithOverflowPan:(CGPoint)pan useFullDelta:(BOOL)delta
{
  y = pan.y;
  x = pan.x;
  dockedDelegate = [(ZWZoomDockedLensViewController *)self dockedDelegate];
  if ([dockedDelegate userIsInteractingWithSlugWithDockedLensViewController:self])
  {
  }

  else
  {
    dockedDelegate2 = [(ZWZoomDockedLensViewController *)self dockedDelegate];
    v10 = [dockedDelegate2 isZoomMovingWithVelocityWithDockedLensViewController:self];

    if ((v10 & 1) == 0 && !delta)
    {
      v11 = self->_lastPanPoint.y;
      v12 = x - self->_lastPanPoint.x;
      self->_lastPanPoint.x = x;
      self->_lastPanPoint.y = y;
      y = y - v11;
      x = v12;
    }
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if ([(ZWZoomDockedLensViewController *)self dockPosition]&& [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
  {
    y = x;
  }

  [(ZWZoomDockedLensViewController *)self dockShift];
  [(ZWZoomDockedLensViewController *)self shiftDock:y + v13];

  +[CATransaction commit];
}

- (void)_layoutDockUIWithFrames:(CGRect)frames restOfScreeFrame:(CGRect)frame positionOrientationChanged:(BOOL)changed
{
  changedCopy = changed;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = frames.size.height;
  v11 = frames.size.width;
  v13 = [(ZWZoomDockedLensViewController *)self view:frames.origin.x];
  [v13 bounds];
  v50 = v14;

  view = [(ZWZoomDockedLensViewController *)self view];
  [view bounds];
  v49 = v16;

  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v18 = v17;
  v47 = v19;
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v21 = v20;
  v48 = v22;
  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView bounds];
  v46 = v24;

  dockedLensView2 = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView2 bounds];
  v45 = v26;

  if (changedCopy)
  {
    [(ZWZoomDockedLensViewController *)self screenShift];
    [(ZWZoomDockedLensViewController *)self setScreenShift:v49 * (v27 / v50)];
    [(ZWZoomDockedLensViewController *)self dockShift];
    [(ZWZoomDockedLensViewController *)self setDockShift:v49 * (v28 / v50)];
    [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:v21, v48, v11 * (v18 / v45), v10 * (v47 / v46)];
  }

  touchStealLayer = [(ZWZoomDockedLensViewController *)self touchStealLayer];
  [touchStealLayer setFrame:{x, y, width, height}];

  dockedLensView3 = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView3 bounds];
  v32 = v31;
  v34 = v33;

  dockedLensView4 = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView4 setBounds:{v32, v34, v11, v10}];

  [(ZWZoomDockedLensViewController *)self screenShift];
  [(ZWZoomDockedLensViewController *)self shiftScreen:?];
  dockReplicatorLayer = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
  [dockReplicatorLayer setBounds:{0.0, 0.0, v11, v10}];

  [(ZWZoomDockedLensViewController *)self dockShift];
  [(ZWZoomDockedLensViewController *)self shiftDock:?];
  dockBackdropLayer = [(ZWZoomDockedLensViewController *)self dockBackdropLayer];
  [dockBackdropLayer setBackdropRect:{0.0, 0.0, v11, v10}];

  if ([(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomDockedLensViewController *)self dockSize];
    v39 = v38;
    [(ZWZoomDockedLensViewController *)self screenShift];
    v41 = v40;
    [(ZWZoomDockedLensViewController *)self dockShift];
    v43 = v42;
    if ([(ZWZoomDockedLensViewController *)self dockPosition]&& [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
    {
      v50 = 0.0;
      v44 = v49;
    }

    else
    {
      v44 = 0.0;
    }

    [(ZWZoomDockedLensViewController *)self resizeDock:0 animated:v50, v44];
    [(ZWZoomDockedLensViewController *)self setDockSize:v39];
    [(ZWZoomDockedLensViewController *)self setScreenShift:v41];

    [(ZWZoomDockedLensViewController *)self setDockShift:v43];
  }
}

- (void)_updateConstraintsAndShiftsForDockPosition:(int64_t)position
{
  view = [(ZWZoomDockedLensViewController *)self view];
  [view bounds];
  v97 = v6;

  view2 = [(ZWZoomDockedLensViewController *)self view];
  [view2 bounds];
  v96 = v8;

  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v10 = v9;
  v12 = v11;
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v94 = v13;
  v95 = v14;
  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView bounds];
  v17 = v16;

  dockedLensView2 = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView2 bounds];
  v20 = v19;

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
  [(ZWZoomDockedLensViewController *)self setDockPosition:position];
  dockBackdropLayer = [(ZWZoomDockedLensViewController *)self dockBackdropLayer];
  v92 = v17;
  [dockBackdropLayer setFrame:{0.0, 0.0, v17, v20}];

  v27 = 0;
  if (position <= 1)
  {
    if (position)
    {
      v90 = v10;
      v28 = height;
      v29 = width;
      v30 = y;
      v31 = CGRectNull.origin.x;
      if (position != 1)
      {
        goto LABEL_54;
      }

      [(ZWZoomDockedLensViewController *)self dockSize];
      v33 = v97 * v32;
      if (dockPosition == &dword_0 + 3)
      {
        [(ZWZoomDockedLensViewController *)self screenShift];
        v12 = v12 + v54;
        [(ZWZoomDockedLensViewController *)self screenShift];
        v34 = v90 + v55;
        v27 = 1;
      }

      else
      {
        v34 = v90;
        if (dockPosition != &dword_0 + 2)
        {
          height = v96;
          v35 = v97;
          if (dockPosition)
          {
            v27 = 0;
          }

          else
          {
            [(ZWZoomDockedLensViewController *)self screenShift];
            v12 = v12 - v36;
            [(ZWZoomDockedLensViewController *)self screenShift];
            v34 = v90 + v37;
            v27 = 1;
          }

          goto LABEL_36;
        }

        v34 = v90 + v17;
        [(ZWZoomDockedLensViewController *)self dockShift];
        [(ZWZoomDockedLensViewController *)self setDockShift:v17 + v52];
        v27 = 0;
      }

      height = v96;
      v35 = v97;
LABEL_36:
      [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:v34, v12, v94, v95];
      v43 = v33;
      v39 = v35 - v33;
      dockedViewBottomConstraint = [(ZWZoomDockedLensViewController *)self dockedViewBottomConstraint];
      v30 = 0.0;
      [dockedViewBottomConstraint setConstant:0.0];

      dockedViewLeftConstraint = [(ZWZoomDockedLensViewController *)self dockedViewLeftConstraint];
      [dockedViewLeftConstraint setConstant:0.0];

      dockedViewRightConstraint = [(ZWZoomDockedLensViewController *)self dockedViewRightConstraint];
      [dockedViewRightConstraint setConstant:-v39];

      dockedViewTopConstraint = [(ZWZoomDockedLensViewController *)self dockedViewTopConstraint];
      [dockedViewTopConstraint setConstant:0.0];

      toggleZoomRegionButton = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
      [toggleZoomRegionButton makeVertical];

      toggleZoomRegionButton2 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
      [toggleZoomRegionButton2 setCenter:{v33, height * 0.5}];
      v93 = height;
      v65 = v33;
LABEL_50:
      y = 0.0;
LABEL_51:
      x = 0.0;
      goto LABEL_52;
    }

    [(ZWZoomDockedLensViewController *)self dockSize];
    v41 = v96 * v40;
    if (dockPosition == [(ZWZoomDockedLensViewController *)self dockPosition])
    {
      v27 = 0;
      v39 = v97;
LABEL_49:
      height = v96 - v41;
      dockedViewBottomConstraint2 = [(ZWZoomDockedLensViewController *)self dockedViewBottomConstraint];
      [dockedViewBottomConstraint2 setConstant:-(v96 - v41)];

      dockedViewLeftConstraint2 = [(ZWZoomDockedLensViewController *)self dockedViewLeftConstraint];
      v65 = 0.0;
      [dockedViewLeftConstraint2 setConstant:0.0];

      dockedViewRightConstraint2 = [(ZWZoomDockedLensViewController *)self dockedViewRightConstraint];
      [dockedViewRightConstraint2 setConstant:0.0];

      dockedViewTopConstraint2 = [(ZWZoomDockedLensViewController *)self dockedViewTopConstraint];
      [dockedViewTopConstraint2 setConstant:0.0];

      toggleZoomRegionButton3 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
      [toggleZoomRegionButton3 makeHorizontal];

      toggleZoomRegionButton2 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
      [toggleZoomRegionButton2 setCenter:{v39 * 0.5, v41}];
      v30 = v41;
      v93 = v41;
      v43 = v39;
      goto LABEL_50;
    }

    if (dockPosition == &dword_0 + 3)
    {
      v12 = v12 + v20;
      [(ZWZoomDockedLensViewController *)self dockShift];
      [(ZWZoomDockedLensViewController *)self setDockShift:v20 + v76];
      v27 = 0;
    }

    else
    {
      if (dockPosition != &dword_0 + 2)
      {
        v39 = v97;
        if (dockPosition == &dword_0 + 1)
        {
          [(ZWZoomDockedLensViewController *)self screenShift];
          v10 = v10 - v51;
          v27 = 1;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_48;
      }

      [(ZWZoomDockedLensViewController *)self screenShift];
      v10 = v10 + v17 - v73;
      [(ZWZoomDockedLensViewController *)self dockShift];
      [(ZWZoomDockedLensViewController *)self setDockShift:v17 + v74];
      v27 = 1;
    }

    v39 = v97;
LABEL_48:
    [(ZWZoomDockedLensViewController *)self screenShift];
    [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:v10, v12 + v84, v94, v95];
    goto LABEL_49;
  }

  if (position != 2)
  {
    v91 = v10;
    v28 = height;
    v29 = width;
    v30 = y;
    v31 = CGRectNull.origin.x;
    if (position != 3)
    {
      goto LABEL_54;
    }

    [(ZWZoomDockedLensViewController *)self dockSize];
    v93 = v96 * v38;
    if (dockPosition == [(ZWZoomDockedLensViewController *)self dockPosition])
    {
      v27 = 0;
      v39 = v97;
    }

    else
    {
      if (dockPosition)
      {
        v48 = v94;
        v47 = v95;
        v49 = v91;
        if (dockPosition == &dword_0 + 2)
        {
          [(ZWZoomDockedLensViewController *)self screenShift];
          v49 = v91 + v92 - v71;
          [(ZWZoomDockedLensViewController *)self dockShift];
          [(ZWZoomDockedLensViewController *)self setDockShift:v92 + v72];
          v27 = 1;
          v39 = v97;
        }

        else
        {
          v39 = v97;
          if (dockPosition == &dword_0 + 1)
          {
            [(ZWZoomDockedLensViewController *)self screenShift];
            v49 = v91 - v50;
            v27 = 1;
          }

          else
          {
            v27 = 0;
          }
        }
      }

      else
      {
        v12 = v12 - v20;
        [(ZWZoomDockedLensViewController *)self dockShift];
        [(ZWZoomDockedLensViewController *)self setDockShift:v20 + v75];
        v27 = 0;
        v39 = v97;
        v48 = v94;
        v47 = v95;
        v49 = v91;
      }

      [(ZWZoomDockedLensViewController *)self screenShift];
      [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:v49, v12 - v77, v48, v47];
    }

    height = v96 - v93;
    dockedViewBottomConstraint3 = [(ZWZoomDockedLensViewController *)self dockedViewBottomConstraint];
    [dockedViewBottomConstraint3 setConstant:0.0];

    dockedViewLeftConstraint3 = [(ZWZoomDockedLensViewController *)self dockedViewLeftConstraint];
    [dockedViewLeftConstraint3 setConstant:0.0];

    dockedViewRightConstraint3 = [(ZWZoomDockedLensViewController *)self dockedViewRightConstraint];
    [dockedViewRightConstraint3 setConstant:0.0];

    dockedViewTopConstraint3 = [(ZWZoomDockedLensViewController *)self dockedViewTopConstraint];
    [dockedViewTopConstraint3 setConstant:v96 - v93];

    toggleZoomRegionButton4 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
    [toggleZoomRegionButton4 makeHorizontal];

    toggleZoomRegionButton5 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
    [toggleZoomRegionButton5 setCenter:{v39 * 0.5, v96 - v93}];

    if (![(ZWZoomLensViewController *)self inStandbyMode])
    {
      v30 = 0.0;
      y = v96 - v93;
      width = v39;
      v31 = 0.0;
      v29 = v39;
      x = 0.0;
      v28 = v93;
      goto LABEL_54;
    }

    toggleZoomRegionButton2 = [(ZWZoomDockedLensViewController *)self dockBackdropLayer];
    v30 = 0.0;
    [toggleZoomRegionButton2 setFrame:{0.0, v93, v39, v93}];
    v65 = 0.0;
    v43 = v39;
    y = v96 - v93;
    goto LABEL_51;
  }

  [(ZWZoomDockedLensViewController *)self dockSize];
  v43 = v97 * v42;
  if (dockPosition == &dword_0 + 3)
  {
    [(ZWZoomDockedLensViewController *)self screenShift];
    v12 = v12 + v56;
    [(ZWZoomDockedLensViewController *)self screenShift];
    v10 = v10 - (v43 - v57);
    v27 = 1;
    height = v96;
  }

  else
  {
    height = v96;
    if (dockPosition == &dword_0 + 1)
    {
      v10 = v10 - v43;
      [(ZWZoomDockedLensViewController *)self dockShift];
      [(ZWZoomDockedLensViewController *)self setDockShift:v53 - v92];
    }

    else if (!dockPosition)
    {
      [(ZWZoomDockedLensViewController *)self screenShift];
      v12 = v12 - v44;
      [(ZWZoomDockedLensViewController *)self screenShift];
      v10 = v10 - (v43 - v45);
      [(ZWZoomDockedLensViewController *)self dockShift];
      [(ZWZoomDockedLensViewController *)self setDockShift:v46 - v20];
      v27 = 1;
      goto LABEL_32;
    }

    v27 = 0;
  }

LABEL_32:
  [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:v10, v12, v94, v95];
  v39 = v97 - v43;
  dockedViewBottomConstraint4 = [(ZWZoomDockedLensViewController *)self dockedViewBottomConstraint];
  [dockedViewBottomConstraint4 setConstant:0.0];

  dockedViewLeftConstraint4 = [(ZWZoomDockedLensViewController *)self dockedViewLeftConstraint];
  [dockedViewLeftConstraint4 setConstant:v97 - v43];

  dockedViewRightConstraint4 = [(ZWZoomDockedLensViewController *)self dockedViewRightConstraint];
  [dockedViewRightConstraint4 setConstant:0.0];

  dockedViewTopConstraint4 = [(ZWZoomDockedLensViewController *)self dockedViewTopConstraint];
  [dockedViewTopConstraint4 setConstant:0.0];

  toggleZoomRegionButton6 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  [toggleZoomRegionButton6 makeVertical];

  toggleZoomRegionButton7 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  [toggleZoomRegionButton7 setCenter:{v97 - v43, height * 0.5}];

  if ([(ZWZoomLensViewController *)self inStandbyMode])
  {
    toggleZoomRegionButton2 = [(ZWZoomDockedLensViewController *)self dockBackdropLayer];
    v30 = 0.0;
    [toggleZoomRegionButton2 setFrame:{v43, 0.0, v43, height}];
    v65 = 0.0;
    v93 = height;
    y = 0.0;
    x = v97 - v43;
LABEL_52:

    width = v39;
    v31 = v65;
    v28 = v93;
    goto LABEL_53;
  }

  v30 = 0.0;
  width = v97 - v43;
  v31 = 0.0;
  v28 = height;
  y = 0.0;
  x = v97 - v43;
LABEL_53:
  v29 = v43;
LABEL_54:
  [(ZWZoomDockedLensViewController *)self _layoutDockUIWithFrames:v27 restOfScreeFrame:x positionOrientationChanged:y, v29, v28, v31, v30, width, height];

  +[CATransaction commit];
}

- (void)setInDockResizingMode:(BOOL)mode
{
  if (self->_inDockResizingMode != mode)
  {
    self->_inDockResizingMode = mode;
    lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
    [lensZoomView setNeedsLayout];
  }
}

- (void)_updateZoomRegionFrameForDockResizeWithScreenShiftDelta:(double)delta
{
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v6 = v5;
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v8 = v7;
  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  zoomReplicatorLayer = [lensZoomView zoomReplicatorLayer];
  [zoomReplicatorLayer frame];
  v12 = v11;
  v14 = v13;

  dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
  if (dockPosition > 1)
  {
    if (dockPosition == 2)
    {
      v37 = fmax(v6 + delta, 0.0);
      view = [(ZWZoomDockedLensViewController *)self view];
      [view bounds];
      v40 = v39;
      dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
      [dockedLensView bounds];
      v6 = v40 - v42 - v12;

      if (v6 >= v37)
      {
        v6 = v37;
      }
    }

    else if (dockPosition == 3)
    {
      dockedLensView2 = [(ZWZoomDockedLensViewController *)self dockedLensView];
      [dockedLensView2 bounds];
      v24 = v23;

      v25 = v24 >= v8 + delta ? v24 : v8 + delta;
      view2 = [(ZWZoomDockedLensViewController *)self view];
      [view2 bounds];
      v28 = v27;
      dockedLensView3 = [(ZWZoomDockedLensViewController *)self dockedLensView];
      [dockedLensView3 bounds];
      v8 = v28 - v30 - v14;

      if (v8 >= v25)
      {
        v8 = v25;
      }
    }
  }

  else if (dockPosition)
  {
    if (dockPosition == 1)
    {
      dockedLensView4 = [(ZWZoomDockedLensViewController *)self dockedLensView];
      [dockedLensView4 bounds];
      v18 = v17;

      v6 = v18 >= v6 + delta ? v18 : v6 + delta;
      view3 = [(ZWZoomDockedLensViewController *)self view];
      [view3 bounds];
      v21 = v20 - v12;

      if (v21 < v6)
      {
        v6 = v21;
      }
    }
  }

  else
  {
    dockedLensView5 = [(ZWZoomDockedLensViewController *)self dockedLensView];
    [dockedLensView5 bounds];
    v33 = v32;

    if (v33 >= v8 + delta)
    {
      v8 = v33;
    }

    else
    {
      v8 = v8 + delta;
    }

    view4 = [(ZWZoomDockedLensViewController *)self view];
    [view4 bounds];
    v36 = v35 - v14;

    if (v36 < v8)
    {
      v8 = v36;
    }
  }

  [(ZWZoomDockedLensViewController *)self setZoomRegionFrame:v6, v8, v12, v14];
}

- (void)resizeDock:(CGSize)dock animated:(BOOL)animated
{
  animatedCopy = animated;
  height = dock.height;
  width = dock.width;
  dockReplicatorLayer = [(ZWZoomDockedLensViewController *)self dockReplicatorLayer];
  dockBackdropLayer = [(ZWZoomDockedLensViewController *)self dockBackdropLayer];
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  v11 = v10;
  v13 = v12;
  view = [(ZWZoomDockedLensViewController *)self view];
  [view bounds];
  v16 = v15;

  view2 = [(ZWZoomDockedLensViewController *)self view];
  [view2 bounds];
  v19 = v18;

  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView bounds];
  v22 = v21;

  dockedLensView2 = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView2 bounds];
  v25 = v24;

  [(ZWZoomDockedLensViewController *)self _maxDockWidth];
  if (width > v26)
  {
    [(ZWZoomDockedLensViewController *)self _maxDockWidth];
    width = v27;
  }

  [(ZWZoomDockedLensViewController *)self _maxDockHeight];
  if (height > v28)
  {
    [(ZWZoomDockedLensViewController *)self _maxDockHeight];
    height = v29;
  }

  if ((vabdd_f64(height, v22) >= 2.22044605e-16 || [(ZWZoomDockedLensViewController *)self dockPosition]&& [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3) && (vabdd_f64(width, v25) >= 2.22044605e-16 || [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 1 && [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 2))
  {
    v166 = width;
    v30 = &PLLogRegisteredEvent_ptr;
    +[CATransaction begin];
    [CATransaction setDisableActions:animatedCopy ^ 1];
    [CATransaction setAnimationDuration:0.35];
    v31 = [CABasicAnimation animationWithKeyPath:@"position"];
    v32 = &PLLogRegisteredEvent_ptr;
    v33 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    [v31 setTimingFunction:v33];

    [v31 setDuration:0.35];
    dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
    v35 = 0;
    v36 = 0.0;
    v167 = v22;
    v169 = v25;
    v165 = v16;
    v161 = v19;
    if (dockPosition > 1)
    {
      if (dockPosition == 2)
      {
        [(ZWZoomDockedLensViewController *)self setDockSize:v166 / v19];
        [(ZWZoomDockedLensViewController *)self dockSize];
        v97 = v19;
        v19 = v19 * v98;
        v168 = v19 - v25;
        dockedViewBottomConstraint = [(ZWZoomDockedLensViewController *)self dockedViewBottomConstraint];
        [dockedViewBottomConstraint setConstant:0.0];

        dockedViewLeftConstraint = [(ZWZoomDockedLensViewController *)self dockedViewLeftConstraint];
        v160 = v97 - v19;
        [dockedViewLeftConstraint setConstant:v97 - v19];

        dockedViewRightConstraint = [(ZWZoomDockedLensViewController *)self dockedViewRightConstraint];
        [dockedViewRightConstraint setConstant:0.0];

        dockedViewTopConstraint = [(ZWZoomDockedLensViewController *)self dockedViewTopConstraint];
        [dockedViewTopConstraint setConstant:0.0];

        v163 = v13;
        v164 = v11;
        v162 = height;
        if (animatedCopy)
        {
          v171[0] = _NSConcreteStackBlock;
          v171[1] = 3221225472;
          v171[2] = __54__ZWZoomDockedLensViewController_resizeDock_animated___block_invoke_3;
          v171[3] = &unk_79090;
          v171[4] = self;
          *&v171[5] = v25;
          *&v171[6] = v167;
          *&v171[7] = v97;
          *&v171[8] = v19;
          *&v171[9] = v16;
          [UIView animateWithDuration:327680 delay:v171 options:0 animations:0.35 completion:0.0];
          dockedBorderView = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView center];
          v105 = v168 * 0.5 + v104;
          dockedBorderView2 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView2 center];
          v107 = [NSValue valueWithCGPoint:v105];
          [v31 setFromValue:v107];

          v30 = &PLLogRegisteredEvent_ptr;
          dockedBorderView3 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView3 center];
          v110 = v168 * 0.5 + v109;
          dockedBorderView4 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView4 center];
          v112 = [NSValue valueWithCGPoint:v110];
          [v31 setToValue:v112];

          v32 = &PLLogRegisteredEvent_ptr;
          dockedBorderView5 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView5 setFrame:{0.0, 0.0, v19, v16}];

          v42 = v97 - v19;
        }

        else
        {
          toggleZoomRegionButton = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
          v42 = v97 - v19;
          [toggleZoomRegionButton setCenter:{v160, v16 * 0.5}];
        }

        touchStealLayer = [(ZWZoomDockedLensViewController *)self touchStealLayer];
        v63 = 0.0;
        [touchStealLayer setFrame:{0.0, 0.0, v42, v16}];
        v36 = 0.0;
LABEL_33:
        v37 = v16;
        v116 = v42;
        v79 = v37;
        v117 = v37;
        goto LABEL_34;
      }

      v168 = 0.0;
      v19 = 0.0;
      v37 = 0.0;
      if (dockPosition != 3)
      {
        goto LABEL_35;
      }

      v164 = v11;
      [(ZWZoomDockedLensViewController *)self setDockSize:height / v16];
      [(ZWZoomDockedLensViewController *)self dockSize];
      v37 = v16 * v56;
      v57 = v16 * v56 - v22;
      dockedViewBottomConstraint2 = [(ZWZoomDockedLensViewController *)self dockedViewBottomConstraint];
      [dockedViewBottomConstraint2 setConstant:0.0];

      dockedViewLeftConstraint2 = [(ZWZoomDockedLensViewController *)self dockedViewLeftConstraint];
      [dockedViewLeftConstraint2 setConstant:0.0];

      dockedViewRightConstraint2 = [(ZWZoomDockedLensViewController *)self dockedViewRightConstraint];
      [dockedViewRightConstraint2 setConstant:0.0];

      dockedViewTopConstraint2 = [(ZWZoomDockedLensViewController *)self dockedViewTopConstraint];
      [dockedViewTopConstraint2 setConstant:v16 - v37];

      v162 = height;
      v163 = v13;
      v168 = v57;
      if (animatedCopy)
      {
        v170[0] = _NSConcreteStackBlock;
        v170[1] = 3221225472;
        v170[2] = __54__ZWZoomDockedLensViewController_resizeDock_animated___block_invoke_4;
        v170[3] = &unk_79090;
        v170[4] = self;
        *&v170[5] = v169;
        *&v170[6] = v22;
        v62 = v57;
        v19 = v161;
        *&v170[7] = v161;
        *&v170[8] = v16;
        *&v170[9] = v37;
        v63 = 0.0;
        [UIView animateWithDuration:327680 delay:v170 options:0 animations:0.35 completion:0.0];
        dockedBorderView6 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView6 center];
        v66 = v65;
        dockedBorderView7 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView7 center];
        v69 = [NSValue valueWithCGPoint:v66, v62 * 0.5 + v68];
        [v31 setFromValue:v69];

        v30 = &PLLogRegisteredEvent_ptr;
        dockedBorderView8 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView8 center];
        v72 = v71;
        dockedBorderView9 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView9 center];
        v75 = [NSValue valueWithCGPoint:v72, v62 * 0.5 + v74];
        [v31 setToValue:v75];

        v32 = &PLLogRegisteredEvent_ptr;
        dockedBorderView10 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView10 setFrame:{0.0, 0.0, v161, v37}];

        v36 = 0.0;
        v42 = v165 - v37;
      }

      else
      {
        v19 = v161;
        toggleZoomRegionButton2 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
        [toggleZoomRegionButton2 setCenter:{v161 * 0.5, v16 - v37}];

        v42 = v16 - v37;
        v63 = 0.0;
      }

      touchStealLayer = [(ZWZoomDockedLensViewController *)self touchStealLayer];
      [touchStealLayer setFrame:{0.0, 0.0, v19, v42}];
      v116 = v19;
      v79 = v42;
    }

    else
    {
      if (dockPosition)
      {
        v168 = 0.0;
        v19 = 0.0;
        v37 = 0.0;
        if (dockPosition != 1)
        {
          goto LABEL_35;
        }

        [(ZWZoomDockedLensViewController *)self setDockSize:v166 / v161];
        [(ZWZoomDockedLensViewController *)self dockSize];
        v19 = v161 * v38;
        v39 = v161 * v38 - v169;
        dockedViewBottomConstraint3 = [(ZWZoomDockedLensViewController *)self dockedViewBottomConstraint];
        [dockedViewBottomConstraint3 setConstant:0.0];

        dockedViewLeftConstraint3 = [(ZWZoomDockedLensViewController *)self dockedViewLeftConstraint];
        [dockedViewLeftConstraint3 setConstant:0.0];

        v42 = v161 - v19;
        dockedViewRightConstraint3 = [(ZWZoomDockedLensViewController *)self dockedViewRightConstraint];
        [dockedViewRightConstraint3 setConstant:-(v161 - v19)];

        dockedViewTopConstraint3 = [(ZWZoomDockedLensViewController *)self dockedViewTopConstraint];
        [dockedViewTopConstraint3 setConstant:0.0];

        v163 = v13;
        v164 = v11;
        v168 = v39;
        v162 = height;
        if (animatedCopy)
        {
          v172[0] = _NSConcreteStackBlock;
          v172[1] = 3221225472;
          v172[2] = __54__ZWZoomDockedLensViewController_resizeDock_animated___block_invoke_2;
          v172[3] = &unk_79068;
          v172[4] = self;
          *&v172[5] = v169;
          *&v172[6] = v167;
          *&v172[7] = v19;
          *&v172[8] = v16;
          [UIView animateWithDuration:327680 delay:v172 options:0 animations:0.35 completion:0.0];
          dockedBorderView11 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView11 center];
          v47 = v46 - v39 * 0.5;
          dockedBorderView12 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView12 center];
          v49 = [NSValue valueWithCGPoint:v47];
          [v31 setFromValue:v49];

          v30 = &PLLogRegisteredEvent_ptr;
          dockedBorderView13 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView13 center];
          v52 = v39 * 0.5 + v51;
          v42 = v161 - v19;
          dockedBorderView14 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView14 center];
          v54 = [NSValue valueWithCGPoint:v52];
          [v31 setToValue:v54];

          v32 = &PLLogRegisteredEvent_ptr;
          dockedBorderView15 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
          [dockedBorderView15 setFrame:{0.0, 0.0, v19, v16}];
        }

        else
        {
          dockedBorderView15 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
          [dockedBorderView15 setCenter:{v19, v16 * 0.5}];
        }

        touchStealLayer = [(ZWZoomDockedLensViewController *)self touchStealLayer];
        v36 = 0.0;
        [touchStealLayer setFrame:{v19, 0.0, v42, v16}];
        v63 = v19;
        goto LABEL_33;
      }

      v162 = height;
      [(ZWZoomDockedLensViewController *)self setDockSize:height / v16];
      [(ZWZoomDockedLensViewController *)self dockSize];
      v37 = v16 * v77;
      v78 = v16 * v77 - v22;
      v79 = v16 - v16 * v77;
      dockedViewBottomConstraint4 = [(ZWZoomDockedLensViewController *)self dockedViewBottomConstraint];
      [dockedViewBottomConstraint4 setConstant:-v79];

      dockedViewLeftConstraint4 = [(ZWZoomDockedLensViewController *)self dockedViewLeftConstraint];
      [dockedViewLeftConstraint4 setConstant:0.0];

      dockedViewRightConstraint4 = [(ZWZoomDockedLensViewController *)self dockedViewRightConstraint];
      [dockedViewRightConstraint4 setConstant:0.0];

      dockedViewTopConstraint4 = [(ZWZoomDockedLensViewController *)self dockedViewTopConstraint];
      [dockedViewTopConstraint4 setConstant:0.0];

      v163 = v13;
      v164 = v11;
      v168 = v78;
      if (animatedCopy)
      {
        v173[0] = _NSConcreteStackBlock;
        v173[1] = 3221225472;
        v173[2] = __54__ZWZoomDockedLensViewController_resizeDock_animated___block_invoke;
        v173[3] = &unk_79068;
        v173[4] = self;
        *&v173[5] = v169;
        *&v173[6] = v22;
        *&v173[7] = v19;
        *&v173[8] = v37;
        [UIView animateWithDuration:327680 delay:v173 options:0 animations:0.35 completion:0.0];
        dockedBorderView16 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView16 center];
        v86 = v85;
        dockedBorderView17 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView17 center];
        v89 = [NSValue valueWithCGPoint:v86, v88 - v78 * 0.5];
        [v31 setFromValue:v89];

        v30 = &PLLogRegisteredEvent_ptr;
        dockedBorderView18 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView18 center];
        v92 = v91;
        dockedBorderView19 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView19 center];
        v95 = [NSValue valueWithCGPoint:v92, v78 * 0.5 + v94];
        [v31 setToValue:v95];

        v32 = &PLLogRegisteredEvent_ptr;
        dockedBorderView20 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
        [dockedBorderView20 setFrame:{0.0, 0.0, v19, v37}];
      }

      else
      {
        dockedBorderView20 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
        [dockedBorderView20 setCenter:{v19 * 0.5, v37}];
      }

      touchStealLayer = [(ZWZoomDockedLensViewController *)self touchStealLayer];
      v63 = 0.0;
      v42 = v79;
      [touchStealLayer setFrame:{0.0, v37, v19, v79}];
      v36 = v37;
      v116 = v19;
    }

    v117 = v19;
LABEL_34:

    v35 = [UIBezierPath bezierPathWithRect:v63, v36, v116, v79];
    v36 = v42 + v42 + v117 * 2.0;
    v13 = v163;
    v11 = v164;
    height = v162;
LABEL_35:
    dockedLensView3 = [(ZWZoomDockedLensViewController *)self dockedLensView];
    [dockedLensView3 bounds];
    v121 = v120;
    v123 = v122;

    dockedLensView4 = [(ZWZoomDockedLensViewController *)self dockedLensView];
    [dockedLensView4 setBounds:{v121, v123, v19, v37}];

    if (height == 0.0 || (v125 = v166, v166 == 0.0) || (v125 = v169, v169 == 0.0) || (v125 = v167, v167 == 0.0))
    {
      [(ZWZoomDockedLensViewController *)self screenShift];
      [(ZWZoomDockedLensViewController *)self shiftScreen:animatedCopy animated:1 discardNewValue:?];
    }

    else
    {
      [(ZWZoomDockedLensViewController *)self screenShift];
      v127 = v126;
      [(ZWZoomDockedLensViewController *)self screenShift];
      [(ZWZoomDockedLensViewController *)self shiftScreen:animatedCopy animated:v168 + v128];
      [(ZWZoomDockedLensViewController *)self screenShift];
      [(ZWZoomDockedLensViewController *)self _updateZoomRegionFrameForDockResizeWithScreenShiftDelta:v129 - v127];
    }

    [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
    v130 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
    [dockReplicatorLayer frame];
    v132 = v131;
    [dockReplicatorLayer frame];
    [dockReplicatorLayer setFrame:v132];
    if (animatedCopy)
    {
      dockedBorderView21 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
      [dockedBorderView21 addAnimation:v31 forKey:@"position"];

      if ([(ZWZoomDockedLensViewController *)self dockPosition]== &dword_0 + 2 || [(ZWZoomDockedLensViewController *)self dockPosition]== &dword_0 + 3)
      {
        v134 = [CABasicAnimation animationWithKeyPath:@"position"];
        [v134 setDuration:0.35];
        v135 = [v32[327] functionWithName:kCAMediaTimingFunctionDefault];
        [v134 setTimingFunction:v135];

        dockBackdropLayer2 = [(ZWZoomDockedLensViewController *)self dockBackdropLayer];
        [dockBackdropLayer2 position];

        if ([(ZWZoomDockedLensViewController *)self dockPosition]== &dword_0 + 3)
        {
          v137 = v161 * 0.5;
          dockBackdropLayer3 = [(ZWZoomDockedLensViewController *)self dockBackdropLayer];
          [dockBackdropLayer3 position];
          v140 = v139;
        }

        else
        {
          dockBackdropLayer3 = [(ZWZoomDockedLensViewController *)self dockBackdropLayer];
          [dockBackdropLayer3 position];
          v137 = v142;
          v140 = v165 * 0.5;
        }

        v140 = [NSValue valueWithCGPoint:v137, v140];
        [v134 setFromValue:v140];

        v144 = v169 + v137 - v19;
        v145 = v167 + v140 - v37;
        v145 = [NSValue valueWithCGPoint:v144, v145];
        [v134 setToValue:v145];

        [dockBackdropLayer setPosition:{v144, v145}];
        v147 = @"position";
        v148 = dockBackdropLayer;
        v149 = v134;
      }

      else
      {
        v134 = [CABasicAnimation animationWithKeyPath:@"backdropRect"];
        [v134 setDuration:0.35];
        v150 = [v32[327] functionWithName:kCAMediaTimingFunctionDefault];
        [v134 setTimingFunction:v150];

        [dockBackdropLayer backdropRect];
        v151 = [NSValue valueWithCGRect:?];
        [v134 setFromValue:v151];

        v152 = [NSValue valueWithCGRect:0.0, 0.0, v19, v37];
        [v134 setToValue:v152];

        [dockBackdropLayer setBackdropRect:{0.0, 0.0, v19, v37}];
        [dockBackdropLayer backdropRect];
        [dockBackdropLayer setFrame:?];
        v148 = dockBackdropLayer;
        v149 = v134;
        v147 = @"backdropRect";
      }

      [v148 addAnimation:v149 forKey:v147];
    }

    else
    {
      [(ZWZoomDockedLensViewController *)self dockShift];
      [(ZWZoomDockedLensViewController *)self shiftDock:v168 + v141];
      [dockBackdropLayer setBackdropRect:{0.0, 0.0, v19, v37}];
    }

    [v35 appendPath:v130];
    [v30[331] setDisableActions:1];
    maskLayer = [(ZWZoomDockedLensViewController *)self maskLayer];
    [maskLayer setStrokeStart:v36 / (v13 + v13 + v11 * 2.0 + -8.58407346 + v36)];

    cGPath = [v35 CGPath];
    maskLayer2 = [(ZWZoomDockedLensViewController *)self maskLayer];
    [maskLayer2 setPath:cGPath];

    [(ZWZoomDockedLensViewController *)self dockSize];
    if (v156 > 0.0)
    {
      [(ZWZoomDockedLensViewController *)self dockSize];
      v158 = v157;
      v159 = +[ZWCoalescedSettings sharedInstance];
      [v159 setDockSize:v158];
    }

    [v30[331] commit];
  }
}

void __54__ZWZoomDockedLensViewController_resizeDock_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) dockedBorderView];
  [v5 setFrame:{0.0, 0.0, v3, v4}];

  v6 = *(a1 + 64);
  v7 = *(a1 + 56) * 0.5;
  v8 = [*(a1 + 32) toggleZoomRegionButton];
  [v8 setCenter:{v7, v6}];
}

void __54__ZWZoomDockedLensViewController_resizeDock_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) dockedBorderView];
  [v5 setFrame:{0.0, 0.0, v3, v4}];

  v6 = *(a1 + 56);
  v7 = *(a1 + 64) * 0.5;
  v8 = [*(a1 + 32) toggleZoomRegionButton];
  [v8 setCenter:{v6, v7}];
}

void __54__ZWZoomDockedLensViewController_resizeDock_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) dockedBorderView];
  [v5 setFrame:{0.0, 0.0, v3, v4}];

  v6 = *(a1 + 56) - *(a1 + 64);
  v7 = *(a1 + 72) * 0.5;
  v8 = [*(a1 + 32) toggleZoomRegionButton];
  [v8 setCenter:{v6, v7}];
}

void __54__ZWZoomDockedLensViewController_resizeDock_animated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) dockedBorderView];
  [v5 setFrame:{0.0, 0.0, v3, v4}];

  v6 = *(a1 + 56) * 0.5;
  v7 = *(a1 + 64) - *(a1 + 72);
  v8 = [*(a1 + 32) toggleZoomRegionButton];
  [v8 setCenter:{v6, v7}];
}

- (double)_maxDockWidth
{
  if ([(ZWZoomDockedLensViewController *)self dockPosition]&& [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
  {
    view = [(ZWZoomDockedLensViewController *)self view];
    [view bounds];
    v5 = v6 * 0.5;
  }

  else
  {
    view = [(ZWZoomDockedLensViewController *)self view];
    [view bounds];
    v5 = v4;
  }

  return v5;
}

- (double)_maxDockHeight
{
  if ([(ZWZoomDockedLensViewController *)self dockPosition]&& [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
  {
    view = [(ZWZoomDockedLensViewController *)self view];
    [view bounds];
    v5 = v6;
  }

  else
  {
    view = [(ZWZoomDockedLensViewController *)self view];
    [view bounds];
    v5 = v4 * 0.5;
  }

  return v5;
}

- (id)stringForCurrentDockPosition
{
  dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
  if (dockPosition <= 3)
  {
    v3 = **(&off_790B0 + dockPosition);
  }

  return v3;
}

- (void)_toggleVisibilityButtonWasLongPressed
{
  dockedDelegate = [(ZWZoomDockedLensViewController *)self dockedDelegate];
  toggleZoomRegionButton = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  [dockedDelegate dockedLensViewController:self toggleButtonDidReceiveLongPress:toggleZoomRegionButton];
}

- (CGPoint)maximumPanOffsetWithZoomFactor:(double)factor
{
  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
  [lensZoomView bounds];
  v7 = v6;
  v9 = v8;

  lensZoomView2 = [(ZWZoomLensViewController *)self lensZoomView];
  [lensZoomView2 sampledContentSizeWithZoomFactor:factor];
  v12 = v11;
  v14 = v13;

  v15 = (v7 - v12) * 0.5;
  v16 = (v9 - v14) * 0.5;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)deltaForDockedZoomMovementToRect:(CGRect)rect
{
  dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
  if (dockPosition > 1)
  {
    if (dockPosition == 2 || dockPosition == 3)
    {
      dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
      [dockedLensView bounds];
      [(ZWZoomDockedLensViewController *)self screenShift];
    }
  }

  else if (dockPosition <= 1)
  {
    [(ZWZoomDockedLensViewController *)self screenShift];
  }

  AX_CGRectGetCenter();
  v7 = v6;
  v9 = v8;
  [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
  AX_CGRectGetCenter();
  v11 = v7 - v10;
  v13 = v9 - v12;
  if ([(ZWZoomDockedLensViewController *)self dockPosition]&& [(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
  {
    [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
    v23 = v22;
    view = [(ZWZoomDockedLensViewController *)self view];
    [view bounds];
    v26 = v25;

    dockedLensView2 = [(ZWZoomDockedLensViewController *)self dockedLensView];
    [dockedLensView2 bounds];
    v29 = v28;

    v11 = v11 / (v29 / (v26 - v29 - v23) + 1.0);
  }

  else
  {
    [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
    v15 = v14;
    view2 = [(ZWZoomDockedLensViewController *)self view];
    [view2 bounds];
    v18 = v17;

    dockedLensView3 = [(ZWZoomDockedLensViewController *)self dockedLensView];
    [dockedLensView3 bounds];
    v21 = v20;

    v13 = v13 / (v21 / (v18 - v21 - v15) + 1.0);
  }

  v30 = v11;
  v31 = v13;
  result.y = v31;
  result.x = v30;
  return result;
}

- (CGPoint)_lensDragMultiplier
{
  v2 = 1.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)frameForResizeDrag
{
  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [dockedLensView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = ZWZoomLensBorderThicknessForTouches();
  dockPosition = [(ZWZoomDockedLensViewController *)self dockPosition];
  if (dockPosition <= 1)
  {
    if (dockPosition)
    {
      if (dockPosition == 1)
      {
        v20.origin.x = v5;
        v20.origin.y = v7;
        v20.size.width = v9;
        v20.size.height = v11;
        MaxX = CGRectGetMaxX(v20);
LABEL_11:
        v5 = MaxX - v12;
        v9 = v12 + v12;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    MaxY = CGRectGetMaxY(v22);
LABEL_9:
    v7 = MaxY - v12;
    v11 = v12 + v12;
    goto LABEL_12;
  }

  if (dockPosition == 2)
  {
    v23.origin.x = v5;
    v23.origin.y = v7;
    v23.size.width = v9;
    v23.size.height = v11;
    MaxX = CGRectGetMinX(v23);
    goto LABEL_11;
  }

  if (dockPosition == 3)
  {
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    MaxY = CGRectGetMinY(v21);
    goto LABEL_9;
  }

LABEL_12:
  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  panGestureRecognizer = [draggingCopy panGestureRecognizer];
  view = [(ZWZoomDockedLensViewController *)self view];
  [panGestureRecognizer locationInView:view];
  v8 = v7;
  v10 = v9;

  view2 = [(ZWZoomDockedLensViewController *)self view];
  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [view2 convertPoint:dockedLensView toView:{v8, v10}];
  v14 = v13;
  v16 = v15;

  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    toggleZoomRegionButton = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
    [toggleZoomRegionButton frame];
    v22.x = v8;
    v22.y = v10;
    if (CGRectContainsPoint(v25, v22))
    {
    }

    else
    {
      [(ZWZoomDockedLensViewController *)self frameForResizeDrag];
      v23.x = v8;
      v23.y = v10;
      v18 = CGRectContainsPoint(v26, v23);

      if (v18)
      {
        dockedDelegate = [(ZWZoomDockedLensViewController *)self dockedDelegate];
        [dockedDelegate handleWasDraggedWithDockedLensViewController:self];

        v21.receiver = self;
        v21.super_class = ZWZoomDockedLensViewController;
        [(ZWZoomLensViewController *)&v21 scrollViewWillBeginDragging:draggingCopy];
        goto LABEL_10;
      }
    }
  }

  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    if ([(ZWZoomDockedLensViewController *)self zoomRegionVisible])
    {
      [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
      v24.x = v14;
      v24.y = v16;
      if (CGRectContainsPoint(v27, v24))
      {
        v20.receiver = self;
        v20.super_class = ZWZoomDockedLensViewController;
        [(ZWZoomLensViewController *)&v20 scrollViewWillBeginDragging:draggingCopy];
        self->_lastScrollPoint.x = v8;
        self->_lastScrollPoint.y = v10;
      }
    }
  }

LABEL_10:
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  panGestureRecognizer = [scrollCopy panGestureRecognizer];
  view = [(ZWZoomDockedLensViewController *)self view];
  [panGestureRecognizer locationInView:view];
  v8 = v7;
  v10 = v9;

  if ([(ZWZoomLensViewController *)self inStandbyMode]|| ![(ZWZoomDockedLensViewController *)self isInDockResizingMode])
  {
    if (![(ZWZoomLensViewController *)self inStandbyMode])
    {
      if ([(ZWZoomDockedLensViewController *)self zoomRegionVisible])
      {
        [(ZWZoomDockedLensViewController *)self zoomRegionFrame];
        v24.x = v8;
        v24.y = v10;
        if (CGRectContainsPoint(v25, v24))
        {
          v22.receiver = self;
          v22.super_class = ZWZoomDockedLensViewController;
          [(ZWZoomLensViewController *)&v22 scrollViewDidScroll:scrollCopy];
          panGestureRecognizer2 = [scrollCopy panGestureRecognizer];
          view2 = [(ZWZoomDockedLensViewController *)self view];
          [panGestureRecognizer2 locationInView:view2];
          v14 = v13;
          v16 = v15;

          x = self->_lastScrollPoint.x;
          y = self->_lastScrollPoint.y;
          +[CATransaction begin];
          [CATransaction setDisableActions:1];
          if ([(ZWZoomDockedLensViewController *)self _zoomRegionOnDockReplicatorEdge])
          {
            v19 = v16 - y;
            if ([(ZWZoomDockedLensViewController *)self dockPosition])
            {
              v20 = v14 - x;
              if ([(ZWZoomDockedLensViewController *)self dockPosition]!= &dword_0 + 3)
              {
                v19 = v20;
              }
            }

            [(ZWZoomDockedLensViewController *)self dockShift];
            [(ZWZoomDockedLensViewController *)self shiftDock:v19 + v21];
          }

          +[CATransaction commit];
          self->_lastScrollPoint.x = v14;
          self->_lastScrollPoint.y = v16;
        }
      }
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = ZWZoomDockedLensViewController;
    [(ZWZoomLensViewController *)&v23 scrollViewDidScroll:scrollCopy];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  if (![(ZWZoomLensViewController *)self inStandbyMode]&& ([(ZWZoomDockedLensViewController *)self isInDockResizingMode]|| [(ZWZoomDockedLensViewController *)self zoomRegionVisible]))
  {
    v8.receiver = self;
    v8.super_class = ZWZoomDockedLensViewController;
    [(ZWZoomLensViewController *)&v8 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
    dockedDelegate = [(ZWZoomDockedLensViewController *)self dockedDelegate];
    [dockedDelegate doneResizingDockWithDockedLensViewController:self];

    [(ZWZoomDockedLensViewController *)self zoomMovementDidEnd];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  if (![(ZWZoomLensViewController *)self inStandbyMode]&& ([(ZWZoomDockedLensViewController *)self zoomRegionVisible]|| [(ZWZoomDockedLensViewController *)self isInDockResizingMode]))
  {
    v5.receiver = self;
    v5.super_class = ZWZoomDockedLensViewController;
    [(ZWZoomLensViewController *)&v5 scrollViewDidEndDecelerating:deceleratingCopy];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  view = [(ZWZoomDockedLensViewController *)self view];
  [recognizerCopy locationInView:view];
  v10 = v9;
  v12 = v11;

  view2 = [(ZWZoomDockedLensViewController *)self view];
  dockedLensView = [(ZWZoomDockedLensViewController *)self dockedLensView];
  [view2 convertPoint:dockedLensView toView:{v10, v12}];
  v16 = v15;
  v18 = v17;

  [(ZWZoomDockedLensViewController *)self frameForResizeDrag];
  v23.x = v16;
  v23.y = v18;
  if (CGRectContainsPoint(v24, v23))
  {
    v19 = 0;
  }

  else
  {
    view3 = [touchCopy view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v19 = isKindOfClass ^ 1;
  }

  return v19 & 1;
}

- (id)zoomRootview:(id)rootview viewForHitTestAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  rootviewCopy = rootview;
  toggleZoomRegionButton = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  toggleZoomRegionButton2 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  [rootviewCopy convertPoint:toggleZoomRegionButton2 toView:{x, y}];
  v10 = [toggleZoomRegionButton hitTest:0 withEvent:?];

  if (v10)
  {
    toggleZoomRegionButton3 = [(ZWZoomDockedLensViewController *)self toggleZoomRegionButton];
  }

  else
  {
    dockedBorderView = [(ZWZoomDockedLensViewController *)self dockedBorderView];
    dockedBorderView2 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
    [rootviewCopy convertPoint:dockedBorderView2 toView:{x, y}];
    v14 = [dockedBorderView hitTest:0 withEvent:?];

    if (v14)
    {
      toggleZoomRegionButton3 = [(ZWZoomDockedLensViewController *)self dockedBorderView];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = ZWZoomDockedLensViewController;
      toggleZoomRegionButton3 = [(ZWZoomLensViewController *)&v17 zoomRootview:rootviewCopy viewForHitTestAtPoint:x, y];
    }
  }

  v15 = toggleZoomRegionButton3;

  return v15;
}

- (ZWZoomDockedLensViewControllerDelegate)dockedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dockedDelegate);

  return WeakRetained;
}

- (CGRect)zoomRegionFrame
{
  x = self->_zoomRegionFrame.origin.x;
  y = self->_zoomRegionFrame.origin.y;
  width = self->_zoomRegionFrame.size.width;
  height = self->_zoomRegionFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end