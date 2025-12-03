@interface ZWZoomSlugViewController
+ (double)longPressDurationForStandByMode:(BOOL)mode;
- (BOOL)_panGestureIsRecognizing;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGPoint)deltaFromInitialTouch;
- (CGPoint)deltaFromLastPanEvent;
- (CGPoint)offsetForAutopanner:(id)autopanner;
- (CGRect)foreheadRect;
- (CGRect)slugRingViewBoundsInScreenCoordinates;
- (ZWZoomSlugViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ZWZoomSlugViewControllerDelegate)delegate;
- (void)_didBeginInteractingWithSlug;
- (void)_didFinishInteractingWithSlug;
- (void)_dimAfterDelay;
- (void)_handleDoubleTap:(id)tap;
- (void)_handleLongPress:(id)press;
- (void)_handlePan:(id)pan;
- (void)_handleSingleTap:(id)tap;
- (void)_handleTripleTap:(id)tap;
- (void)_updateAccessibilityHint;
- (void)_updateControllerColor;
- (void)_updateControllerThickness;
- (void)_updateGestures;
- (void)_updateRingAndTriangleVisiblity:(BOOL)visiblity;
- (void)_updateSlugAppearanceForMode:(unint64_t)mode;
- (void)_updateSlugDimStatus:(BOOL)status Animated:(BOOL)animated;
- (void)dealloc;
- (void)loadView;
- (void)setShouldHideWhileOrbing:(BOOL)orbing;
- (void)systemApertureLayoutDidChange:(id)change;
- (void)updateIdleSlugOpacityAndPreviewImmediately:(double)immediately;
- (void)updateLongPressDuration:(double)duration;
- (void)updateUIForSpeakFingerStateChange;
- (void)userInteractionHasBecomeActiveWithFirstTouchAtLocation:(CGPoint)location;
- (void)userInteractionHasBecomeIdle;
- (void)wakeSlug;
@end

@implementation ZWZoomSlugViewController

- (ZWZoomSlugViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v34.receiver = self;
  v34.super_class = ZWZoomSlugViewController;
  v8 = [(ZWZoomSlugViewController *)&v34 initWithNibName:nameCopy bundle:bundleCopy];
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
  height = [(ZWSlugBackgroundView *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWSlugBackgroundView *)height setSemanticContentAttribute:2];
  [(ZWSlugBackgroundView *)height setAccessibilityIgnoresInvertColors:1];
  [(ZWSlugBackgroundView *)height setDelegate:self];
  [(ZWZoomSlugViewController *)self setView:height];
  view = [(ZWZoomSlugViewController *)self view];
  [view setHidden:1];

  height2 = [[ZWSlugCollapsingRingView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWSlugBackgroundView *)height addSubview:height2];
  [(ZWZoomSlugViewController *)self setSlugRingView:height2];
  height3 = [[ZWSlugCirclePivotingView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWSlugBackgroundView *)height addSubview:height3];
  [(ZWZoomSlugViewController *)self setCirclePivotingView:height3];
  v82 = [[ZWSlugTriangleView alloc] initWithTriangle:3];
  [(ZWSlugBackgroundView *)height addSubview:v82];
  [(ZWZoomSlugViewController *)self setLeftTriangleView:v82];
  v79 = [[ZWSlugTriangleView alloc] initWithTriangle:1];
  [(ZWSlugBackgroundView *)height addSubview:v79];
  [(ZWZoomSlugViewController *)self setRightTriangleView:v79];
  v80 = [[ZWSlugTriangleView alloc] initWithTriangle:2];
  [(ZWSlugBackgroundView *)height addSubview:v80];
  [(ZWZoomSlugViewController *)self setBottomTriangleView:v80];
  v81 = [[ZWSlugTriangleView alloc] initWithTriangle:0];
  [(ZWSlugBackgroundView *)height addSubview:v81];
  [(ZWZoomSlugViewController *)self setTopTriangleView:v81];
  [(ZWSlugBackgroundView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [NSLayoutConstraint constraintWithItem:height attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:150.0];
  [(ZWSlugBackgroundView *)height addConstraint:v11];

  v12 = [NSLayoutConstraint constraintWithItem:height attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:150.0];
  [(ZWSlugBackgroundView *)height addConstraint:v12];

  LODWORD(v13) = 1148846080;
  [(ZWSlugBackgroundView *)height setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(ZWSlugBackgroundView *)height setContentCompressionResistancePriority:1 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [(ZWSlugBackgroundView *)height setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(ZWSlugBackgroundView *)height setContentHuggingPriority:1 forAxis:v16];
  [(ZWSlugCollapsingRingView *)height2 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v17) = 1148846080;
  [(ZWSlugCollapsingRingView *)height2 setContentCompressionResistancePriority:0 forAxis:v17];
  LODWORD(v18) = 1148846080;
  [(ZWSlugCollapsingRingView *)height2 setContentCompressionResistancePriority:1 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [(ZWSlugCollapsingRingView *)height2 setContentHuggingPriority:0 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [(ZWSlugCollapsingRingView *)height2 setContentHuggingPriority:1 forAxis:v20];
  v21 = [NSLayoutConstraint constraintWithItem:height2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:60.0];
  [(ZWZoomSlugViewController *)self setCollapsingRingWidthConstraint:v21];

  v22 = [NSLayoutConstraint constraintWithItem:height2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:60.0];
  [(ZWZoomSlugViewController *)self setCollapsingRingHeightConstraint:v22];

  collapsingRingWidthConstraint = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
  v84[0] = collapsingRingWidthConstraint;
  collapsingRingHeightConstraint = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
  v84[1] = collapsingRingHeightConstraint;
  v25 = [NSLayoutConstraint constraintWithItem:height2 attribute:9 relatedBy:0 toItem:height attribute:9 multiplier:1.0 constant:0.0];
  v84[2] = v25;
  v26 = [NSLayoutConstraint constraintWithItem:height2 attribute:10 relatedBy:0 toItem:height attribute:10 multiplier:1.0 constant:0.0];
  v84[3] = v26;
  v27 = [NSArray arrayWithObjects:v84 count:4];
  [(ZWSlugBackgroundView *)height addConstraints:v27];

  [(ZWSlugCirclePivotingView *)height3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v28) = 1148846080;
  [(ZWSlugCirclePivotingView *)height3 setContentCompressionResistancePriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [(ZWSlugCirclePivotingView *)height3 setContentCompressionResistancePriority:1 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [(ZWSlugCirclePivotingView *)height3 setContentHuggingPriority:0 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [(ZWSlugCirclePivotingView *)height3 setContentHuggingPriority:1 forAxis:v31];
  v32 = [NSLayoutConstraint constraintWithItem:height3 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:16.0];
  [(ZWZoomSlugViewController *)self setCirclePivotWidthConstraint:v32];

  v33 = [NSLayoutConstraint constraintWithItem:height3 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:16.0];
  [(ZWZoomSlugViewController *)self setCirclePivotHeightConstraint:v33];

  v34 = [NSLayoutConstraint constraintWithItem:height3 attribute:9 relatedBy:0 toItem:height attribute:9 multiplier:1.0 constant:0.0];
  [(ZWZoomSlugViewController *)self setCirclePivotOffsetXConstraint:v34];

  v35 = [NSLayoutConstraint constraintWithItem:height3 attribute:10 relatedBy:0 toItem:height attribute:10 multiplier:1.0 constant:0.0];
  [(ZWZoomSlugViewController *)self setCirclePivotOffsetYConstraint:v35];

  circlePivotWidthConstraint = [(ZWZoomSlugViewController *)self circlePivotWidthConstraint];
  v83[0] = circlePivotWidthConstraint;
  circlePivotHeightConstraint = [(ZWZoomSlugViewController *)self circlePivotHeightConstraint];
  v83[1] = circlePivotHeightConstraint;
  circlePivotOffsetXConstraint = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
  v83[2] = circlePivotOffsetXConstraint;
  circlePivotOffsetYConstraint = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
  v83[3] = circlePivotOffsetYConstraint;
  v40 = [NSArray arrayWithObjects:v83 count:4];
  [(ZWSlugBackgroundView *)height addConstraints:v40];

  [(ZWSlugTriangleView *)v81 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v41) = 1148846080;
  [(ZWSlugTriangleView *)v81 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [(ZWSlugTriangleView *)v81 setContentCompressionResistancePriority:1 forAxis:v42];
  LODWORD(v43) = 1148846080;
  [(ZWSlugTriangleView *)v81 setContentHuggingPriority:0 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [(ZWSlugTriangleView *)v81 setContentHuggingPriority:1 forAxis:v44];
  v45 = [NSLayoutConstraint constraintWithItem:v81 attribute:9 relatedBy:0 toItem:height attribute:9 multiplier:1.0 constant:0.0];
  [(ZWSlugBackgroundView *)height addConstraint:v45];

  v46 = [NSLayoutConstraint constraintWithItem:v81 attribute:10 relatedBy:0 toItem:height attribute:10 multiplier:1.0 constant:-20.0];
  [(ZWZoomSlugViewController *)self setTopTriangleRadiusDistanceConstraint:v46];

  topTriangleRadiusDistanceConstraint = [(ZWZoomSlugViewController *)self topTriangleRadiusDistanceConstraint];
  [(ZWSlugBackgroundView *)height addConstraint:topTriangleRadiusDistanceConstraint];

  [(ZWSlugTriangleView *)v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v48) = 1148846080;
  [(ZWSlugTriangleView *)v80 setContentCompressionResistancePriority:0 forAxis:v48];
  LODWORD(v49) = 1148846080;
  [(ZWSlugTriangleView *)v80 setContentCompressionResistancePriority:1 forAxis:v49];
  LODWORD(v50) = 1148846080;
  [(ZWSlugTriangleView *)v80 setContentHuggingPriority:0 forAxis:v50];
  LODWORD(v51) = 1148846080;
  [(ZWSlugTriangleView *)v80 setContentHuggingPriority:1 forAxis:v51];
  v52 = [NSLayoutConstraint constraintWithItem:v80 attribute:9 relatedBy:0 toItem:height attribute:9 multiplier:1.0 constant:0.0];
  [(ZWSlugBackgroundView *)height addConstraint:v52];

  v53 = [NSLayoutConstraint constraintWithItem:v80 attribute:10 relatedBy:0 toItem:height attribute:10 multiplier:1.0 constant:20.0];
  [(ZWZoomSlugViewController *)self setBottomTriangleRadiusDistanceConstraint:v53];

  bottomTriangleRadiusDistanceConstraint = [(ZWZoomSlugViewController *)self bottomTriangleRadiusDistanceConstraint];
  [(ZWSlugBackgroundView *)height addConstraint:bottomTriangleRadiusDistanceConstraint];

  [(ZWSlugTriangleView *)v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v55) = 1148846080;
  [(ZWSlugTriangleView *)v82 setContentCompressionResistancePriority:0 forAxis:v55];
  LODWORD(v56) = 1148846080;
  [(ZWSlugTriangleView *)v82 setContentCompressionResistancePriority:1 forAxis:v56];
  LODWORD(v57) = 1148846080;
  [(ZWSlugTriangleView *)v82 setContentHuggingPriority:0 forAxis:v57];
  LODWORD(v58) = 1148846080;
  [(ZWSlugTriangleView *)v82 setContentHuggingPriority:1 forAxis:v58];
  v59 = [NSLayoutConstraint constraintWithItem:v82 attribute:10 relatedBy:0 toItem:height attribute:10 multiplier:1.0 constant:0.0];
  [(ZWSlugBackgroundView *)height addConstraint:v59];

  v60 = [NSLayoutConstraint constraintWithItem:v82 attribute:9 relatedBy:0 toItem:height attribute:9 multiplier:1.0 constant:-20.0];
  [(ZWZoomSlugViewController *)self setLeftTriangleRadiusDistanceConstraint:v60];

  leftTriangleRadiusDistanceConstraint = [(ZWZoomSlugViewController *)self leftTriangleRadiusDistanceConstraint];
  [(ZWSlugBackgroundView *)height addConstraint:leftTriangleRadiusDistanceConstraint];

  [(ZWSlugTriangleView *)v79 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v62) = 1148846080;
  [(ZWSlugTriangleView *)v79 setContentCompressionResistancePriority:0 forAxis:v62];
  LODWORD(v63) = 1148846080;
  [(ZWSlugTriangleView *)v79 setContentCompressionResistancePriority:1 forAxis:v63];
  LODWORD(v64) = 1148846080;
  [(ZWSlugTriangleView *)v79 setContentHuggingPriority:0 forAxis:v64];
  LODWORD(v65) = 1148846080;
  [(ZWSlugTriangleView *)v79 setContentHuggingPriority:1 forAxis:v65];
  v66 = [NSLayoutConstraint constraintWithItem:v79 attribute:10 relatedBy:0 toItem:height attribute:10 multiplier:1.0 constant:0.0];
  [(ZWSlugBackgroundView *)height addConstraint:v66];

  v67 = [NSLayoutConstraint constraintWithItem:v79 attribute:9 relatedBy:0 toItem:height attribute:9 multiplier:1.0 constant:20.0];
  [(ZWZoomSlugViewController *)self setRightTriangleRadiusDistanceConstraint:v67];

  rightTriangleRadiusDistanceConstraint = [(ZWZoomSlugViewController *)self rightTriangleRadiusDistanceConstraint];
  [(ZWSlugBackgroundView *)height addConstraint:rightTriangleRadiusDistanceConstraint];

  v69 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleLongPress:"];
  view2 = [(ZWZoomSlugViewController *)self view];
  [view2 addGestureRecognizer:v69];

  [(ZWZoomSlugViewController *)self setLongPressGesture:v69];
  [v69 setDelegate:self];
  +[ZWZoomSlugViewController standByLongPressDuration];
  [v69 setMinimumPressDuration:?];
  [(ZWZoomSlugViewController *)self setLongPress:v69];
  v71 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTripleTap:"];
  [v71 setNumberOfTapsRequired:3];
  view3 = [(ZWZoomSlugViewController *)self view];
  [view3 addGestureRecognizer:v71];

  [(ZWZoomSlugViewController *)self setTripleTapGesture:v71];
  [v71 setDelegate:self];
  v73 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDoubleTap:"];
  [v73 setNumberOfTapsRequired:2];
  view4 = [(ZWZoomSlugViewController *)self view];
  [view4 addGestureRecognizer:v73];

  [(ZWZoomSlugViewController *)self setDoubleTapGesture:v73];
  [v73 setDelegate:self];
  [v73 requireGestureRecognizerToFail:v71];
  v75 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleSingleTap:"];
  view5 = [(ZWZoomSlugViewController *)self view];
  [view5 addGestureRecognizer:v75];

  [(ZWZoomSlugViewController *)self setSingleTapGesture:v75];
  [v75 setDelegate:self];
  [v75 requireGestureRecognizerToFail:v73];
  [v75 requireGestureRecognizerToFail:v71];
  v77 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"_handlePan:"];
  view6 = [(ZWZoomSlugViewController *)self view];
  [view6 addGestureRecognizer:v77];

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
  slugRingView = [(ZWZoomSlugViewController *)self slugRingView];
  [slugRingView zw_convertBoundsToScreenCoordinates];
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

- (void)updateLongPressDuration:(double)duration
{
  longPress = [(ZWZoomSlugViewController *)self longPress];
  [longPress setMinimumPressDuration:duration];
}

+ (double)longPressDurationForStandByMode:(BOOL)mode
{
  if (mode)
  {
    [self standByLongPressDuration];
  }

  else
  {
    [self zoomedInLongPressDuration];
  }

  return result;
}

- (void)setShouldHideWhileOrbing:(BOOL)orbing
{
  if (self->_shouldHideWhileOrbing != orbing)
  {
    orbingCopy = orbing;
    self->_shouldHideWhileOrbing = orbing;
    [ZWZoomSlugViewController _updateSlugDimStatus:"_updateSlugDimStatus:Animated:" Animated:?];
    if (orbingCopy)
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

- (void)_updateSlugAppearanceForMode:(unint64_t)mode
{
  if ([(ZWZoomSlugViewController *)self slugAppearanceState]!= mode)
  {
    if (mode == 2)
    {
      v36 = +[AXSettings sharedInstance];
      zoomAutopannerShouldPanWithAcceleration = [v36 zoomAutopannerShouldPanWithAcceleration];

      if (zoomAutopannerShouldPanWithAcceleration)
      {
        collapsingRingWidthConstraint = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
        [collapsingRingWidthConstraint setConstant:150.0];

        collapsingRingHeightConstraint = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
        [collapsingRingHeightConstraint setConstant:150.0];
      }

      else
      {
        view = [(ZWZoomSlugViewController *)self view];
        superview = [view superview];
        [superview bounds];
        v43 = v42 / 5.0;
        collapsingRingWidthConstraint2 = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
        [collapsingRingWidthConstraint2 setConstant:v43];

        view2 = [(ZWZoomSlugViewController *)self view];
        superview2 = [view2 superview];
        [superview2 bounds];
        v48 = v47 / 5.0;
        collapsingRingHeightConstraint2 = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
        [collapsingRingHeightConstraint2 setConstant:v48];

        slugRingView = [(ZWZoomSlugViewController *)self slugRingView];
        [slugRingView setShouldUseContinuousCornerRadius:0];

        collapsingRingHeightConstraint = [(ZWZoomSlugViewController *)self circlePivotingView];
        [collapsingRingHeightConstraint setShouldUseRoundedRect:1];
      }

      circlePivotWidthConstraint = [(ZWZoomSlugViewController *)self circlePivotWidthConstraint];
      [circlePivotWidthConstraint setConstant:38.0];

      circlePivotHeightConstraint = [(ZWZoomSlugViewController *)self circlePivotHeightConstraint];
      [circlePivotHeightConstraint setConstant:38.0];

      v53 = +[AXSettings sharedInstance];
      zoomAutopannerShouldPanWithAcceleration2 = [v53 zoomAutopannerShouldPanWithAcceleration];

      if (zoomAutopannerShouldPanWithAcceleration2)
      {
        leftTriangleRadiusDistanceConstraint = [(ZWZoomSlugViewController *)self leftTriangleRadiusDistanceConstraint];
        [leftTriangleRadiusDistanceConstraint setConstant:-55.0];

        topTriangleRadiusDistanceConstraint = [(ZWZoomSlugViewController *)self topTriangleRadiusDistanceConstraint];
        [topTriangleRadiusDistanceConstraint setConstant:-55.0];

        rightTriangleRadiusDistanceConstraint = [(ZWZoomSlugViewController *)self rightTriangleRadiusDistanceConstraint];
        [rightTriangleRadiusDistanceConstraint setConstant:55.0];

        bottomTriangleRadiusDistanceConstraint = [(ZWZoomSlugViewController *)self bottomTriangleRadiusDistanceConstraint];
        [bottomTriangleRadiusDistanceConstraint setConstant:55.0];
LABEL_16:

        goto LABEL_17;
      }

      leftTriangleView = [(ZWZoomSlugViewController *)self leftTriangleView];
      [leftTriangleView setHidden:1];

      rightTriangleView = [(ZWZoomSlugViewController *)self rightTriangleView];
      [rightTriangleView setHidden:1];

      topTriangleView = [(ZWZoomSlugViewController *)self topTriangleView];
      [topTriangleView setHidden:1];

      bottomTriangleView = [(ZWZoomSlugViewController *)self bottomTriangleView];
      bottomTriangleRadiusDistanceConstraint = bottomTriangleView;
      v35 = 1;
LABEL_15:
      [bottomTriangleView setHidden:v35];
      goto LABEL_16;
    }

    if (mode == 1)
    {
      collapsingRingWidthConstraint3 = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
      [collapsingRingWidthConstraint3 setConstant:78.0];

      collapsingRingHeightConstraint3 = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
      [collapsingRingHeightConstraint3 setConstant:78.0];

      slugRingView2 = [(ZWZoomSlugViewController *)self slugRingView];
      [slugRingView2 setShouldUseContinuousCornerRadius:1];

      circlePivotingView = [(ZWZoomSlugViewController *)self circlePivotingView];
      [circlePivotingView setShouldUseRoundedRect:0];

      circlePivotWidthConstraint2 = [(ZWZoomSlugViewController *)self circlePivotWidthConstraint];
      [circlePivotWidthConstraint2 setConstant:38.0];

      circlePivotHeightConstraint2 = [(ZWZoomSlugViewController *)self circlePivotHeightConstraint];
      [circlePivotHeightConstraint2 setConstant:38.0];

      circlePivotOffsetXConstraint = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
      [circlePivotOffsetXConstraint setConstant:0.0];

      circlePivotOffsetYConstraint = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
      [circlePivotOffsetYConstraint setConstant:0.0];

      leftTriangleRadiusDistanceConstraint2 = [(ZWZoomSlugViewController *)self leftTriangleRadiusDistanceConstraint];
      [leftTriangleRadiusDistanceConstraint2 setConstant:-30.0];

      topTriangleRadiusDistanceConstraint2 = [(ZWZoomSlugViewController *)self topTriangleRadiusDistanceConstraint];
      [topTriangleRadiusDistanceConstraint2 setConstant:-30.0];

      rightTriangleRadiusDistanceConstraint2 = [(ZWZoomSlugViewController *)self rightTriangleRadiusDistanceConstraint];
      [rightTriangleRadiusDistanceConstraint2 setConstant:30.0];

      bottomTriangleRadiusDistanceConstraint2 = [(ZWZoomSlugViewController *)self bottomTriangleRadiusDistanceConstraint];
      v17 = bottomTriangleRadiusDistanceConstraint2;
      v18 = 30.0;
    }

    else
    {
      if (mode)
      {
        goto LABEL_17;
      }

      collapsingRingWidthConstraint4 = [(ZWZoomSlugViewController *)self collapsingRingWidthConstraint];
      [collapsingRingWidthConstraint4 setConstant:60.0];

      collapsingRingHeightConstraint4 = [(ZWZoomSlugViewController *)self collapsingRingHeightConstraint];
      [collapsingRingHeightConstraint4 setConstant:60.0];

      slugRingView3 = [(ZWZoomSlugViewController *)self slugRingView];
      [slugRingView3 setShouldUseContinuousCornerRadius:1];

      circlePivotingView2 = [(ZWZoomSlugViewController *)self circlePivotingView];
      [circlePivotingView2 setShouldUseRoundedRect:0];

      circlePivotWidthConstraint3 = [(ZWZoomSlugViewController *)self circlePivotWidthConstraint];
      [circlePivotWidthConstraint3 setConstant:16.0];

      circlePivotHeightConstraint3 = [(ZWZoomSlugViewController *)self circlePivotHeightConstraint];
      [circlePivotHeightConstraint3 setConstant:16.0];

      circlePivotOffsetXConstraint2 = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
      [circlePivotOffsetXConstraint2 setConstant:0.0];

      circlePivotOffsetYConstraint2 = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
      [circlePivotOffsetYConstraint2 setConstant:0.0];

      leftTriangleRadiusDistanceConstraint3 = [(ZWZoomSlugViewController *)self leftTriangleRadiusDistanceConstraint];
      [leftTriangleRadiusDistanceConstraint3 setConstant:-20.0];

      topTriangleRadiusDistanceConstraint3 = [(ZWZoomSlugViewController *)self topTriangleRadiusDistanceConstraint];
      [topTriangleRadiusDistanceConstraint3 setConstant:-20.0];

      rightTriangleRadiusDistanceConstraint3 = [(ZWZoomSlugViewController *)self rightTriangleRadiusDistanceConstraint];
      [rightTriangleRadiusDistanceConstraint3 setConstant:20.0];

      bottomTriangleRadiusDistanceConstraint2 = [(ZWZoomSlugViewController *)self bottomTriangleRadiusDistanceConstraint];
      v17 = bottomTriangleRadiusDistanceConstraint2;
      v18 = 20.0;
    }

    [bottomTriangleRadiusDistanceConstraint2 setConstant:v18];

    if (![(ZWZoomSlugViewController *)self inSpeakUnderFingerMode])
    {
      leftTriangleView2 = [(ZWZoomSlugViewController *)self leftTriangleView];
      [leftTriangleView2 setHidden:0];

      rightTriangleView2 = [(ZWZoomSlugViewController *)self rightTriangleView];
      [rightTriangleView2 setHidden:0];

      topTriangleView2 = [(ZWZoomSlugViewController *)self topTriangleView];
      [topTriangleView2 setHidden:0];

      bottomTriangleView = [(ZWZoomSlugViewController *)self bottomTriangleView];
      bottomTriangleRadiusDistanceConstraint = bottomTriangleView;
      v35 = 0;
      goto LABEL_15;
    }

LABEL_17:
    view3 = [(ZWZoomSlugViewController *)self view];
    [view3 setNeedsLayout];

    circlePivotingView3 = [(ZWZoomSlugViewController *)self circlePivotingView];
    [circlePivotingView3 setNeedsLayout];

    slugRingView4 = [(ZWZoomSlugViewController *)self slugRingView];
    [slugRingView4 setNeedsLayout];

    topTriangleView3 = [(ZWZoomSlugViewController *)self topTriangleView];
    [topTriangleView3 setNeedsLayout];

    rightTriangleView3 = [(ZWZoomSlugViewController *)self rightTriangleView];
    [rightTriangleView3 setNeedsLayout];

    bottomTriangleView2 = [(ZWZoomSlugViewController *)self bottomTriangleView];
    [bottomTriangleView2 setNeedsLayout];

    leftTriangleView3 = [(ZWZoomSlugViewController *)self leftTriangleView];
    [leftTriangleView3 setNeedsLayout];

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = __57__ZWZoomSlugViewController__updateSlugAppearanceForMode___block_invoke;
    v68[3] = &unk_78D00;
    v68[4] = self;
    [UIView animateWithDuration:0 delay:v68 options:0 animations:ZWDefaultZoomAnimationDuration() completion:0.0];
    [(ZWZoomSlugViewController *)self setSlugAppearanceState:mode];
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

- (void)updateIdleSlugOpacityAndPreviewImmediately:(double)immediately
{
  [(ZWZoomSlugViewController *)self setIdleSlugOpacity:immediately];

  [(ZWZoomSlugViewController *)self _updateSlugDimStatus:1 Animated:0];
}

- (void)wakeSlug
{
  [(ZWZoomSlugViewController *)self _updateSlugDimStatus:0 Animated:1];

  [(ZWZoomSlugViewController *)self _dimAfterDelay];
}

- (void)_dimAfterDelay
{
  dimTimer = [(ZWZoomSlugViewController *)self dimTimer];
  [dimTimer cancel];

  dimTimer2 = [(ZWZoomSlugViewController *)self dimTimer];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __42__ZWZoomSlugViewController__dimAfterDelay__block_invoke;
  v5[3] = &unk_78D00;
  v5[4] = self;
  [dimTimer2 afterDelay:v5 processBlock:2.0];
}

- (void)_updateSlugDimStatus:(BOOL)status Animated:(BOOL)animated
{
  animatedCopy = animated;
  statusCopy = status;
  dimTimer = [(ZWZoomSlugViewController *)self dimTimer];
  [dimTimer cancel];

  v8 = 1.0;
  if (statusCopy)
  {
    v8 = 0.0;
    if (!self->_shouldHideWhileOrbing)
    {
      [(ZWZoomSlugViewController *)self idleSlugOpacity];
      v8 = v9;
    }
  }

  v10 = 0.0;
  if (animatedCopy)
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

  circlePivotingView = [(ZWZoomSlugViewController *)self circlePivotingView];
  circleLayer = [circlePivotingView circleLayer];
  [circleLayer setFillColor:v4];

  topTriangleView = [(ZWZoomSlugViewController *)self topTriangleView];
  triangleLayer = [topTriangleView triangleLayer];
  [triangleLayer setFillColor:v4];

  rightTriangleView = [(ZWZoomSlugViewController *)self rightTriangleView];
  triangleLayer2 = [rightTriangleView triangleLayer];
  [triangleLayer2 setFillColor:v4];

  bottomTriangleView = [(ZWZoomSlugViewController *)self bottomTriangleView];
  triangleLayer3 = [bottomTriangleView triangleLayer];
  [triangleLayer3 setFillColor:v4];

  leftTriangleView = [(ZWZoomSlugViewController *)self leftTriangleView];
  triangleLayer4 = [leftTriangleView triangleLayer];
  [triangleLayer4 setFillColor:v4];

  slugRingView = [(ZWZoomSlugViewController *)self slugRingView];
  layer = [slugRingView layer];
  [layer setBorderColor:v4];

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

  slugRingView = [(ZWZoomSlugViewController *)self slugRingView];
  layer = [slugRingView layer];
  [layer setBorderWidth:v3];
}

- (void)_updateGestures
{
  allGesturesEnabled = self->_allGesturesEnabled;
  longPressGesture = [(ZWZoomSlugViewController *)self longPressGesture];
  [longPressGesture setEnabled:allGesturesEnabled];

  v5 = self->_allGesturesEnabled;
  panGesture = [(ZWZoomSlugViewController *)self panGesture];
  [panGesture setEnabled:v5];

  v17 = +[AXSettings sharedInstance];
  zoomSlugSingleTapAction = [v17 zoomSlugSingleTapAction];
  zoomSlugDoubleTapAction = [v17 zoomSlugDoubleTapAction];
  zoomSlugTripleTapAction = [v17 zoomSlugTripleTapAction];
  zoomSlugTapAndSlideToAdjustZoomLevelEnabled = [v17 zoomSlugTapAndSlideToAdjustZoomLevelEnabled];
  if (self->_tapGesturesEnabled)
  {
    v11 = (zoomSlugSingleTapAction != 0) | zoomSlugTapAndSlideToAdjustZoomLevelEnabled;
  }

  else
  {
    v11 = 0;
  }

  singleTapGesture = [(ZWZoomSlugViewController *)self singleTapGesture];
  [singleTapGesture setEnabled:v11 & 1];

  if (zoomSlugDoubleTapAction)
  {
    tapGesturesEnabled = self->_tapGesturesEnabled;
  }

  else
  {
    tapGesturesEnabled = 0;
  }

  doubleTapGesture = [(ZWZoomSlugViewController *)self doubleTapGesture];
  [doubleTapGesture setEnabled:tapGesturesEnabled];

  if (zoomSlugTripleTapAction)
  {
    v15 = self->_tapGesturesEnabled;
  }

  else
  {
    v15 = 0;
  }

  tripleTapGesture = [(ZWZoomSlugViewController *)self tripleTapGesture];
  [tripleTapGesture setEnabled:v15];
}

- (BOOL)_panGestureIsRecognizing
{
  panGesture = [(ZWZoomSlugViewController *)self panGesture];
  state = [panGesture state];

  return (state - 1) < 2;
}

- (void)_handleSingleTap:(id)tap
{
  if ([tap state] == &dword_0 + 3 && !-[ZWZoomSlugViewController _panGestureIsRecognizing](self, "_panGestureIsRecognizing"))
  {
    v4 = +[AXSettings sharedInstance];
    zoomSlugSingleTapAction = [v4 zoomSlugSingleTapAction];

    if (zoomSlugSingleTapAction)
    {
      [(ZWZoomSlugViewController *)self _didBeginInteractingWithSlug];
      delegate = [(ZWZoomSlugViewController *)self delegate];
      [delegate slugWasSingleTappedWithSlugViewController:self];

      [(ZWZoomSlugViewController *)self setInUserRepositioningMode:0];

      [(ZWZoomSlugViewController *)self _didFinishInteractingWithSlug];
    }
  }
}

- (void)_handleDoubleTap:(id)tap
{
  if ([tap state] == &dword_0 + 3)
  {
    v4 = +[AXSettings sharedInstance];
    zoomSlugDoubleTapAction = [v4 zoomSlugDoubleTapAction];

    if (zoomSlugDoubleTapAction)
    {
      [(ZWZoomSlugViewController *)self _didBeginInteractingWithSlug];
      delegate = [(ZWZoomSlugViewController *)self delegate];
      [delegate slugWasDoubleTappedWithSlugViewController:self];

      [(ZWZoomSlugViewController *)self setInUserRepositioningMode:0];

      [(ZWZoomSlugViewController *)self _didFinishInteractingWithSlug];
    }
  }
}

- (void)_handleTripleTap:(id)tap
{
  if ([tap state] == &dword_0 + 3)
  {
    v4 = +[AXSettings sharedInstance];
    zoomSlugTripleTapAction = [v4 zoomSlugTripleTapAction];

    if (zoomSlugTripleTapAction)
    {
      [(ZWZoomSlugViewController *)self _didBeginInteractingWithSlug];
      delegate = [(ZWZoomSlugViewController *)self delegate];
      [delegate slugWasTripleTappedWithSlugViewController:self];

      [(ZWZoomSlugViewController *)self setInUserRepositioningMode:0];

      [(ZWZoomSlugViewController *)self _didFinishInteractingWithSlug];
    }
  }
}

- (void)_handleLongPress:(id)press
{
  state = [press state];
  if ((state - 3) < 3)
  {
    if ([(ZWZoomSlugViewController *)self isOrbPanning])
    {
      delegate = [(ZWZoomSlugViewController *)self delegate];
      [delegate endOrbZoomWithSlugViewController:self];

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

  if (state == &dword_0 + 2)
  {
    return;
  }

  if (state != &dword_0 + 1)
  {
    goto LABEL_9;
  }

  [(ZWZoomSlugViewController *)self setIsOrbPanning:1];
  delegate2 = [(ZWZoomSlugViewController *)self delegate];
  v7 = [delegate2 attemptOrbZoomIfAppropriateWithSlugViewController:self];

  if ((v7 & 1) == 0)
  {
    [(ZWZoomSlugViewController *)self setIsOrbPanning:0];
    [(ZWZoomSlugViewController *)self _updateSlugAppearanceForMode:1];
    [(ZWZoomSlugViewController *)self setInUserRepositioningMode:1];
    v8 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"Zoom: slug longPress"];
    [(ZWZoomSlugViewController *)self setDisableDashBoardGesturesForLongPressAssertion:v8];
  }
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if ((state - 3) < 3)
  {
    [(ZWZoomSlugViewController *)self setDisableDashBoardGesturesForPanAssertion:0];
    [(ZWZoomSlugViewController *)self setTapGesturesEnabled:1];
    delegate = [(ZWZoomSlugViewController *)self delegate];
    [delegate wantsToStopAutopannerWithSlugViewController:self];

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

  if (state == &dword_0 + 2)
  {
    view = [(ZWZoomSlugViewController *)self view];
    [panCopy translationInView:view];
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
      delegate2 = [(ZWZoomSlugViewController *)self delegate];
      [(ZWZoomSlugViewController *)self deltaFromInitialTouch];
      [delegate2 zoomSlugViewController:self wantsToAdjustZoomLevelWithDelta:?];
LABEL_12:

LABEL_13:
      p_lastPanLocation->x = v14;
      p_lastPanLocation->y = v16;
      goto LABEL_35;
    }

    if ([(ZWZoomSlugViewController *)self isOrbPanning])
    {
      view2 = [(ZWZoomSlugViewController *)self view];
      [view2 center];
      v23 = v14 + v22;
      view3 = [(ZWZoomSlugViewController *)self view];
      [view3 center];
      v26 = v16 + v25;

      delegate2 = [(ZWZoomSlugViewController *)self delegate];
      [delegate2 updateOrbZoomAtPoint:self withSlugViewController:{v23, v26}];
      goto LABEL_12;
    }

    if (![(ZWZoomSlugViewController *)self isInUserRepositioningMode])
    {
      v55 = +[AXSettings sharedInstance];
      zoomAutopannerShouldPanWithAcceleration = [v55 zoomAutopannerShouldPanWithAcceleration];

      if (zoomAutopannerShouldPanWithAcceleration)
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
        circlePivotOffsetXConstraint = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
        [circlePivotOffsetXConstraint constant];
        v64 = v63;
        [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
        v66 = v64 + v65;
        circlePivotOffsetYConstraint = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
        [circlePivotOffsetYConstraint constant];
        v69 = v68;
        [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
        v71 = v69 + v70;

        view4 = [(ZWZoomSlugViewController *)self view];
        superview = [view4 superview];
        [superview bounds];
        v74 = 5.0 + 5.0;
        v59 = v75 / (5.0 + 5.0) + -19.0 - 3.0;

        if (v66 < v59)
        {
          v59 = v66;
        }

        view5 = [(ZWZoomSlugViewController *)self view];
        superview2 = [view5 superview];
        [superview2 bounds];
        v79 = -(v78 / v74 + -19.0 - 3.0);

        if (v59 < v79)
        {
          v59 = v79;
        }

        view6 = [(ZWZoomSlugViewController *)self view];
        superview3 = [view6 superview];
        [superview3 bounds];
        v83 = v82 / v74 + -19.0 - 3.0;

        if (v71 >= v83)
        {
          v71 = v83;
        }

        view7 = [(ZWZoomSlugViewController *)self view];
        superview4 = [view7 superview];
        [superview4 bounds];
        v87 = -(v86 / v74 + -19.0 - 3.0);

        if (v71 < v87)
        {
          v71 = v87;
        }
      }

      circlePivotOffsetXConstraint2 = [(ZWZoomSlugViewController *)self circlePivotOffsetXConstraint];
      [circlePivotOffsetXConstraint2 setConstant:v59];

      circlePivotOffsetYConstraint2 = [(ZWZoomSlugViewController *)self circlePivotOffsetYConstraint];
      [circlePivotOffsetYConstraint2 setConstant:v71];

      goto LABEL_13;
    }

    if (!AXDeviceHasJindo())
    {
      delegate2 = [(ZWZoomSlugViewController *)self delegate];
      view8 = [(ZWZoomSlugViewController *)self view];
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      [delegate2 zoomSlugViewController:self didDragSlug:view8 withDelta:?];

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
      view9 = [(ZWZoomSlugViewController *)self view];
      [view9 frame];
      v127 = v91;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      v93 = v92;
      view10 = [(ZWZoomSlugViewController *)self view];
      superview5 = [view10 superview];
      [superview5 bounds];
      v96 = v95;
      view11 = [(ZWZoomSlugViewController *)self view];
      [view11 frame];
      v99 = v98;
      view12 = [(ZWZoomSlugViewController *)self view];
      [view12 frame];
      v102 = v101;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      v104 = v103;
      view13 = [(ZWZoomSlugViewController *)self view];
      [view13 frame];
      v107 = v106;
      view14 = [(ZWZoomSlugViewController *)self view];
      [view14 frame];
      v137.size.height = v109;
      v137.origin.x = v127 + v93;
      v137.origin.y = v96 - (v99 + v102 + 5.0 + v104);
      v137.size.width = v107;
      v135 = CGRectIntersection(self->_foreheadRect, v137);
      IsNull = CGRectIsNull(v135);

      if (IsNull)
      {
LABEL_30:
        delegate3 = [(ZWZoomSlugViewController *)self delegate];
        view15 = [(ZWZoomSlugViewController *)self view];
        [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
        [delegate3 zoomSlugViewController:self didDragSlug:view15 withDelta:?];
LABEL_63:

        _Block_object_dispose(&v130, 8);
        goto LABEL_13;
      }

      delegate3 = [(ZWZoomSlugViewController *)self delegate];
      view15 = [(ZWZoomSlugViewController *)self view];
      view16 = [(ZWZoomSlugViewController *)self view];
      superview6 = [view16 superview];
      [superview6 bounds];
      v118 = v117;
      v119 = self->_foreheadRect.origin.y;
      height = self->_foreheadRect.size.height;
      view17 = [(ZWZoomSlugViewController *)self view];
      [view17 frame];
      v123 = v122;
      view18 = [(ZWZoomSlugViewController *)self view];
      [view18 frame];
      v126 = v125;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      [delegate3 zoomSlugViewController:self didDragSlug:view15 withDelta:v118 - v119 - height - (v123 + v126)];
    }

    else
    {
      if (v36 != 3)
      {
        goto LABEL_30;
      }

      view19 = [(ZWZoomSlugViewController *)self view];
      [view19 frame];
      v39 = v38;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      v41 = v40;
      view20 = [(ZWZoomSlugViewController *)self view];
      [view20 frame];
      v44 = v43;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      v46 = v45;
      view21 = [(ZWZoomSlugViewController *)self view];
      [view21 frame];
      v49 = v48;
      view22 = [(ZWZoomSlugViewController *)self view];
      [view22 frame];
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

      delegate3 = [(ZWZoomSlugViewController *)self delegate];
      view15 = [(ZWZoomSlugViewController *)self view];
      v111 = self->_foreheadRect.origin.y;
      v112 = self->_foreheadRect.size.height;
      view16 = [(ZWZoomSlugViewController *)self view];
      [view16 frame];
      v115 = v114;
      [(ZWZoomSlugViewController *)self deltaFromLastPanEvent];
      [delegate3 zoomSlugViewController:self didDragSlug:view15 withDelta:v111 + v112 - v115];
    }

    goto LABEL_63;
  }

  if (state == &dword_0 + 1)
  {
    v8 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"Zoom: slug panning"];
    [(ZWZoomSlugViewController *)self setDisableDashBoardGesturesForPanAssertion:v8];

    isInPanZoomingMode = [(ZWZoomSlugViewController *)self isInPanZoomingMode];
    singleTapGesture = [(ZWZoomSlugViewController *)self singleTapGesture];
    if ([singleTapGesture state] == &dword_0 + 3)
    {
      v11 = +[AXSettings sharedInstance];
      -[ZWZoomSlugViewController setInPanZoomingMode:](self, "setInPanZoomingMode:", [v11 zoomSlugTapAndSlideToAdjustZoomLevelEnabled]);
    }

    else
    {
      [(ZWZoomSlugViewController *)self setInPanZoomingMode:0];
    }

    if ((isInPanZoomingMode & 1) == 0 && [(ZWZoomSlugViewController *)self isInPanZoomingMode])
    {
      delegate4 = [(ZWZoomSlugViewController *)self delegate];
      [delegate4 prepareForSlugZoomPanningWithSlugViewController:self];
    }

    [(ZWZoomSlugViewController *)self setTapGesturesEnabled:0];
    view23 = [(ZWZoomSlugViewController *)self view];
    [panCopy translationInView:view23];
    self->_lastPanLocation.x = v29;
    self->_lastPanLocation.y = v30;

    view24 = [(ZWZoomSlugViewController *)self view];
    [panCopy translationInView:view24];
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
        delegate5 = [(ZWZoomSlugViewController *)self delegate];
        [delegate5 wantsToStartAutopannerWithSlugViewController:self];

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
  zoomSlugSingleTapAction = [v3 zoomSlugSingleTapAction];

  v5 = +[AXSettings sharedInstance];
  zoomSlugDoubleTapAction = [v5 zoomSlugDoubleTapAction];

  v7 = +[AXSettings sharedInstance];
  zoomSlugTripleTapAction = [v7 zoomSlugTripleTapAction];

  v16 = objc_alloc_init(NSMutableString);
  if (zoomSlugSingleTapAction == &dword_0 + 1)
  {
    v9 = @"ZW_SLUG_HINT_SINGLE_TAP_ZOOM_MENU";
  }

  else
  {
    if (zoomSlugSingleTapAction != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    v9 = @"ZW_SLUG_HINT_SINGLE_TAP_TOGGLE_ZOOM";
  }

  v10 = ZWLocString(v9);
  [v16 appendString:v10];

  [v16 appendString:@" "];
LABEL_6:
  if (zoomSlugDoubleTapAction == &dword_0 + 1)
  {
    v11 = @"ZW_SLUG_HINT_DOUBLE_TAP_ZOOM_MENU";
  }

  else
  {
    if (zoomSlugDoubleTapAction != &dword_0 + 2)
    {
      goto LABEL_11;
    }

    v11 = @"ZW_SLUG_HINT_DOUBLE_TAP_TOGGLE_ZOOM";
  }

  v12 = ZWLocString(v11);
  [v16 appendString:v12];

  [v16 appendString:@" "];
LABEL_11:
  if (zoomSlugTripleTapAction == &dword_0 + 1)
  {
    v13 = @"ZW_SLUG_HINT_TRIPLE_TAP_ZOOM_MENU";
  }

  else
  {
    if (zoomSlugTripleTapAction != &dword_0 + 2)
    {
      goto LABEL_16;
    }

    v13 = @"ZW_SLUG_HINT_TRIPLE_TAP_TOGGLE_ZOOM";
  }

  v14 = ZWLocString(v13);
  [v16 appendString:v14];

LABEL_16:
  view = [(ZWZoomSlugViewController *)self view];
  [view setAccessibilityHint:v16];
}

- (void)_updateRingAndTriangleVisiblity:(BOOL)visiblity
{
  visiblityCopy = visiblity;
  leftTriangleView = [(ZWZoomSlugViewController *)self leftTriangleView];
  [leftTriangleView setHidden:visiblityCopy];

  rightTriangleView = [(ZWZoomSlugViewController *)self rightTriangleView];
  [rightTriangleView setHidden:visiblityCopy];

  topTriangleView = [(ZWZoomSlugViewController *)self topTriangleView];
  [topTriangleView setHidden:visiblityCopy];

  bottomTriangleView = [(ZWZoomSlugViewController *)self bottomTriangleView];
  [bottomTriangleView setHidden:visiblityCopy];

  circlePivotingView = [(ZWZoomSlugViewController *)self circlePivotingView];
  [circlePivotingView setHidden:visiblityCopy];

  speakFingerImageView = [(ZWSlugCollapsingRingView *)self->_slugRingView speakFingerImageView];
  [speakFingerImageView setHidden:visiblityCopy ^ 1];
}

- (void)updateUIForSpeakFingerStateChange
{
  v3 = +[AXSpeakFingerManager sharedInstance];
  speakFingerState = [v3 speakFingerState];

  if (speakFingerState > 2)
  {
    if (speakFingerState == (&dword_0 + 3))
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = @"Stop";
      goto LABEL_12;
    }

    if (speakFingerState != &dword_4)
    {
      return;
    }
  }

  else if (speakFingerState != (&dword_0 + 1))
  {
    if (speakFingerState == (&dword_0 + 2))
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
  speakFingerImageView = [(ZWSlugCollapsingRingView *)self->_slugRingView speakFingerImageView];
  [speakFingerImageView setImage:v10];

  [(ZWZoomSlugViewController *)self _updateRingAndTriangleVisiblity:1];

  [(ZWZoomSlugViewController *)self setInSpeakUnderFingerMode:1];
}

- (void)systemApertureLayoutDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy count] == &dword_0 + 1)
  {
    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    self->_foreheadRect.origin.x = v6;
    self->_foreheadRect.origin.y = v7;
    self->_foreheadRect.size.width = v8;
    self->_foreheadRect.size.height = v9;
  }

  else
  {
    if ([changeCopy count] != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [changeCopy objectAtIndexedSubscript:1];
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
      view = [(ZWZoomSlugViewController *)self view];
      [view frame];
      v43 = v42;
      view2 = [(ZWZoomSlugViewController *)self view];
      superview = [view2 superview];
      [superview bounds];
      v47 = v46;
      view3 = [(ZWZoomSlugViewController *)self view];
      [view3 frame];
      v50 = v49;
      view4 = [(ZWZoomSlugViewController *)self view];
      [view4 frame];
      v53 = v52;
      view5 = [(ZWZoomSlugViewController *)self view];
      [view5 frame];
      v56 = v55;
      view6 = [(ZWZoomSlugViewController *)self view];
      [view6 frame];
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
        delegate = [(ZWZoomSlugViewController *)self delegate];
        height = self->_foreheadRect.size.height;
        y = self->_foreheadRect.origin.y;
        view7 = [(ZWZoomSlugViewController *)self view];
        superview2 = [view7 superview];
        [superview2 bounds];
        v64 = v63;
        view8 = [(ZWZoomSlugViewController *)self view];
        [view8 frame];
        v67 = v66;
        view9 = [(ZWZoomSlugViewController *)self view];
        [view9 frame];
        [delegate _moveZoomItemWithControllerToDodgeJindo:self byDelta:{-(height + y + 5.0 + v67 + v69 - v64), 0.0}];

        goto LABEL_15;
      }
    }

    else if (v23 == 3)
    {
      view10 = [(ZWZoomSlugViewController *)self view];
      [view10 frame];
      v27 = v26;
      view11 = [(ZWZoomSlugViewController *)self view];
      [view11 frame];
      v30 = v29;
      view12 = [(ZWZoomSlugViewController *)self view];
      [view12 frame];
      v33 = v32;
      view13 = [(ZWZoomSlugViewController *)self view];
      [view13 frame];
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
        delegate = [(ZWZoomSlugViewController *)self delegate];
        v38 = self->_foreheadRect.size.height;
        v39 = self->_foreheadRect.origin.y;
        view7 = [(ZWZoomSlugViewController *)self view];
        [view7 frame];
        [delegate _moveZoomItemWithControllerToDodgeJindo:self byDelta:{v38 + v39 + 5.0 - v41, 0.0}];
LABEL_15:
      }
    }

    else
    {
      view14 = [(ZWZoomSlugViewController *)self view];
      [view14 frame];
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
        delegate = [(ZWZoomSlugViewController *)self delegate];
        v76 = self->_foreheadRect.size.height;
        v77 = self->_foreheadRect.origin.y;
        view7 = [(ZWZoomSlugViewController *)self view];
        [view7 frame];
        [delegate _moveZoomItemWithControllerToDodgeJindo:self byDelta:{0.0, v76 + v77 - v78}];
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

- (void)userInteractionHasBecomeActiveWithFirstTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v7.receiver = self;
  v7.super_class = ZWZoomSlugViewController;
  [(ZWZoomViewController *)&v7 userInteractionHasBecomeActiveWithFirstTouchAtLocation:?];
  view = [(ZWZoomSlugViewController *)self view];
  [view bounds];
  v8.x = x;
  v8.y = y;
  CGRectContainsPoint(v9, v8);
}

- (CGPoint)offsetForAutopanner:(id)autopanner
{
  v4 = +[AXSettings sharedInstance];
  zoomAutopannerShouldPanWithAcceleration = [v4 zoomAutopannerShouldPanWithAcceleration];

  if (zoomAutopannerShouldPanWithAcceleration)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  longPressGesture = [(ZWZoomSlugViewController *)self longPressGesture];

  panGesture = [(ZWZoomSlugViewController *)self panGesture];

  if (longPressGesture == recognizerCopy)
  {
    v10 = panGesture == gestureRecognizerCopy;
  }

  else if (panGesture == recognizerCopy)
  {
    longPressGesture2 = [(ZWZoomSlugViewController *)self longPressGesture];
    if (longPressGesture2 == gestureRecognizerCopy)
    {
      v10 = 1;
    }

    else
    {
      doubleTapGesture = [(ZWZoomSlugViewController *)self doubleTapGesture];
      if (doubleTapGesture == gestureRecognizerCopy)
      {
        v10 = 1;
      }

      else
      {
        tripleTapGesture = [(ZWZoomSlugViewController *)self tripleTapGesture];
        if (tripleTapGesture == gestureRecognizerCopy)
        {
          v10 = 1;
        }

        else
        {
          singleTapGesture = [(ZWZoomSlugViewController *)self singleTapGesture];
          v10 = singleTapGesture == gestureRecognizerCopy;
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