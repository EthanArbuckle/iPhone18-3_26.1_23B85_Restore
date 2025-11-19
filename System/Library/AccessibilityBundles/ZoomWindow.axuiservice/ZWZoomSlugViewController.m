@interface ZWZoomSlugViewController
+ (double)longPressDurationForStandByMode:(BOOL)a3;
- (BOOL)_panGestureIsRecognizing;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGPoint)deltaFromInitialTouch;
- (CGPoint)deltaFromLastPanEvent;
- (CGPoint)offsetForAutopanner:(id)a3;
- (CGRect)foreheadRect;
- (CGRect)slugRingViewBoundsInScreenCoordinates;
- (ZWZoomSlugViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ZWZoomSlugViewControllerDelegate)delegate;
- (void)_didBeginInteractingWithSlug;
- (void)_didFinishInteractingWithSlug;
- (void)_dimAfterDelay;
- (void)_handleDoubleTap:(id)a3;
- (void)_handleLongPress:(id)a3;
- (void)_handlePan:(id)a3;
- (void)_handleSingleTap:(id)a3;
- (void)_handleTripleTap:(id)a3;
- (void)_updateAccessibilityHint;
- (void)_updateControllerColor;
- (void)_updateControllerThickness;
- (void)_updateGestures;
- (void)_updateRingAndTriangleVisiblity:(BOOL)a3;
- (void)_updateSlugAppearanceForMode:(unint64_t)a3;
- (void)_updateSlugDimStatus:(BOOL)a3 Animated:(BOOL)a4;
- (void)dealloc;
- (void)loadView;
- (void)setShouldHideWhileOrbing:(BOOL)a3;
- (void)systemApertureLayoutDidChange:(id)a3;
- (void)updateIdleSlugOpacityAndPreviewImmediately:(double)a3;
- (void)updateLongPressDuration:(double)a3;
- (void)updateUIForSpeakFingerStateChange;
- (void)userInteractionHasBecomeActiveWithFirstTouchAtLocation:(CGPoint)a3;
- (void)userInteractionHasBecomeIdle;
- (void)wakeSlug;
@end

@implementation ZWZoomSlugViewController

- (ZWZoomSlugViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = ZWZoomSlugViewController;
  v8 = [(ZWZoomSlugViewController *)&v34 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    [v9 zoomIdleSlugOpacity];
    [v8 setIdleSlugOpacity:?];

    v10 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [v8 setDimTimer:v10];

    v8[92] = 1;
    v8[91] = 1;
    v11 = objc_alloc_init(SBSSystemApertureLayoutMonitor);
    v12 = *(v8 + 6);
    *(v8 + 6) = v11;

    [*(v8 + 6) addObserver:v8];
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    objc_initWeak(&location, v8);
    v13 = +[AXSettings sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke;
    v31[3] = &unk_78CD8;
    objc_copyWeak(&v32, &location);
    [v13 registerUpdateBlock:v31 forRetrieveSelector:"zoomSlugSingleTapAction" withListener:v8];

    objc_destroyWeak(&v32);
    v14 = +[AXSettings sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke_2;
    v29[3] = &unk_78CD8;
    objc_copyWeak(&v30, &location);
    [v14 registerUpdateBlock:v29 forRetrieveSelector:"zoomSlugDoubleTapAction" withListener:v8];

    objc_destroyWeak(&v30);
    v15 = +[AXSettings sharedInstance];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke_3;
    v27[3] = &unk_78CD8;
    objc_copyWeak(&v28, &location);
    [v15 registerUpdateBlock:v27 forRetrieveSelector:"zoomSlugTripleTapAction" withListener:v8];

    objc_destroyWeak(&v28);
    v16 = +[AXSettings sharedInstance];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke_4;
    v25[3] = &unk_78CD8;
    objc_copyWeak(&v26, &location);
    [v16 registerUpdateBlock:v25 forRetrieveSelector:"zoomSlugTapAndSlideToAdjustZoomLevelEnabled" withListener:v8];

    objc_destroyWeak(&v26);
    v17 = +[AXSettings sharedInstance];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke_5;
    v23 = &unk_78CD8;
    objc_copyWeak(&v24, &location);
    [v17 registerUpdateBlock:&v20 forRetrieveSelector:"zoomControllerColor" withListener:v8];

    objc_destroyWeak(&v24);
    v18 = [NSNotificationCenter defaultCenter:v20];
    [v18 addObserver:v8 selector:"_updateControllerThickness" name:kAXSEnhanceTextLegibilityChangedNotification object:0];

    objc_destroyWeak(&location);
  }

  return v8;
}

void __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateGestures];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateAccessibilityHint];
}

void __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateGestures];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateAccessibilityHint];
}

void __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateGestures];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateAccessibilityHint];
}

void __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateGestures];
}

void __51__ZWZoomSlugViewController_initWithNibName_bundle___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateControllerColor];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ZWZoomSlugViewController;
  [(ZWZoomSlugViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [ZWSlugBackgroundView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(ZWSlugBackgroundView *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWSlugBackgroundView *)v7 setSemanticContentAttribute:2];
  [(ZWSlugBackgroundView *)v7 setAccessibilityIgnoresInvertColors:1];
  [(ZWSlugBackgroundView *)v7 setDelegate:self];
  [(ZWZoomSlugViewController *)self setView:v7];
  v8 = [(ZWZoomSlugViewController *)self view];
  [v8 setHidden:1];

  v9 = [[ZWSlugCollapsingRingView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWSlugBackgroundView *)v7 addSubview:v9];
  [(ZWZoomSlugViewController *)self setSlugRingView:v9];
  v10 = [[ZWSlugCirclePivotingView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWSlugBackgroundView *)v7 addSubview:v10];
  [(ZWZoomSlugViewController *)self setCirclePivotingView:v10];
  v82 = [[ZWSlugTriangleView alloc] initWithTriangle:3];
  [(ZWSlugBackgroundView *)v7 addSubview:v82];
  [(ZWZoomSlugViewController *)self setLeftTriangleView:v82];
  v79 = [[ZWSlugTriangleView alloc] initWithTriangle:1];
  [(ZWSlugBackgroundView *)v7 addSubview:v79];
  [(ZWZoomSlugViewController *)self setRightTriangleView:v79];
  v80 = [[ZWSlugTriangleView alloc] initWithTriangle:2];
  [(ZWSlugBackgroundView *)v7 addSubview:v80];
  [(ZWZoomSlugViewController *)self setBottomTriangleView:v80];
  v81 = [[ZWSlugTriangleView alloc] initWithTriangle:0];
  [(ZWSlugBackgroundView *)v7 addSubview:v81];
  [(ZWZoomSlugViewController *)self setTopTriangleView:v81];
  [(ZWSlugBackgroundView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [NSLayoutConstraint constraintWithItem:v7 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:150.0];
  [(ZWSlugBackgroundView *)v7 addConstraint:v11];

  v12 = [NSLayoutConstraint constraintWithItem:v7 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:150.0];
  [(ZWSlugBackgroundView *)v7 addConstraint:v12];

  LODWORD(v13) = 1148846080;
  [(ZWSlugBackgroundView *)v7 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(ZWSlugBackgroundView *)v7 setContentCompressionResistancePriority:1 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [(ZWSlugBackgroundView *)v7 setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(ZWSlugBackgroundView *)v7 setContentHuggingPriority:1 forAxis:v16];
  [(ZWSlugCollapsingRingView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v17) = 1148846080;
  [(ZWSlugCollapsingRingView *)v9 setContentCompressionResistancePriority:0 forAxis:v17];
  LODWORD(v18) = 1148846080;
  [(ZWSlugCollapsingRingView *)v9 setContentCompressionResistancePriority:1 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [(ZWSlugCollapsingRingView *)v9 setContentHuggingPriority:0 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [(ZWSlugCollapsingRingView *)v9 setContentHuggingPriority:1 forAxis:v20];
  v21 = [NSLayoutConstraint constraintWithItem:v9 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:60.0];
  [(ZWZoomSlugViewController *)self setCollapsingRingWidthConstraint:v21];

  v22 = [NSLayoutConstraint constraintWithItem:v9 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:60.0];
  [(ZWZoomSlugViewController *)self setCollapsingRingHeightConstraint:v22];

  v23 = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
  v84[0] = v23;
  v24 = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
  v84[1] = v24;
  v25 = [NSLayoutConstraint constraintWithItem:v9 attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  v84[2] = v25;
  v26 = [NSLayoutConstraint constraintWithItem:v9 attribute:10 relatedBy:0 toItem:v7 attribute:10 multiplier:1.0 constant:0.0];
  v84[3] = v26;
  v27 = [NSArray arrayWithObjects:v84 count:4];
  [(ZWSlugBackgroundView *)v7 addConstraints:v27];

  [(ZWSlugCirclePivotingView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v28) = 1148846080;
  [(ZWSlugCirclePivotingView *)v10 setContentCompressionResistancePriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [(ZWSlugCirclePivotingView *)v10 setContentCompressionResistancePriority:1 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [(ZWSlugCirclePivotingView *)v10 setContentHuggingPriority:0 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [(ZWSlugCirclePivotingView *)v10 setContentHuggingPriority:1 forAxis:v31];
  v32 = [NSLayoutConstraint constraintWithItem:v10 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:16.0];
  [(ZWZoomSlugViewController *)self setCirclePivotWidthConstraint:v32];

  v33 = [NSLayoutConstraint constraintWithItem:v10 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:16.0];
  [(ZWZoomSlugViewController *)self setCirclePivotHeightConstraint:v33];

  v34 = [NSLayoutConstraint constraintWithItem:v10 attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [(ZWZoomSlugViewController *)self setCirclePivotOffsetXConstraint:v34];

  v35 = [NSLayoutConstraint constraintWithItem:v10 attribute:10 relatedBy:0 toItem:v7 attribute:10 multiplier:1.0 constant:0.0];
  [(ZWZoomSlugViewController *)self setCirclePivotOffsetYConstraint:v35];

  v36 = [(ZWZoomSlugViewController *)self circlePivotWidthConstraint];
  v83[0] = v36;
  v37 = [(ZWZoomSlugViewController *)self circlePivotHeightConstraint];
  v83[1] = v37;
  v38 = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
  v83[2] = v38;
  v39 = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
  v83[3] = v39;
  v40 = [NSArray arrayWithObjects:v83 count:4];
  [(ZWSlugBackgroundView *)v7 addConstraints:v40];

  [(ZWSlugTriangleView *)v81 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v41) = 1148846080;
  [(ZWSlugTriangleView *)v81 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [(ZWSlugTriangleView *)v81 setContentCompressionResistancePriority:1 forAxis:v42];
  LODWORD(v43) = 1148846080;
  [(ZWSlugTriangleView *)v81 setContentHuggingPriority:0 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [(ZWSlugTriangleView *)v81 setContentHuggingPriority:1 forAxis:v44];
  v45 = [NSLayoutConstraint constraintWithItem:v81 attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [(ZWSlugBackgroundView *)v7 addConstraint:v45];

  v46 = [NSLayoutConstraint constraintWithItem:v81 attribute:10 relatedBy:0 toItem:v7 attribute:10 multiplier:1.0 constant:-20.0];
  [(ZWZoomSlugViewController *)self setTopTriangleRadiusDistanceConstraint:v46];

  v47 = [(ZWZoomSlugViewController *)self topTriangleRadiusDistanceConstraint];
  [(ZWSlugBackgroundView *)v7 addConstraint:v47];

  [(ZWSlugTriangleView *)v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v48) = 1148846080;
  [(ZWSlugTriangleView *)v80 setContentCompressionResistancePriority:0 forAxis:v48];
  LODWORD(v49) = 1148846080;
  [(ZWSlugTriangleView *)v80 setContentCompressionResistancePriority:1 forAxis:v49];
  LODWORD(v50) = 1148846080;
  [(ZWSlugTriangleView *)v80 setContentHuggingPriority:0 forAxis:v50];
  LODWORD(v51) = 1148846080;
  [(ZWSlugTriangleView *)v80 setContentHuggingPriority:1 forAxis:v51];
  v52 = [NSLayoutConstraint constraintWithItem:v80 attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [(ZWSlugBackgroundView *)v7 addConstraint:v52];

  v53 = [NSLayoutConstraint constraintWithItem:v80 attribute:10 relatedBy:0 toItem:v7 attribute:10 multiplier:1.0 constant:20.0];
  [(ZWZoomSlugViewController *)self setBottomTriangleRadiusDistanceConstraint:v53];

  v54 = [(ZWZoomSlugViewController *)self bottomTriangleRadiusDistanceConstraint];
  [(ZWSlugBackgroundView *)v7 addConstraint:v54];

  [(ZWSlugTriangleView *)v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v55) = 1148846080;
  [(ZWSlugTriangleView *)v82 setContentCompressionResistancePriority:0 forAxis:v55];
  LODWORD(v56) = 1148846080;
  [(ZWSlugTriangleView *)v82 setContentCompressionResistancePriority:1 forAxis:v56];
  LODWORD(v57) = 1148846080;
  [(ZWSlugTriangleView *)v82 setContentHuggingPriority:0 forAxis:v57];
  LODWORD(v58) = 1148846080;
  [(ZWSlugTriangleView *)v82 setContentHuggingPriority:1 forAxis:v58];
  v59 = [NSLayoutConstraint constraintWithItem:v82 attribute:10 relatedBy:0 toItem:v7 attribute:10 multiplier:1.0 constant:0.0];
  [(ZWSlugBackgroundView *)v7 addConstraint:v59];

  v60 = [NSLayoutConstraint constraintWithItem:v82 attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:-20.0];
  [(ZWZoomSlugViewController *)self setLeftTriangleRadiusDistanceConstraint:v60];

  v61 = [(ZWZoomSlugViewController *)self leftTriangleRadiusDistanceConstraint];
  [(ZWSlugBackgroundView *)v7 addConstraint:v61];

  [(ZWSlugTriangleView *)v79 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v62) = 1148846080;
  [(ZWSlugTriangleView *)v79 setContentCompressionResistancePriority:0 forAxis:v62];
  LODWORD(v63) = 1148846080;
  [(ZWSlugTriangleView *)v79 setContentCompressionResistancePriority:1 forAxis:v63];
  LODWORD(v64) = 1148846080;
  [(ZWSlugTriangleView *)v79 setContentHuggingPriority:0 forAxis:v64];
  LODWORD(v65) = 1148846080;
  [(ZWSlugTriangleView *)v79 setContentHuggingPriority:1 forAxis:v65];
  v66 = [NSLayoutConstraint constraintWithItem:v79 attribute:10 relatedBy:0 toItem:v7 attribute:10 multiplier:1.0 constant:0.0];
  [(ZWSlugBackgroundView *)v7 addConstraint:v66];

  v67 = [NSLayoutConstraint constraintWithItem:v79 attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:20.0];
  [(ZWZoomSlugViewController *)self setRightTriangleRadiusDistanceConstraint:v67];

  v68 = [(ZWZoomSlugViewController *)self rightTriangleRadiusDistanceConstraint];
  [(ZWSlugBackgroundView *)v7 addConstraint:v68];

  v69 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleLongPress:"];
  v70 = [(ZWZoomSlugViewController *)self view];
  [v70 addGestureRecognizer:v69];

  [(ZWZoomSlugViewController *)self setLongPressGesture:v69];
  [v69 setDelegate:self];
  +[ZWZoomSlugViewController standByLongPressDuration];
  [v69 setMinimumPressDuration:?];
  [(ZWZoomSlugViewController *)self setLongPress:v69];
  v71 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTripleTap:"];
  [v71 setNumberOfTapsRequired:3];
  v72 = [(ZWZoomSlugViewController *)self view];
  [v72 addGestureRecognizer:v71];

  [(ZWZoomSlugViewController *)self setTripleTapGesture:v71];
  [v71 setDelegate:self];
  v73 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDoubleTap:"];
  [v73 setNumberOfTapsRequired:2];
  v74 = [(ZWZoomSlugViewController *)self view];
  [v74 addGestureRecognizer:v73];

  [(ZWZoomSlugViewController *)self setDoubleTapGesture:v73];
  [v73 setDelegate:self];
  [v73 requireGestureRecognizerToFail:v71];
  v75 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleSingleTap:"];
  v76 = [(ZWZoomSlugViewController *)self view];
  [v76 addGestureRecognizer:v75];

  [(ZWZoomSlugViewController *)self setSingleTapGesture:v75];
  [v75 setDelegate:self];
  [v75 requireGestureRecognizerToFail:v73];
  [v75 requireGestureRecognizerToFail:v71];
  v77 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"_handlePan:"];
  v78 = [(ZWZoomSlugViewController *)self view];
  [v78 addGestureRecognizer:v77];

  [(ZWZoomSlugViewController *)self setPanGesture:v77];
  [v77 setDelegate:self];
  [(ZWZoomSlugViewController *)self _updateGestures];
  [(ZWZoomSlugViewController *)self _dimAfterDelay];
  [(ZWZoomSlugViewController *)self _updateControllerColor];
  [(ZWZoomSlugViewController *)self _updateControllerThickness];
  [(ZWZoomSlugViewController *)self _updateAccessibilityHint];
}

- (CGRect)slugRingViewBoundsInScreenCoordinates
{
  v2 = [(ZWZoomSlugViewController *)self slugRingView];
  [v2 zw_convertBoundsToScreenCoordinates];
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

- (void)updateLongPressDuration:(double)a3
{
  v4 = [(ZWZoomSlugViewController *)self longPress];
  [v4 setMinimumPressDuration:a3];
}

+ (double)longPressDurationForStandByMode:(BOOL)a3
{
  if (a3)
  {
    [a1 standByLongPressDuration];
  }

  else
  {
    [a1 zoomedInLongPressDuration];
  }

  return result;
}

- (void)setShouldHideWhileOrbing:(BOOL)a3
{
  if (self->_shouldHideWhileOrbing != a3)
  {
    v3 = a3;
    self->_shouldHideWhileOrbing = a3;
    [ZWZoomSlugViewController _updateSlugDimStatus:"_updateSlugDimStatus:Animated:" Animated:?];
    if (v3)
    {
      if (![(ZWZoomSlugViewController *)self isOrbPanning])
      {
        [(ZWZoomSlugViewController *)self setAllGesturesEnabled:0];
      }

      [(ZWZoomSlugViewController *)self _updateSlugAppearanceForMode:0];
    }

    else
    {
      [(ZWZoomSlugViewController *)self setAllGesturesEnabled:1];

      [(ZWZoomSlugViewController *)self _dimAfterDelay];
    }
  }
}

- (CGRect)foreheadRect
{
  x = self->_foreheadRect.origin.x;
  y = self->_foreheadRect.origin.y;
  width = self->_foreheadRect.size.width;
  height = self->_foreheadRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateSlugAppearanceForMode:(unint64_t)a3
{
  if ([(ZWZoomSlugViewController *)self slugAppearanceState]!= a3)
  {
    if (a3 == 2)
    {
      v36 = +[AXSettings sharedInstance];
      v37 = [v36 zoomAutopannerShouldPanWithAcceleration];

      if (v37)
      {
        v38 = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
        [v38 setConstant:150.0];

        v39 = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
        [v39 setConstant:150.0];
      }

      else
      {
        v40 = [(ZWZoomSlugViewController *)self view];
        v41 = [v40 superview];
        [v41 bounds];
        v43 = v42 / 5.0;
        v44 = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
        [v44 setConstant:v43];

        v45 = [(ZWZoomSlugViewController *)self view];
        v46 = [v45 superview];
        [v46 bounds];
        v48 = v47 / 5.0;
        v49 = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
        [v49 setConstant:v48];

        v50 = [(ZWZoomSlugViewController *)self slugRingView];
        [v50 setShouldUseContinuousCornerRadius:0];

        v39 = [(ZWZoomSlugViewController *)self circlePivotingView];
        [v39 setShouldUseRoundedRect:1];
      }

      v51 = [(ZWZoomSlugViewController *)self circlePivotWidthConstraint];
      [v51 setConstant:38.0];

      v52 = [(ZWZoomSlugViewController *)self circlePivotHeightConstraint];
      [v52 setConstant:38.0];

      v53 = +[AXSettings sharedInstance];
      v54 = [v53 zoomAutopannerShouldPanWithAcceleration];

      if (v54)
      {
        v55 = [(ZWZoomSlugViewController *)self leftTriangleRadiusDistanceConstraint];
        [v55 setConstant:-55.0];

        v56 = [(ZWZoomSlugViewController *)self topTriangleRadiusDistanceConstraint];
        [v56 setConstant:-55.0];

        v57 = [(ZWZoomSlugViewController *)self rightTriangleRadiusDistanceConstraint];
        [v57 setConstant:55.0];

        v34 = [(ZWZoomSlugViewController *)self bottomTriangleRadiusDistanceConstraint];
        [v34 setConstant:55.0];
LABEL_16:

        goto LABEL_17;
      }

      v58 = [(ZWZoomSlugViewController *)self leftTriangleView];
      [v58 setHidden:1];

      v59 = [(ZWZoomSlugViewController *)self rightTriangleView];
      [v59 setHidden:1];

      v60 = [(ZWZoomSlugViewController *)self topTriangleView];
      [v60 setHidden:1];

      v33 = [(ZWZoomSlugViewController *)self bottomTriangleView];
      v34 = v33;
      v35 = 1;
LABEL_15:
      [v33 setHidden:v35];
      goto LABEL_16;
    }

    if (a3 == 1)
    {
      v19 = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
      [v19 setConstant:78.0];

      v20 = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
      [v20 setConstant:78.0];

      v21 = [(ZWZoomSlugViewController *)self slugRingView];
      [v21 setShouldUseContinuousCornerRadius:1];

      v22 = [(ZWZoomSlugViewController *)self circlePivotingView];
      [v22 setShouldUseRoundedRect:0];

      v23 = [(ZWZoomSlugViewController *)self circlePivotWidthConstraint];
      [v23 setConstant:38.0];

      v24 = [(ZWZoomSlugViewController *)self circlePivotHeightConstraint];
      [v24 setConstant:38.0];

      v25 = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
      [v25 setConstant:0.0];

      v26 = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
      [v26 setConstant:0.0];

      v27 = [(ZWZoomSlugViewController *)self leftTriangleRadiusDistanceConstraint];
      [v27 setConstant:-30.0];

      v28 = [(ZWZoomSlugViewController *)self topTriangleRadiusDistanceConstraint];
      [v28 setConstant:-30.0];

      v29 = [(ZWZoomSlugViewController *)self rightTriangleRadiusDistanceConstraint];
      [v29 setConstant:30.0];

      v16 = [(ZWZoomSlugViewController *)self bottomTriangleRadiusDistanceConstraint];
      v17 = v16;
      v18 = 30.0;
    }

    else
    {
      if (a3)
      {
        goto LABEL_17;
      }

      v5 = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
      [v5 setConstant:60.0];

      v6 = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
      [v6 setConstant:60.0];

      v7 = [(ZWZoomSlugViewController *)self slugRingView];
      [v7 setShouldUseContinuousCornerRadius:1];

      v8 = [(ZWZoomSlugViewController *)self circlePivotingView];
      [v8 setShouldUseRoundedRect:0];

      v9 = [(ZWZoomSlugViewController *)self circlePivotWidthConstraint];
      [v9 setConstant:16.0];

      v10 = [(ZWZoomSlugViewController *)self circlePivotHeightConstraint];
      [v10 setConstant:16.0];

      v11 = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
      [v11 setConstant:0.0];

      v12 = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
      [v12 setConstant:0.0];

      v13 = [(ZWZoomSlugViewController *)self leftTriangleRadiusDistanceConstraint];
      [v13 setConstant:-20.0];

      v14 = [(ZWZoomSlugViewController *)self topTriangleRadiusDistanceConstraint];
      [v14 setConstant:-20.0];

      v15 = [(ZWZoomSlugViewController *)self rightTriangleRadiusDistanceConstraint];
      [v15 setConstant:20.0];

      v16 = [(ZWZoomSlugViewController *)self bottomTriangleRadiusDistanceConstraint];
      v17 = v16;
      v18 = 20.0;
    }

    [v16 setConstant:v18];

    if (![(ZWZoomSlugViewController *)self inSpeakUnderFingerMode])
    {
      v30 = [(ZWZoomSlugViewController *)self leftTriangleView];
      [v30 setHidden:0];

      v31 = [(ZWZoomSlugViewController *)self rightTriangleView];
      [v31 setHidden:0];

      v32 = [(ZWZoomSlugViewController *)self topTriangleView];
      [v32 setHidden:0];

      v33 = [(ZWZoomSlugViewController *)self bottomTriangleView];
      v34 = v33;
      v35 = 0;
      goto LABEL_15;
    }

LABEL_17:
    v61 = [(ZWZoomSlugViewController *)self view];
    [v61 setNeedsLayout];

    v62 = [(ZWZoomSlugViewController *)self circlePivotingView];
    [v62 setNeedsLayout];

    v63 = [(ZWZoomSlugViewController *)self slugRingView];
    [v63 setNeedsLayout];

    v64 = [(ZWZoomSlugViewController *)self topTriangleView];
    [v64 setNeedsLayout];

    v65 = [(ZWZoomSlugViewController *)self rightTriangleView];
    [v65 setNeedsLayout];

    v66 = [(ZWZoomSlugViewController *)self bottomTriangleView];
    [v66 setNeedsLayout];

    v67 = [(ZWZoomSlugViewController *)self leftTriangleView];
    [v67 setNeedsLayout];

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = __57__ZWZoomSlugViewController__updateSlugAppearanceForMode___block_invoke;
    v68[3] = &unk_78D00;
    v68[4] = self;
    [UIView animateWithDuration:0 delay:v68 options:0 animations:ZWDefaultZoomAnimationDuration() completion:0.0];
    [(ZWZoomSlugViewController *)self setSlugAppearanceState:a3];
  }
}

void __57__ZWZoomSlugViewController__updateSlugAppearanceForMode___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)_didBeginInteractingWithSlug
{
  [(ZWZoomSlugViewController *)self setUserIsInteractingWithSlug:1];
  if (![(ZWZoomSlugViewController *)self isOrbPanning])
  {

    [(ZWZoomSlugViewController *)self _updateSlugDimStatus:0 Animated:1];
  }
}

- (void)_didFinishInteractingWithSlug
{
  if (![(ZWZoomSlugViewController *)self userIsInteractingWithSlug])
  {
    _AXAssert();
  }

  [(ZWZoomSlugViewController *)self setUserIsInteractingWithSlug:0];
  [(ZWZoomSlugViewController *)self _updateSlugAppearanceForMode:0];

  [(ZWZoomSlugViewController *)self _dimAfterDelay];
}

- (void)updateIdleSlugOpacityAndPreviewImmediately:(double)a3
{
  [(ZWZoomSlugViewController *)self setIdleSlugOpacity:a3];

  [(ZWZoomSlugViewController *)self _updateSlugDimStatus:1 Animated:0];
}

- (void)wakeSlug
{
  [(ZWZoomSlugViewController *)self _updateSlugDimStatus:0 Animated:1];

  [(ZWZoomSlugViewController *)self _dimAfterDelay];
}

- (void)_dimAfterDelay
{
  v3 = [(ZWZoomSlugViewController *)self dimTimer];
  [v3 cancel];

  v4 = [(ZWZoomSlugViewController *)self dimTimer];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __42__ZWZoomSlugViewController__dimAfterDelay__block_invoke;
  v5[3] = &unk_78D00;
  v5[4] = self;
  [v4 afterDelay:v5 processBlock:2.0];
}

- (void)_updateSlugDimStatus:(BOOL)a3 Animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(ZWZoomSlugViewController *)self dimTimer];
  [v7 cancel];

  v8 = 1.0;
  if (v5)
  {
    v8 = 0.0;
    if (!self->_shouldHideWhileOrbing)
    {
      [(ZWZoomSlugViewController *)self idleSlugOpacity];
      v8 = v9;
    }
  }

  v10 = 0.0;
  if (v4)
  {
    v10 = ZWDefaultFadeAnimationDuration();
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __58__ZWZoomSlugViewController__updateSlugDimStatus_Animated___block_invoke;
  v11[3] = &unk_78E98;
  v11[4] = self;
  *&v11[5] = v8;
  [UIView animateWithDuration:6 delay:v11 options:0 animations:v10 completion:0.0];
}

void __58__ZWZoomSlugViewController__updateSlugDimStatus_Animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:v1];
}

- (void)_updateControllerColor
{
  v3 = +[AXSettings sharedInstance];
  [v3 zoomControllerColor];
  v4 = AXUIZoomControllerColor();

  v5 = [(ZWZoomSlugViewController *)self circlePivotingView];
  v6 = [v5 circleLayer];
  [v6 setFillColor:v4];

  v7 = [(ZWZoomSlugViewController *)self topTriangleView];
  v8 = [v7 triangleLayer];
  [v8 setFillColor:v4];

  v9 = [(ZWZoomSlugViewController *)self rightTriangleView];
  v10 = [v9 triangleLayer];
  [v10 setFillColor:v4];

  v11 = [(ZWZoomSlugViewController *)self bottomTriangleView];
  v12 = [v11 triangleLayer];
  [v12 setFillColor:v4];

  v13 = [(ZWZoomSlugViewController *)self leftTriangleView];
  v14 = [v13 triangleLayer];
  [v14 setFillColor:v4];

  v15 = [(ZWZoomSlugViewController *)self slugRingView];
  v16 = [v15 layer];
  [v16 setBorderColor:v4];

  [(ZWZoomSlugViewController *)self wakeSlug];
}

- (void)_updateControllerThickness
{
  if (UIAccessibilityIsBoldTextEnabled())
  {
    v3 = 4.0;
  }

  else
  {
    v3 = 2.0;
  }

  v5 = [(ZWZoomSlugViewController *)self slugRingView];
  v4 = [v5 layer];
  [v4 setBorderWidth:v3];
}

- (void)_updateGestures
{
  allGesturesEnabled = self->_allGesturesEnabled;
  v4 = [(ZWZoomSlugViewController *)self longPressGesture];
  [v4 setEnabled:allGesturesEnabled];

  v5 = self->_allGesturesEnabled;
  v6 = [(ZWZoomSlugViewController *)self panGesture];
  [v6 setEnabled:v5];

  v17 = +[AXSettings sharedInstance];
  v7 = [v17 zoomSlugSingleTapAction];
  v8 = [v17 zoomSlugDoubleTapAction];
  v9 = [v17 zoomSlugTripleTapAction];
  v10 = [v17 zoomSlugTapAndSlideToAdjustZoomLevelEnabled];
  if (self->_tapGesturesEnabled)
  {
    v11 = (v7 != 0) | v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(ZWZoomSlugViewController *)self singleTapGesture];
  [v12 setEnabled:v11 & 1];

  if (v8)
  {
    tapGesturesEnabled = self->_tapGesturesEnabled;
  }

  else
  {
    tapGesturesEnabled = 0;
  }

  v14 = [(ZWZoomSlugViewController *)self doubleTapGesture];
  [v14 setEnabled:tapGesturesEnabled];

  if (v9)
  {
    v15 = self->_tapGesturesEnabled;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(ZWZoomSlugViewController *)self tripleTapGesture];
  [v16 setEnabled:v15];
}

- (BOOL)_panGestureIsRecognizing
{
  v2 = [(ZWZoomSlugViewController *)self panGesture];
  v3 = [v2 state];

  return (v3 - 1) < 2;
}

- (void)_handleSingleTap:(id)a3
{
  if ([a3 state] == &dword_0 + 3 && !-[ZWZoomSlugViewController _panGestureIsRecognizing](self, "_panGestureIsRecognizing"))
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 zoomSlugSingleTapAction];

    if (v5)
    {
      [(ZWZoomSlugViewController *)self _didBeginInteractingWithSlug];
      v6 = [(ZWZoomSlugViewController *)self delegate];
      [v6 slugWasSingleTappedWithSlugViewController:self];

      [(ZWZoomSlugViewController *)self setInUserRepositioningMode:0];

      [(ZWZoomSlugViewController *)self _didFinishInteractingWithSlug];
    }
  }
}

- (void)_handleDoubleTap:(id)a3
{
  if ([a3 state] == &dword_0 + 3)
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 zoomSlugDoubleTapAction];

    if (v5)
    {
      [(ZWZoomSlugViewController *)self _didBeginInteractingWithSlug];
      v6 = [(ZWZoomSlugViewController *)self delegate];
      [v6 slugWasDoubleTappedWithSlugViewController:self];

      [(ZWZoomSlugViewController *)self setInUserRepositioningMode:0];

      [(ZWZoomSlugViewController *)self _didFinishInteractingWithSlug];
    }
  }
}

- (void)_handleTripleTap:(id)a3
{
  if ([a3 state] == &dword_0 + 3)
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 zoomSlugTripleTapAction];

    if (v5)
    {
      [(ZWZoomSlugViewController *)self _didBeginInteractingWithSlug];
      v6 = [(ZWZoomSlugViewController *)self delegate];
      [v6 slugWasTripleTappedWithSlugViewController:self];

      [(ZWZoomSlugViewController *)self setInUserRepositioningMode:0];

      [(ZWZoomSlugViewController *)self _didFinishInteractingWithSlug];
    }
  }
}

- (void)_handleLongPress:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) < 3)
  {
    if ([(ZWZoomSlugViewController *)self isOrbPanning])
    {
      v5 = [(ZWZoomSlugViewController *)self delegate];
      [v5 endOrbZoomWithSlugViewController:self];

      [(ZWZoomSlugViewController *)self setIsOrbPanning:0];
    }

    else
    {
      [(ZWZoomSlugViewController *)self _updateSlugAppearanceForMode:0];
      [(ZWZoomSlugViewController *)self setInUserRepositioningMode:0];
    }

LABEL_9:

    [(ZWZoomSlugViewController *)self setDisableDashBoardGesturesForLongPressAssertion:0];
    return;
  }

  if (v4 == &dword_0 + 2)
  {
    return;
  }

  if (v4 != &dword_0 + 1)
  {
    goto LABEL_9;
  }

  [(ZWZoomSlugViewController *)self setIsOrbPanning:1];
  v6 = [(ZWZoomSlugViewController *)self delegate];
  v7 = [v6 attemptOrbZoomIfAppropriateWithSlugViewController:self];

  if ((v7 & 1) == 0)
  {
    [(ZWZoomSlugViewController *)self setIsOrbPanning:0];
    [(ZWZoomSlugViewController *)self _updateSlugAppearanceForMode:1];
    [(ZWZoomSlugViewController *)self setInUserRepositioningMode:1];
    v8 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"Zoom: slug longPress"];
    [(ZWZoomSlugViewController *)self setDisableDashBoardGesturesForLongPressAssertion:v8];
  }
}

- (void)_handlePan:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if ((v5 - 3) < 3)
  {
    [(ZWZoomSlugViewController *)self setDisableDashBoardGesturesForPanAssertion:0];
    [(ZWZoomSlugViewController *)self setTapGesturesEnabled:1];
    v6 = [(ZWZoomSlugViewController *)self delegate];
    [v6 wantsToStopAutopannerWithSlugViewController:self];

    [(ZWZoomSlugViewController *)self _didFinishInteractingWithSlug];
    [(ZWZoomSlugViewController *)self setInUserRepositioningMode:0];
    y = CGPointZero.y;
    [(ZWZoomSlugViewController *)self setDeltaFromInitialTouch:CGPointZero.x, y];
    [(ZWZoomSlugViewController *)self setDeltaFromLastPanEvent:CGPointZero.x, y];
    [(ZWZoomSlugViewController *)self setCurrentOffsetAngle:0.0];
    [(ZWZoomSlugViewController *)self setInPanZoomingMode:0];
    self->_shouldHideWhileOrbing = 0;
    [(ZWZoomSlugViewController *)self wakeSlug];
    goto LABEL_35;
  }

  if (v5 == &dword_0 + 2)
  {
    v12 = [(ZWZoomSlugViewController *)self view];
    [v4 translationInView:v12];
    v14 = v13;
    v16 = v15;

    v17 = v14 - self->_firstTouchLocation.x;
    v18 = v16 - self->_firstTouchLocation.y;
    p_lastPanLocation = &self->_lastPanLocation;
    [(ZWZoomSlugViewController *)self setDeltaFromLastPanEvent:v14 - self->_lastPanLocation.x, v16 - self->_lastPanLocation.y];
    [(ZWZoomSlugViewController *)self setCurrentOffsetAngle:atan2(v18, v17)];
    [(ZWZoomSlugViewController *)self setDeltaFromInitialTouch:v17, v18];
    if ([(ZWZoomSlugViewController *)self isInPanZoomingMode])
    {
      v20 = [(ZWZoomSlugViewController *)self delegate];
      [(ZWZoomSlugViewController *)self deltaFromInitialTouch];
      [v20 zoomSlugViewController:self wantsToAdjustZoomLevelWithDelta:?];
LABEL_12:

LABEL_13:
      p_lastPanLocation->x = v14;
      p_lastPanLocation->y = v16;
      goto LABEL_35;
    }

    if ([(ZWZoomSlugViewController *)self isOrbPanning])
    {
      v21 = [(ZWZoomSlugViewController *)self view];
      [v21 center];
      v23 = v14 + v22;
      v24 = [(ZWZoomSlugViewController *)self view];
      [v24 center];
      v26 = v16 + v25;

      v20 = [(ZWZoomSlugViewController *)self delegate];
      [v20 updateOrbZoomAtPoint:self withSlugViewController:{v23, v26}];
      goto LABEL_12;
    }

    if (![(ZWZoomSlugViewController *)self isInUserRepositioningMode])
    {
      v55 = +[AXSettings sharedInstance];
      v56 = [v55 zoomAutopannerShouldPanWithAcceleration];

      if (v56)
      {
        [(ZWZoomSlugViewController *)self deltaFromInitialTouch];
        v59 = v57;
        if (v57 <= 0.0)
        {
          if (v57 < 0.0 && v57 < -30.0)
          {
            v59 = -30.0;
          }
        }

        else
        {
          v59 = fmin(v57, 30.0);
        }

        if (v58 <= 0.0)
        {
          v88 = -30.0;
          if (v58 >= -30.0)
          {
            v88 = v58;
          }

          if (v58 < 0.0)
          {
            v71 = v88;
          }

          else
          {
            v71 = v58;
          }
        }

        else
        {
          v71 = fmin(v58, 30.0);
        }
      }

      else
      {
        v62 = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
        [v62 constant];
        v64 = v63;
        [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
        v66 = v64 + v65;
        v67 = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
        [v67 constant];
        v69 = v68;
        [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
        v71 = v69 + v70;

        v72 = [(ZWZoomSlugViewController *)self view];
        v73 = [v72 superview];
        [v73 bounds];
        v74 = 5.0 + 5.0;
        v59 = v75 / (5.0 + 5.0) + -19.0 - 3.0;

        if (v66 < v59)
        {
          v59 = v66;
        }

        v76 = [(ZWZoomSlugViewController *)self view];
        v77 = [v76 superview];
        [v77 bounds];
        v79 = -(v78 / v74 + -19.0 - 3.0);

        if (v59 < v79)
        {
          v59 = v79;
        }

        v80 = [(ZWZoomSlugViewController *)self view];
        v81 = [v80 superview];
        [v81 bounds];
        v83 = v82 / v74 + -19.0 - 3.0;

        if (v71 >= v83)
        {
          v71 = v83;
        }

        v84 = [(ZWZoomSlugViewController *)self view];
        v85 = [v84 superview];
        [v85 bounds];
        v87 = -(v86 / v74 + -19.0 - 3.0);

        if (v71 < v87)
        {
          v71 = v87;
        }
      }

      v89 = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
      [v89 setConstant:v59];

      v90 = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
      [v90 setConstant:v71];

      goto LABEL_13;
    }

    if (!AXDeviceHasJindo())
    {
      v20 = [(ZWZoomSlugViewController *)self delegate];
      v61 = [(ZWZoomSlugViewController *)self view];
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      [v20 zoomSlugViewController:self didDragSlug:v61 withDelta:?];

      goto LABEL_12;
    }

    v130 = 0;
    v131 = &v130;
    v132 = 0x2020000000;
    v133 = 0;
    AXPerformBlockSynchronouslyOnMainThread();
    v36 = *(v131 + 6);
    if (v36 == 4)
    {
      v129 = [(ZWZoomSlugViewController *)self view];
      [v129 frame];
      v127 = v91;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      v93 = v92;
      v128 = [(ZWZoomSlugViewController *)self view];
      v94 = [v128 superview];
      [v94 bounds];
      v96 = v95;
      v97 = [(ZWZoomSlugViewController *)self view];
      [v97 frame];
      v99 = v98;
      v100 = [(ZWZoomSlugViewController *)self view];
      [v100 frame];
      v102 = v101;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      v104 = v103;
      v105 = [(ZWZoomSlugViewController *)self view];
      [v105 frame];
      v107 = v106;
      v108 = [(ZWZoomSlugViewController *)self view];
      [v108 frame];
      v137.size.height = v109;
      v137.origin.x = v127 + v93;
      v137.origin.y = v96 - (v99 + v102 + 5.0 + v104);
      v137.size.width = v107;
      v135 = CGRectIntersection(self->_foreheadRect, v137);
      IsNull = CGRectIsNull(v135);

      if (IsNull)
      {
LABEL_30:
        v53 = [(ZWZoomSlugViewController *)self delegate];
        v54 = [(ZWZoomSlugViewController *)self view];
        [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
        [v53 zoomSlugViewController:self didDragSlug:v54 withDelta:?];
LABEL_63:

        _Block_object_dispose(&v130, 8);
        goto LABEL_13;
      }

      v53 = [(ZWZoomSlugViewController *)self delegate];
      v54 = [(ZWZoomSlugViewController *)self view];
      v113 = [(ZWZoomSlugViewController *)self view];
      v116 = [v113 superview];
      [v116 bounds];
      v118 = v117;
      v119 = self->_foreheadRect.origin.y;
      height = self->_foreheadRect.size.height;
      v121 = [(ZWZoomSlugViewController *)self view];
      [v121 frame];
      v123 = v122;
      v124 = [(ZWZoomSlugViewController *)self view];
      [v124 frame];
      v126 = v125;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      [v53 zoomSlugViewController:self didDragSlug:v54 withDelta:v118 - v119 - height - (v123 + v126)];
    }

    else
    {
      if (v36 != 3)
      {
        goto LABEL_30;
      }

      v37 = [(ZWZoomSlugViewController *)self view];
      [v37 frame];
      v39 = v38;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      v41 = v40;
      v42 = [(ZWZoomSlugViewController *)self view];
      [v42 frame];
      v44 = v43;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      v46 = v45;
      v47 = [(ZWZoomSlugViewController *)self view];
      [v47 frame];
      v49 = v48;
      v50 = [(ZWZoomSlugViewController *)self view];
      [v50 frame];
      v136.size.height = v51;
      v136.origin.x = v39 + v41;
      v136.origin.y = v44 + v46;
      v136.size.width = v49;
      v134 = CGRectIntersection(self->_foreheadRect, v136);
      v52 = CGRectIsNull(v134);

      if (v52)
      {
        goto LABEL_30;
      }

      v53 = [(ZWZoomSlugViewController *)self delegate];
      v54 = [(ZWZoomSlugViewController *)self view];
      v111 = self->_foreheadRect.origin.y;
      v112 = self->_foreheadRect.size.height;
      v113 = [(ZWZoomSlugViewController *)self view];
      [v113 frame];
      v115 = v114;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      [v53 zoomSlugViewController:self didDragSlug:v54 withDelta:v111 + v112 - v115];
    }

    goto LABEL_63;
  }

  if (v5 == &dword_0 + 1)
  {
    v8 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"Zoom: slug panning"];
    [(ZWZoomSlugViewController *)self setDisableDashBoardGesturesForPanAssertion:v8];

    v9 = [(ZWZoomSlugViewController *)self isInPanZoomingMode];
    v10 = [(ZWZoomSlugViewController *)self singleTapGesture];
    if ([v10 state] == &dword_0 + 3)
    {
      v11 = +[AXSettings sharedInstance];
      -[ZWZoomSlugViewController setInPanZoomingMode:](self, "setInPanZoomingMode:", [v11 zoomSlugTapAndSlideToAdjustZoomLevelEnabled]);
    }

    else
    {
      [(ZWZoomSlugViewController *)self setInPanZoomingMode:0];
    }

    if ((v9 & 1) == 0 && [(ZWZoomSlugViewController *)self isInPanZoomingMode])
    {
      v27 = [(ZWZoomSlugViewController *)self delegate];
      [v27 prepareForSlugZoomPanningWithSlugViewController:self];
    }

    [(ZWZoomSlugViewController *)self setTapGesturesEnabled:0];
    v28 = [(ZWZoomSlugViewController *)self view];
    [v4 translationInView:v28];
    self->_lastPanLocation.x = v29;
    self->_lastPanLocation.y = v30;

    v31 = [(ZWZoomSlugViewController *)self view];
    [v4 translationInView:v31];
    self->_firstTouchLocation.x = v32;
    self->_firstTouchLocation.y = v33;

    [(ZWZoomSlugViewController *)self setCurrentOffsetAngle:0.0];
    [(ZWZoomSlugViewController *)self _didBeginInteractingWithSlug];
    if (![(ZWZoomSlugViewController *)self isInPanZoomingMode]&& ![(ZWZoomSlugViewController *)self isOrbPanning])
    {
      if (-[ZWZoomSlugViewController inSpeakUnderFingerMode](self, "inSpeakUnderFingerMode") || (-[ZWZoomSlugViewController delegate](self, "delegate"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 shouldBeginAutopanningLensWithSlugViewController:self], v34, (v35 & 1) == 0))
      {
        [(ZWZoomSlugViewController *)self setInUserRepositioningMode:1];
      }

      if ([(ZWZoomSlugViewController *)self isInUserRepositioningMode])
      {
        [(ZWZoomSlugViewController *)self _updateSlugAppearanceForMode:1];
      }

      else
      {
        [(ZWZoomSlugViewController *)self _updateSlugAppearanceForMode:2];
        v60 = [(ZWZoomSlugViewController *)self delegate];
        [v60 wantsToStartAutopannerWithSlugViewController:self];

        self->_shouldHideWhileOrbing = 1;
        [(ZWZoomSlugViewController *)self _dimAfterDelay];
      }
    }
  }

  else
  {
    [(ZWZoomSlugViewController *)self setDisableDashBoardGesturesForPanAssertion:0];
  }

LABEL_35:
}

id __39__ZWZoomSlugViewController__handlePan___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) interfaceOrientation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updateAccessibilityHint
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomSlugSingleTapAction];

  v5 = +[AXSettings sharedInstance];
  v6 = [v5 zoomSlugDoubleTapAction];

  v7 = +[AXSettings sharedInstance];
  v8 = [v7 zoomSlugTripleTapAction];

  v16 = objc_alloc_init(NSMutableString);
  if (v4 == &dword_0 + 1)
  {
    v9 = @"ZW_SLUG_HINT_SINGLE_TAP_ZOOM_MENU";
  }

  else
  {
    if (v4 != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    v9 = @"ZW_SLUG_HINT_SINGLE_TAP_TOGGLE_ZOOM";
  }

  v10 = ZWLocString(v9);
  [v16 appendString:v10];

  [v16 appendString:@" "];
LABEL_6:
  if (v6 == &dword_0 + 1)
  {
    v11 = @"ZW_SLUG_HINT_DOUBLE_TAP_ZOOM_MENU";
  }

  else
  {
    if (v6 != &dword_0 + 2)
    {
      goto LABEL_11;
    }

    v11 = @"ZW_SLUG_HINT_DOUBLE_TAP_TOGGLE_ZOOM";
  }

  v12 = ZWLocString(v11);
  [v16 appendString:v12];

  [v16 appendString:@" "];
LABEL_11:
  if (v8 == &dword_0 + 1)
  {
    v13 = @"ZW_SLUG_HINT_TRIPLE_TAP_ZOOM_MENU";
  }

  else
  {
    if (v8 != &dword_0 + 2)
    {
      goto LABEL_16;
    }

    v13 = @"ZW_SLUG_HINT_TRIPLE_TAP_TOGGLE_ZOOM";
  }

  v14 = ZWLocString(v13);
  [v16 appendString:v14];

LABEL_16:
  v15 = [(ZWZoomSlugViewController *)self view];
  [v15 setAccessibilityHint:v16];
}

- (void)_updateRingAndTriangleVisiblity:(BOOL)a3
{
  v3 = a3;
  v5 = [(ZWZoomSlugViewController *)self leftTriangleView];
  [v5 setHidden:v3];

  v6 = [(ZWZoomSlugViewController *)self rightTriangleView];
  [v6 setHidden:v3];

  v7 = [(ZWZoomSlugViewController *)self topTriangleView];
  [v7 setHidden:v3];

  v8 = [(ZWZoomSlugViewController *)self bottomTriangleView];
  [v8 setHidden:v3];

  v9 = [(ZWZoomSlugViewController *)self circlePivotingView];
  [v9 setHidden:v3];

  v10 = [(ZWSlugCollapsingRingView *)self->_slugRingView speakFingerImageView];
  [v10 setHidden:v3 ^ 1];
}

- (void)updateUIForSpeakFingerStateChange
{
  v3 = +[AXSpeakFingerManager sharedInstance];
  v4 = [v3 speakFingerState];

  if (v4 > 2)
  {
    if (v4 == (&dword_0 + 3))
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = @"Stop";
      goto LABEL_12;
    }

    if (v4 != &dword_4)
    {
      return;
    }
  }

  else if (v4 != (&dword_0 + 1))
  {
    if (v4 == (&dword_0 + 2))
    {
      [(ZWZoomSlugViewController *)self setInSpeakUnderFingerMode:0];

      [(ZWZoomSlugViewController *)self _updateRingAndTriangleVisiblity:0];
    }

    return;
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = @"Touch";
LABEL_12:
  v7 = [UIImage imageNamed:v6 inBundle:v5];
  v8 = +[AXSettings sharedInstance];
  [v8 zoomControllerColor];
  v9 = [UIColor colorWithCGColor:AXUIZoomControllerColor()];
  v10 = [v7 _flatImageWithColor:v9];
  v11 = [(ZWSlugCollapsingRingView *)self->_slugRingView speakFingerImageView];
  [v11 setImage:v10];

  [(ZWZoomSlugViewController *)self _updateRingAndTriangleVisiblity:1];

  [(ZWZoomSlugViewController *)self setInSpeakUnderFingerMode:1];
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v4 = a3;
  if ([v4 count] == &dword_0 + 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    self->_foreheadRect.origin.x = v6;
    self->_foreheadRect.origin.y = v7;
    self->_foreheadRect.size.width = v8;
    self->_foreheadRect.size.height = v9;
  }

  else
  {
    if ([v4 count] != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    v5 = [v4 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v4 objectAtIndexedSubscript:1];
    [v18 CGRectValue];
    v91.origin.x = v19;
    v91.origin.y = v20;
    v91.size.width = v21;
    v91.size.height = v22;
    v84.origin.x = v11;
    v84.origin.y = v13;
    v84.size.width = v15;
    v84.size.height = v17;
    self->_foreheadRect = CGRectUnion(v84, v91);
  }

LABEL_6:
  if (AXDeviceHasJindo())
  {
    v80 = 0;
    v81 = &v80;
    v82 = 0x2020000000;
    v83 = 0;
    AXPerformBlockSynchronouslyOnMainThread();
    v23 = *(v81 + 6);
    p_foreheadRect = &self->_foreheadRect;
    if (v23 == 4)
    {
      v79 = [(ZWZoomSlugViewController *)self view];
      [v79 frame];
      v43 = v42;
      v44 = [(ZWZoomSlugViewController *)self view];
      v45 = [v44 superview];
      [v45 bounds];
      v47 = v46;
      v48 = [(ZWZoomSlugViewController *)self view];
      [v48 frame];
      v50 = v49;
      v51 = [(ZWZoomSlugViewController *)self view];
      [v51 frame];
      v53 = v52;
      v54 = [(ZWZoomSlugViewController *)self view];
      [v54 frame];
      v56 = v55;
      v57 = [(ZWZoomSlugViewController *)self view];
      [v57 frame];
      v93.size.height = v58;
      v93.origin.y = v47 - (v50 + v53);
      v87.origin.x = p_foreheadRect->origin.x;
      v87.origin.y = self->_foreheadRect.origin.y;
      v87.size.width = self->_foreheadRect.size.width;
      v87.size.height = self->_foreheadRect.size.height;
      v93.origin.x = v43;
      v93.size.width = v56;
      v88 = CGRectIntersection(v87, v93);
      IsNull = CGRectIsNull(v88);

      if (!IsNull)
      {
        v37 = [(ZWZoomSlugViewController *)self delegate];
        height = self->_foreheadRect.size.height;
        y = self->_foreheadRect.origin.y;
        v40 = [(ZWZoomSlugViewController *)self view];
        v62 = [v40 superview];
        [v62 bounds];
        v64 = v63;
        v65 = [(ZWZoomSlugViewController *)self view];
        [v65 frame];
        v67 = v66;
        v68 = [(ZWZoomSlugViewController *)self view];
        [v68 frame];
        [v37 _moveZoomItemWithControllerToDodgeJindo:self byDelta:{-(height + y + 5.0 + v67 + v69 - v64), 0.0}];

        goto LABEL_15;
      }
    }

    else if (v23 == 3)
    {
      v25 = [(ZWZoomSlugViewController *)self view];
      [v25 frame];
      v27 = v26;
      v28 = [(ZWZoomSlugViewController *)self view];
      [v28 frame];
      v30 = v29;
      v31 = [(ZWZoomSlugViewController *)self view];
      [v31 frame];
      v33 = v32;
      v34 = [(ZWZoomSlugViewController *)self view];
      [v34 frame];
      v92.size.height = v35;
      v85.origin.x = p_foreheadRect->origin.x;
      v85.origin.y = self->_foreheadRect.origin.y;
      v85.size.width = self->_foreheadRect.size.width;
      v85.size.height = self->_foreheadRect.size.height;
      v92.origin.x = v27;
      v92.origin.y = v30;
      v92.size.width = v33;
      v86 = CGRectIntersection(v85, v92);
      v36 = CGRectIsNull(v86);

      if (!v36)
      {
        v37 = [(ZWZoomSlugViewController *)self delegate];
        v38 = self->_foreheadRect.size.height;
        v39 = self->_foreheadRect.origin.y;
        v40 = [(ZWZoomSlugViewController *)self view];
        [v40 frame];
        [v37 _moveZoomItemWithControllerToDodgeJindo:self byDelta:{v38 + v39 + 5.0 - v41, 0.0}];
LABEL_15:
      }
    }

    else
    {
      v70 = [(ZWZoomSlugViewController *)self view];
      [v70 frame];
      v94.origin.x = v71;
      v94.origin.y = v72;
      v94.size.width = v73;
      v94.size.height = v74;
      v89.origin.x = p_foreheadRect->origin.x;
      v89.origin.y = self->_foreheadRect.origin.y;
      v89.size.width = self->_foreheadRect.size.width;
      v89.size.height = self->_foreheadRect.size.height;
      v90 = CGRectIntersection(v89, v94);
      v75 = CGRectIsNull(v90);

      if (!v75)
      {
        v37 = [(ZWZoomSlugViewController *)self delegate];
        v76 = self->_foreheadRect.size.height;
        v77 = self->_foreheadRect.origin.y;
        v40 = [(ZWZoomSlugViewController *)self view];
        [v40 frame];
        [v37 _moveZoomItemWithControllerToDodgeJindo:self byDelta:{0.0, v76 + v77 - v78}];
        goto LABEL_15;
      }
    }

    _Block_object_dispose(&v80, 8);
  }
}

id __58__ZWZoomSlugViewController_systemApertureLayoutDidChange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) interfaceOrientation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)userInteractionHasBecomeIdle
{
  v3.receiver = self;
  v3.super_class = ZWZoomSlugViewController;
  [(ZWZoomViewController *)&v3 userInteractionHasBecomeIdle];
  [(ZWZoomSlugViewController *)self setInUserRepositioningMode:0];
}

- (void)userInteractionHasBecomeActiveWithFirstTouchAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v7.receiver = self;
  v7.super_class = ZWZoomSlugViewController;
  [(ZWZoomViewController *)&v7 userInteractionHasBecomeActiveWithFirstTouchAtLocation:?];
  v6 = [(ZWZoomSlugViewController *)self view];
  [v6 bounds];
  v8.x = x;
  v8.y = y;
  CGRectContainsPoint(v9, v8);
}

- (CGPoint)offsetForAutopanner:(id)a3
{
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 zoomAutopannerShouldPanWithAcceleration];

  if (v5)
  {

    [(ZWZoomSlugViewController *)self deltaFromInitialTouch];
  }

  else
  {
    [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
    v9 = v8 * 5.0;
    [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
    v11 = v10 * 5.0;
    [(ZWZoomSlugViewController *)self setDeltaFromLastPanEvent:CGPointZero.x, CGPointZero.y];
    v6 = v9;
    v7 = v11;
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ZWZoomSlugViewController *)self longPressGesture];

  v9 = [(ZWZoomSlugViewController *)self panGesture];

  if (v8 == v6)
  {
    v10 = v9 == v7;
  }

  else if (v9 == v6)
  {
    v11 = [(ZWZoomSlugViewController *)self longPressGesture];
    if (v11 == v7)
    {
      v10 = 1;
    }

    else
    {
      v12 = [(ZWZoomSlugViewController *)self doubleTapGesture];
      if (v12 == v7)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(ZWZoomSlugViewController *)self tripleTapGesture];
        if (v13 == v7)
        {
          v10 = 1;
        }

        else
        {
          v14 = [(ZWZoomSlugViewController *)self singleTapGesture];
          v10 = v14 == v7;
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (ZWZoomSlugViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)deltaFromInitialTouch
{
  x = self->_deltaFromInitialTouch.x;
  y = self->_deltaFromInitialTouch.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)deltaFromLastPanEvent
{
  x = self->_deltaFromLastPanEvent.x;
  y = self->_deltaFromLastPanEvent.y;
  result.y = y;
  result.x = x;
  return result;
}

@end