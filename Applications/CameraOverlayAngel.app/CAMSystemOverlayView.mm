@interface CAMSystemOverlayView
+ (void)_applyGainModulationToElement:(id)element withInputAmount:(id)amount;
- (BOOL)_isCoachingAnimationCycling;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isSliderPresented;
- (BOOL)isSliderVisible;
- (CAFilter)_progressiveEdgeBlurFilter;
- (CAMSystemOverlaySlider)slider;
- (CAMSystemOverlayView)initWithFrame:(CGRect)frame;
- (CAMSystemOverlayViewDelegate)delegate;
- (CAMutableMeshTransform)_dialEffectMesh;
- (CEKFluidBehaviorSettings)_scaleSettings;
- (CGRect)_frameForButton;
- (CGRect)_frameForSliderVisible:(BOOL)visible content:(int64_t)content scale:(double)scale;
- (CGSize)_valueTextSize;
- (double)_coachingAnimationTransitionMilestoneToPhase:(int64_t)phase;
- (double)_dropletCenterYFromState:(id)state toState:(id)toState;
- (id)_blurFilter;
- (id)_createValueLabelProgressPropertyWithInitialValue:(double)value;
- (id)_springAnimationWithKeyPath:(id)path;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)overlaySlider:(id)slider cellConfigurationForValue:(id)value;
- (void)_beginCoachingAnimationIteration;
- (void)_completeCoachingAnimationIteration;
- (void)_createCoachingAnimationLabelIfNeeded;
- (void)_createHandleBarViewIfNeeded;
- (void)_createMenuIfNeeded;
- (void)_createSliderIfNeeded;
- (void)_createValueLabelIfNeeded;
- (void)_handleCoachingAnimationDidEnd;
- (void)_handlePan:(id)pan;
- (void)_handleSliderTap:(id)tap;
- (void)_handleTouchingMenu:(id)menu;
- (void)_handleTouchingSlider:(id)slider;
- (void)_resetDropletBackgroundIfNeededFromState:(id)state toState:(id)toState;
- (void)_setCoachingAnimationPhase:(int64_t)phase;
- (void)_sliderContent:(int64_t)content blurred:(BOOL)blurred;
- (void)_startCoachingAnimationCycleIfNeeded;
- (void)_stopCoachingAnimationCycleIfNeeded;
- (void)_updateCoachingAnimationLabelOrientation;
- (void)_updateScaleForSliderContent:(int64_t)content withMode:(int64_t)mode sliderContentDidChange:(BOOL)change updateDropletScale:(BOOL)scale;
- (void)_updateValueLabelFont;
- (void)_updateValueLabelLayoutMetrics;
- (void)_updateValueLabelTextWithForcedMeasurement:(BOOL)measurement;
- (void)_updateValueLabelVisibility;
- (void)layoutSubviews;
- (void)overlayMenuSlider:(id)slider didSelectControlAt:(int64_t)at;
- (void)overlayMenuSliderDidEndScrolling:(id)scrolling;
- (void)overlayMenuSliderWillBeginScrolling:(id)scrolling;
- (void)overlaySliderDidChangeCurrentValue:(id)value;
- (void)overlaySliderDidEndScrolling:(id)scrolling;
- (void)overlaySliderWillBeginScrolling:(id)scrolling;
- (void)performMenuPresentation:(unint64_t)presentation;
- (void)reloadValueLabel;
- (void)setAlignment:(unint64_t)alignment;
- (void)setHandleBarVisible:(BOOL)visible animated:(BOOL)animated;
- (void)systemOverlayVisibility:(id)visibility changedForReason:(int64_t)reason;
- (void)updateUIForButtonStage:(unint64_t)stage;
@end

@implementation CAMSystemOverlayView

- (CAMSystemOverlayView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = CAMSystemOverlayView;
  v3 = [(CAMSystemOverlayView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitOverrides = [(CAMSystemOverlayView *)v3 traitOverrides];
    [traitOverrides setUserInterfaceStyle:2];

    v4->_orientation = 1;
    v4->_sliderContent = 0;
    v4->_alignment = 1;
    v6 = objc_alloc_init(CAMSystemOverlayVisibility);
    menuVisibility = v4->__menuVisibility;
    v4->__menuVisibility = v6;

    [(CAMSystemOverlayVisibility *)v4->__menuVisibility setDelegate:v4];
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"systemOverlay.menuHidingDelayMilliseconds", @"com.apple.camera", 0);
    v9 = AppIntegerValue / 1000.0;
    if (AppIntegerValue <= 0)
    {
      v9 = 2.0;
    }

    [(CAMSystemOverlayVisibility *)v4->__menuVisibility setDelayedHideDuration:v9];
    [(CAMSystemOverlayVisibility *)v4->__menuVisibility setName:@"MenuVisibility"];
    v10 = +[CAMOverlaySliderState hiddenState];
    sliderState = v4->_sliderState;
    v4->_sliderState = v10;

    v4->__coachingAnimationPhase = -1;
    v25 = objc_opt_class();
    v12 = [NSArray arrayWithObjects:&v25 count:1];
    v13 = [(CAMSystemOverlayView *)v4 registerForTraitChanges:v12 withAction:"_updateValueLabelFont"];

    v14 = [[UIPanGestureRecognizer alloc] initWithTarget:v4 action:"_handlePan:"];
    [v14 _wantsGESEvents:1];
    [(CAMSystemOverlayView *)v4 addGestureRecognizer:v14];
    [(CAMSystemOverlayView *)v4 _setPanGestureRecognizer:v14];
    v4->__dropletScale = 1.0;
    v4->_halfPressEnabled = 1;
    v15 = objc_alloc_init(UIView);
    tipAnchor = v4->_tipAnchor;
    v4->_tipAnchor = v15;

    [(CAMSystemOverlayView *)v4 addSubview:v4->_tipAnchor];
    v17 = objc_alloc_init(CAMScreenLuminanceObserverLayer);
    screenLuminanceObserverLayer = v4->__screenLuminanceObserverLayer;
    v4->__screenLuminanceObserverLayer = v17;

    layer = [(CAMSystemOverlayView *)v4 layer];
    [layer addSublayer:v4->__screenLuminanceObserverLayer];

    objc_initWeak(&location, v4);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100006098;
    v21[3] = &unk_100055440;
    objc_copyWeak(&v22, &location);
    [(CAMScreenLuminanceObserverLayer *)v4->__screenLuminanceObserverLayer setGainModulationCallback:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)layoutSubviews
{
  [(CAMSystemOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _backgroundContext = [(CAMSystemOverlayView *)self _backgroundContext];
  v86 = v8;
  [_backgroundContext setFrame:{v4, v6, v8, v10}];

  traitCollection = [(CAMSystemOverlayView *)self traitCollection];
  [traitCollection displayScale];

  orientation = [(CAMSystemOverlayView *)self orientation];
  isSliderVisible = [(CAMSystemOverlayView *)self isSliderVisible];
  sliderIfLoaded = [(CAMSystemOverlayView *)self sliderIfLoaded];
  menu = [(CAMSystemOverlayView *)self menu];
  _handleBarView = [(CAMSystemOverlayView *)self _handleBarView];
  sliderContent = [(CAMSystemOverlayView *)self sliderContent];
  [(CAMSystemOverlayView *)self _frameForSliderVisible:isSliderVisible content:0 scale:1.0];
  v19 = 0.0;
  v107 = CGRectInset(v106, 0.0, -16.0);
  x = v107.origin.x;
  y = v107.origin.y;
  width = v107.size.width;
  height = v107.size.height;
  if (sliderContent)
  {
    v19 = 20.0;
  }

  v24 = v19 + CGRectGetMaxX(v107);
  v108.origin.x = x;
  v85 = y;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  [sliderIfLoaded setCenter:{v24, CGRectGetMidY(v108)}];
  v83 = width;
  v84 = height;
  CEKRectWithSize();
  [sliderIfLoaded setBounds:?];
  [(CAMSystemOverlayView *)self _frameForSliderVisible:isSliderVisible content:1 scale:1.0];
  v110 = CGRectInset(v109, 0.0, -16.0);
  v25 = v110.origin.x;
  v26 = v110.origin.y;
  v27 = v110.size.width;
  v28 = v110.size.height;
  MaxX = CGRectGetMaxX(v110);
  v111.origin.x = v25;
  v111.origin.y = v26;
  v111.size.width = v27;
  v111.size.height = v28;
  [menu setCenter:{MaxX, CGRectGetMidY(v111)}];
  CEKRectWithSize();
  v93 = menu;
  [menu setBounds:?];
  _valueLabel = [(CAMSystemOverlayView *)self _valueLabel];
  [(CAMSystemOverlayView *)self _valueTextSize];
  CEKRectWithSize();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  memset(&v105, 0, sizeof(v105));
  CAMOrientationTransform();
  memset(&v104, 0, sizeof(v104));
  v91 = v33;
  v92 = v31;
  v112.origin.x = v31;
  v112.origin.y = v33;
  v90 = v35;
  v112.size.width = v35;
  v112.size.height = v37;
  CGRectApplyAffineTransform(v112, &v104);
  sliderContent2 = [(CAMSystemOverlayView *)self sliderContent];
  [(CAMSystemOverlayView *)self _dropletScale];
  [(CAMSystemOverlayView *)self _frameForSliderVisible:isSliderVisible content:sliderContent2 scale:?];
  v39 = v113.origin.x;
  v40 = v113.origin.y;
  v41 = v113.size.width;
  v42 = v113.size.height;
  CGRectGetMidY(v113);
  v114.origin.x = v39;
  v114.origin.y = v40;
  v114.size.width = v41;
  v114.size.height = v42;
  CGRectGetMidY(v114);
  v89 = v37;
  if (isSliderVisible && [(CAMSystemOverlayView *)self isHandleBarVisible])
  {
    v43 = 0.5;
  }

  else
  {
    v43 = 0.0;
  }

  v88 = v43;
  alignment = [(CAMSystemOverlayView *)self alignment];
  if (alignment == 1)
  {
    if (isSliderVisible)
    {
      v117.origin.x = v39;
      v117.origin.y = v40;
      v117.size.width = v41;
      v117.size.height = v42;
      CGRectGetMinX(v117);
    }

    v118.origin.x = v39;
    v118.origin.y = v40;
    v118.size.width = v41;
    v118.size.height = v42;
    CGRectGetMinX(v118);
  }

  else if (!alignment)
  {
    if (isSliderVisible)
    {
      v115.origin.x = v39;
      v115.origin.y = v40;
      v115.size.width = v41;
      v115.size.height = v42;
      CGRectGetMaxX(v115);
    }

    v116.origin.x = v39;
    v116.origin.y = v40;
    v116.size.width = v41;
    v116.size.height = v42;
    CGRectGetMaxX(v116);
  }

  _valueLabelContainer = [(CAMSystemOverlayView *)self _valueLabelContainer];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [_valueLabelContainer setCenter:?];
  v104 = v105;
  [_valueLabelContainer setTransform:&v104];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [_handleBarView setCenter:?];
  [_handleBarView setBounds:{0.0, 0.0, 3.0, 53.0}];
  layer = [_handleBarView layer];
  [layer setCornerRadius:1.5];

  _coachingAnimationLabel = [(CAMSystemOverlayView *)self _coachingAnimationLabel];
  v48 = _coachingAnimationLabel;
  if (_coachingAnimationLabel)
  {
    [_coachingAnimationLabel bounds];
    v49 = v119.origin.x;
    v50 = v119.origin.y;
    v51 = v119.size.width;
    v52 = v119.size.height;
    if (CGRectIsEmpty(v119))
    {
      [v48 intrinsicContentSize];
      v51 = v53;
      v52 = v54;
      v49 = CGPointZero.x;
      v50 = CGPointZero.y;
      [v48 setBounds:{CGPointZero.x, v50, v53, v54}];
    }

    memset(&v104, 0, sizeof(v104));
    [v48 transform];
    v103 = v104;
    v120.origin.x = v49;
    v120.origin.y = v50;
    v120.size.width = v51;
    v120.size.height = v52;
    CGRectApplyAffineTransform(v120, &v103);
    [(CAMSystemOverlayView *)self _frameForButton];
    traitCollection2 = [(CAMSystemOverlayView *)self traitCollection];
    [traitCollection2 displayScale];
    v82 = v56;
    UIRectCenteredYInRectScale();

    [(CAMSystemOverlayView *)self bounds];
    UIRectGetCenter();
    [v48 setCenter:?];
  }

  [(CAMSystemOverlayView *)self _frameForSliderVisible:1 content:[(CAMSystemOverlayView *)self sliderContent] scale:1.0];
  UIRectInsetEdges();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  _hitTestingBackground = [(CAMSystemOverlayView *)self _hitTestingBackground];
  [_hitTestingBackground setFrame:{v58, v60, v62, v64}];

  v66 = orientation;
  v67 = orientation == 1;
  if (isSliderVisible)
  {
    [_valueLabelContainer frame];
    v68 = CGRectGetMinX(v121) + -20.0;
    v69 = v85;
    v70 = v84;
    v71 = v86 - v83;
  }

  else
  {
    v68 = CGRectZero.origin.x;
    v69 = CGRectZero.origin.y;
    v71 = CGRectZero.size.width;
    v70 = CGRectZero.size.height;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  _screenLuminanceObserverLayer = [(CAMSystemOverlayView *)self _screenLuminanceObserverLayer];
  [_screenLuminanceObserverLayer setFrame:{v68, v69, v71, v70}];

  +[CATransaction commit];
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_100006AB0;
  v95[3] = &unk_100055468;
  v98 = v92;
  v99 = v91;
  v100 = v90;
  v101 = v89;
  v96 = _valueLabelContainer;
  v73 = _valueLabel;
  v97 = v73;
  v102 = v67;
  v74 = _valueLabelContainer;
  [UIView performWithoutAnimation:v95];
  if (v66 == 1)
  {
    UIRectGetCenter();
    [v73 setCenter:?];
  }

  tipAnchor = [(CAMSystemOverlayView *)self tipAnchor];
  [(CAMSystemOverlayView *)self _frameForSliderVisible:0 content:0 scale:1.0];
  v76 = v122.origin.x;
  v77 = v122.origin.y;
  v78 = v122.size.width;
  v79 = v122.size.height;
  v80 = CGRectGetMaxX(v122) + -10.0;
  v123.origin.x = v76;
  v123.origin.y = v77;
  v123.size.width = v78;
  v123.size.height = v79;
  [tipAnchor setCenter:{v80, CGRectGetMidY(v123)}];
  CEKRectWithSize();
  [tipAnchor setBounds:?];
  if (sliderContent)
  {
    v81 = 0;
  }

  else
  {
    v81 = isSliderVisible;
  }

  if (!sliderContent)
  {
    LODWORD(isSliderVisible) = 0;
  }

  [sliderIfLoaded setAlpha:v81];
  [v93 setAlpha:isSliderVisible];
  [_handleBarView setAlpha:v88];
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_100006B60;
  v94[3] = &unk_100055490;
  v94[4] = self;
  [UIView performWithoutAnimation:v94];
}

- (void)_updateValueLabelVisibility
{
  _valueLabel = [(CAMSystemOverlayView *)self _valueLabel];
  sliderIfLoaded = [(CAMSystemOverlayView *)self sliderIfLoaded];
  style = [sliderIfLoaded style];

  v6 = style == 6 && [(CAMSystemOverlayView *)self sliderContent]== 0;
  isSliderVisible = [(CAMSystemOverlayView *)self isSliderVisible];
  _valueLabelPresentationProgress = [(CAMSystemOverlayView *)self _valueLabelPresentationProgress];
  if ([(CAMSystemOverlayView *)self sliderContent]== 1)
  {
    delegate = [(CAMSystemOverlayView *)self delegate];
    menu = [(CAMSystemOverlayView *)self menu];
    enabled = [delegate isControlEnabledAtIndex:{objc_msgSend(menu, "selectedControlIndex")}];
  }

  else
  {
    delegate = [(CAMSystemOverlayView *)self sliderIfLoaded];
    enabled = [delegate enabled];
  }

  if (_valueLabelPresentationProgress)
  {
    [_valueLabelPresentationProgress presentationValue];
    v13 = fmax(v12, 0.0);
  }

  else
  {
    v13 = isSliderVisible;
  }

  if (enabled)
  {
    v14 = +[UIColor systemYellowColor];
    v15 = 1.0;
  }

  else
  {
    v14 = +[UIColor labelColor];
    v15 = 0.4;
  }

  [_valueLabel setTextColor:v14];

  if (v6)
  {
    v15 = 0.0;
  }

  CGAffineTransformMakeScale(&v17, v13, v13);
  v16 = v17;
  [_valueLabel setTransform:&v16];
  [_valueLabel setAlpha:v13 * v15];
}

- (CGRect)_frameForSliderVisible:(BOOL)visible content:(int64_t)content scale:(double)scale
{
  visibleCopy = visible;
  if (content == 1)
  {
    v8 = 31.0;
    v30 = 220.0;
  }

  else
  {
    v30 = 0.0;
    v8 = 0.0;
    if (!content)
    {
      sliderIfLoaded = [(CAMSystemOverlayView *)self sliderIfLoaded];
      style = [sliderIfLoaded style];

      v8 = 18.0;
      v30 = 180.0;
      if (style == 6)
      {
        orientation = [(CAMSystemOverlayView *)self orientation];
        v8 = 29.0;
        if ((orientation - 1) >= 2)
        {
          v8 = 22.0;
        }
      }
    }
  }

  v29 = v8;
  CGAffineTransformMakeScale(&v32, scale, scale);
  *&v31 = *&vmlaq_n_f64(vmulq_n_f64(*&v32.c, v30), *&v32.a, v29);
  CEKRectWithSize();
  [(CAMSystemOverlayView *)self _frameForButton];
  traitCollection = [(CAMSystemOverlayView *)self traitCollection];
  [traitCollection displayScale];
  v28 = v13;
  UIRectCenteredYInRectScale();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  alignment = [(CAMSystemOverlayView *)self alignment];
  if (alignment == 1)
  {
    [(CAMSystemOverlayView *)self bounds];
    v23 = v24 - v31;
    if (!visibleCopy)
    {
      v23 = v24;
    }
  }

  else
  {
    v23 = -v31;
    if (visibleCopy)
    {
      v23 = 0.0;
    }

    if (alignment)
    {
      v23 = v15;
    }
  }

  v25 = v17;
  v26 = v19;
  v27 = v21;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v23;
  return result;
}

- (CGRect)_frameForButton
{
  v3 = +[CAMCaptureCapabilities capabilities];
  alignment = [(CAMSystemOverlayView *)self alignment];
  if (alignment == 1)
  {
    [v3 frameForPhysicalButton:6];
    goto LABEL_5;
  }

  height = 0.0;
  width = 0.0;
  y = 0.0;
  x = 0.0;
  if (!alignment)
  {
    [v3 frameForPhysicalButton:1];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v3 frameForPhysicalButton:2];
    v28.origin.x = v17;
    v28.origin.y = v18;
    v28.size.width = v19;
    v28.size.height = v20;
    v25.origin.x = v10;
    v25.origin.y = v12;
    v25.size.width = v14;
    v25.size.height = v16;
    v26 = CGRectUnion(v25, v28);
LABEL_5:
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = CAMSystemOverlayView;
  v5 = [(CAMSystemOverlayView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (void)setAlignment:(unint64_t)alignment
{
  if (self->_alignment != alignment)
  {
    self->_alignment = alignment;
    sliderIfLoaded = [(CAMSystemOverlayView *)self sliderIfLoaded];
    [sliderIfLoaded setAlignment:alignment];

    menu = [(CAMSystemOverlayView *)self menu];
    [menu setAlignment:alignment];

    [(CAMSystemOverlayView *)self setNeedsLayout];
  }
}

- (BOOL)isSliderVisible
{
  sliderState = [(CAMSystemOverlayView *)self sliderState];
  _presented = [sliderState _presented];

  return _presented;
}

- (BOOL)isSliderPresented
{
  if (self->_sliderPresented)
  {
    return [(CAMSystemOverlayView *)self isSliderVisible];
  }

  else
  {
    return 0;
  }
}

- (void)performMenuPresentation:(unint64_t)presentation
{
  if (presentation == 2)
  {
    _menuVisibility = [(CAMSystemOverlayView *)self _menuVisibility];
    [_menuVisibility hideImmediately];

    [(CAMSystemOverlayView *)self _setSliderContent:0 animated:1];
  }

  else
  {
    if (presentation == 1)
    {
      _menuVisibility2 = [(CAMSystemOverlayView *)self _menuVisibility];
      [_menuVisibility2 addReason:0];
    }

    else
    {
      if (presentation)
      {
        return;
      }

      _menuVisibility2 = [(CAMSystemOverlayView *)self _menuVisibility];
      [_menuVisibility2 removeReason:0];
    }
  }
}

- (void)_createMenuIfNeeded
{
  if (!self->_menu)
  {
    v3 = objc_alloc_init(_TtC18CameraOverlayAngel17OverlayMenuSlider);
    menu = self->_menu;
    self->_menu = v3;

    [(OverlayMenuSlider *)self->_menu setOrientation:[(CAMSystemOverlayView *)self orientation]];
    [(OverlayMenuSlider *)self->_menu setDelegate:self];
    [(OverlayMenuSlider *)self->_menu setAlignment:[(CAMSystemOverlayView *)self alignment]];
    _blurFilter = [(CAMSystemOverlayView *)self _blurFilter];
    v17[0] = _blurFilter;
    _progressiveEdgeBlurFilter = [(CAMSystemOverlayView *)self _progressiveEdgeBlurFilter];
    v17[1] = _progressiveEdgeBlurFilter;
    v7 = [NSArray arrayWithObjects:v17 count:2];
    layer = [(OverlayMenuSlider *)self->_menu layer];
    [layer setFilters:v7];

    [(OverlayMenuSlider *)self->_menu setAnchorPoint:1.0, 0.5];
    v9 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleTouchingMenu:"];
    [v9 _wantsGESEvents:1];
    [v9 setMinimumPressDuration:0.0];
    [v9 setDelegate:self];
    [(OverlayMenuSlider *)self->_menu addGestureRecognizer:v9];
    _dialEffectMesh = [(CAMSystemOverlayView *)self _dialEffectMesh];
    layer2 = [(OverlayMenuSlider *)self->_menu layer];
    [layer2 setMeshTransform:_dialEffectMesh];

    traitCollection = [(CAMSystemOverlayView *)self traitCollection];
    [traitCollection displayScale];
    v14 = v13;
    layer3 = [(OverlayMenuSlider *)self->_menu layer];
    [layer3 setRasterizationScale:v14];

    layer4 = [(OverlayMenuSlider *)self->_menu layer];
    [layer4 setAllowsGroupBlending:1];

    [(CAMSystemOverlayView *)self addSubview:self->_menu];
  }
}

- (void)_createSliderIfNeeded
{
  if (!self->_slider)
  {
    v3 = objc_alloc_init(UIView);
    [(CAMSystemOverlayView *)self addSubview:v3];
    [(CAMSystemOverlayView *)self _setHitTestingBackground:v3];
    v4 = objc_alloc_init(CAMSystemOverlaySlider);
    slider = self->_slider;
    self->_slider = v4;

    [(CAMSystemOverlaySlider *)self->_slider setAlignment:[(CAMSystemOverlayView *)self alignment]];
    [(CAMSystemOverlaySlider *)self->_slider setDelegate:self];
    [(CAMSystemOverlaySlider *)self->_slider setFeedbackDisabled:self->_sliderFeedbackDisabled];
    _blurFilter = [(CAMSystemOverlayView *)self _blurFilter];
    v27[0] = _blurFilter;
    _progressiveEdgeBlurFilter = [(CAMSystemOverlayView *)self _progressiveEdgeBlurFilter];
    v27[1] = _progressiveEdgeBlurFilter;
    v8 = [NSArray arrayWithObjects:v27 count:2];
    layer = [(CAMSystemOverlaySlider *)self->_slider layer];
    [layer setFilters:v8];

    [(CAMSystemOverlaySlider *)self->_slider setAnchorPoint:1.0, 0.5];
    v10 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleTouchingSlider:"];
    [v10 _wantsGESEvents:1];
    [v10 setMinimumPressDuration:0.0];
    [v10 setDelegate:self];
    [(CAMSystemOverlaySlider *)self->_slider addGestureRecognizer:v10];
    [(CAMSystemOverlayView *)self _setTouchingSliderGestureRecognizer:v10];
    v11 = [DRPDropletContextView alloc];
    [(CAMSystemOverlayView *)self bounds];
    v12 = [v11 initWithFrame:?];
    backgroundContext = self->__backgroundContext;
    self->__backgroundContext = v12;

    [(DRPDropletContextView *)self->__backgroundContext setClipsToBounds:1];
    layer2 = [(DRPDropletContextView *)self->__backgroundContext layer];
    [layer2 setAllowsHitTesting:0];

    [(CAMSystemOverlayView *)self addSubview:self->__backgroundContext];
    v15 = [(DRPDropletContextView *)self->__backgroundContext addContainerWithContentView:0];
    backgroundDroplet = self->__backgroundDroplet;
    self->__backgroundDroplet = v15;

    v17 = objc_alloc_init(DRPDropletAnimationCoordinator);
    backgroundAnimator = self->__backgroundAnimator;
    self->__backgroundAnimator = v17;

    self->__backgroundHintNeedsReset = 1;
    [(CAMSystemOverlayView *)self addSubview:self->_slider];
    _dialEffectMesh = [(CAMSystemOverlayView *)self _dialEffectMesh];
    layer3 = [(CAMSystemOverlaySlider *)self->_slider layer];
    [layer3 setMeshTransform:_dialEffectMesh];

    traitCollection = [(CAMSystemOverlayView *)self traitCollection];
    [traitCollection displayScale];
    v23 = v22;
    layer4 = [(CAMSystemOverlaySlider *)self->_slider layer];
    [layer4 setRasterizationScale:v23];

    layer5 = [(CAMSystemOverlaySlider *)self->_slider layer];
    [layer5 setAllowsGroupBlending:1];

    v26 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleSliderTap:"];
    [v26 setDelegate:self];
    [v26 _wantsGESEvents:1];
    [(CAMSystemOverlayView *)self _setTapGestureRecognizer:v26];
    [(CAMSystemOverlayView *)self addGestureRecognizer:v26];
  }
}

- (CAMSystemOverlaySlider)slider
{
  [(CAMSystemOverlayView *)self _createSliderIfNeeded];
  slider = self->_slider;

  return slider;
}

- (void)setHandleBarVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_handleBarVisible != visible)
  {
    self->_handleBarVisible = visible;
    if (animated)
    {
      [(CAMSystemOverlayView *)self layoutIfNeeded];
      [(CAMSystemOverlayView *)self setNeedsLayout];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100007DC4;
      v5[3] = &unk_100055490;
      v5[4] = self;
      [UIView animateWithDuration:0 delay:v5 options:0 animations:0.3 completion:0.0];
    }

    else
    {

      [(CAMSystemOverlayView *)self setNeedsLayout];
    }
  }
}

- (void)updateUIForButtonStage:(unint64_t)stage
{
  [(CAMSystemOverlayView *)self _setButtonStage:stage];
  sliderState = [(CAMSystemOverlayView *)self sliderState];
  _presented = [sliderState _presented];

  if (_presented)
  {
    sliderContent = [(CAMSystemOverlayView *)self sliderContent];

    [(CAMSystemOverlayView *)self _updateScaleForSliderContent:sliderContent withMode:3 sliderContentDidChange:0 updateDropletScale:1];
  }
}

- (void)_handleSliderTap:(id)tap
{
  tapCopy = tap;
  sliderContent = [(CAMSystemOverlayView *)self sliderContent];
  if (sliderContent == 1)
  {
    menu = [(CAMSystemOverlayView *)self menu];
    [tapCopy locationInView:self];
    v9 = [menu indexOfImageClosestToPoint:self in:?];
    if (v9 == [menu selectedControlIndex])
    {
      delegate = [(CAMSystemOverlayView *)self delegate];
      menu2 = [(CAMSystemOverlayView *)self menu];
      v12 = [delegate isControlEnabledAtIndex:{objc_msgSend(menu2, "selectedControlIndex")}];

      if (v12)
      {
        _menuVisibility = [(CAMSystemOverlayView *)self _menuVisibility];
        [_menuVisibility hideImmediately];

        [(CAMSystemOverlayView *)self _setSliderContent:0 animated:1];
      }
    }

    else
    {
      [menu setSelectedControlIndex:v9 animated:1];
    }
  }

  else if (!sliderContent)
  {
    if ([(CAMSystemOverlayView *)self isSliderVisible])
    {
      delegate2 = [(CAMSystemOverlayView *)self delegate];
      v6 = [delegate2 overlayViewShouldPresentMenu:self];

      if (v6)
      {
        _menuVisibility2 = [(CAMSystemOverlayView *)self _menuVisibility];
        [_menuVisibility2 showTransiently];

        [(CAMSystemOverlayView *)self _setSliderContent:1 animated:1];
      }
    }
  }
}

- (void)_handleTouchingMenu:(id)menu
{
  state = [menu state];
  if ((state - 3) >= 2)
  {
    if (state != 1)
    {
      return;
    }

    _menuVisibility = [(CAMSystemOverlayView *)self _menuVisibility];
    [_menuVisibility addReason:2];
  }

  else
  {
    _menuVisibility = [(CAMSystemOverlayView *)self _menuVisibility];
    [_menuVisibility removeReason:2];
  }
}

- (void)_handleTouchingSlider:(id)slider
{
  if ([slider state] - 3 <= 1)
  {

    [(CAMSystemOverlayView *)self _updateScaleForSliderContent:0 withMode:3 sliderContentDidChange:0 updateDropletScale:1];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  _tapGestureRecognizer = [(CAMSystemOverlayView *)self _tapGestureRecognizer];

  if (_tapGestureRecognizer == recognizerCopy)
  {
    [touchCopy locationInView:self];
    v11 = v10;
    [(CAMSystemOverlayView *)self bounds];
    v9 = vabdd_f64(v11, CGRectGetMaxX(v13)) < 40.0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  [panCopy translationInView:self];
  v5 = v4;
  sliderContent = [(CAMSystemOverlayView *)self sliderContent];
  if ([panCopy state] == 3)
  {
    [(CAMSystemOverlayView *)self _updateScaleForSliderContent:[(CAMSystemOverlayView *)self sliderContent] withMode:3 sliderContentDidChange:0 updateDropletScale:1];
    if (v5 < 0.0)
    {
      v7 = 10.0;
    }

    else
    {
      v7 = 3.0;
    }

    delegate = [(CAMSystemOverlayView *)self delegate];
    menu = [(CAMSystemOverlayView *)self menu];
    v10 = [delegate isControlEnabledAtIndex:{objc_msgSend(menu, "selectedControlIndex")}];

    if (fabs(v5) <= v7)
    {
      goto LABEL_13;
    }

    if (sliderContent == 1)
    {
      if (((v5 >= 0.0) & v10) != 1)
      {
        goto LABEL_13;
      }

      _menuVisibility = [(CAMSystemOverlayView *)self _menuVisibility];
      [_menuVisibility hideImmediately];

      selfCopy2 = self;
      v16 = 0;
      goto LABEL_19;
    }

    if (!sliderContent)
    {
      delegate2 = [(CAMSystemOverlayView *)self delegate];
      v12 = [delegate2 overlayViewShouldPresentMenu:self];

      if (v12)
      {
        if (v5 >= 0.0)
        {
          delegate3 = [(CAMSystemOverlayView *)self delegate];
          [delegate3 overlayView:self performedDismissGesture:panCopy];

          goto LABEL_13;
        }

        _menuVisibility2 = [(CAMSystemOverlayView *)self _menuVisibility];
        [_menuVisibility2 showTransiently];

        selfCopy2 = self;
        v16 = 1;
LABEL_19:
        [(CAMSystemOverlayView *)selfCopy2 _setSliderContent:v16 animated:1];
      }
    }
  }

  else if ([panCopy state] == 2)
  {
    [(CAMSystemOverlayView *)self _updateScaleForSliderContent:[(CAMSystemOverlayView *)self sliderContent] withMode:5 sliderContentDidChange:0 updateDropletScale:1];
  }

LABEL_13:
}

- (CEKFluidBehaviorSettings)_scaleSettings
{
  scaleSettings = self->__scaleSettings;
  if (!scaleSettings)
  {
    v4 = objc_alloc_init(CEKFluidBehaviorSettings);
    v5 = self->__scaleSettings;
    self->__scaleSettings = v4;

    [(CEKFluidBehaviorSettings *)self->__scaleSettings setDefaultValues];
    [(CEKFluidBehaviorSettings *)self->__scaleSettings setDampingRatio:1.0];
    [(CEKFluidBehaviorSettings *)self->__scaleSettings setResponse:0.4];
    scaleSettings = self->__scaleSettings;
  }

  return scaleSettings;
}

- (void)_sliderContent:(int64_t)content blurred:(BOOL)blurred
{
  blurredCopy = blurred;
  if (content == 1)
  {
    menu = [(CAMSystemOverlayView *)self menu];
  }

  else if (content)
  {
    menu = 0;
  }

  else
  {
    menu = [(CAMSystemOverlayView *)self slider];
  }

  v13 = menu;
  layer = [menu layer];
  v8 = !blurredCopy;
  if (blurredCopy)
  {
    v9 = &off_100057AF0;
  }

  else
  {
    v9 = &off_100057B00;
  }

  if (v8)
  {
    v10 = &off_100057AF0;
  }

  else
  {
    v10 = &off_100057B00;
  }

  v11 = [(CAMSystemOverlayView *)self _springAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v11 setFromValue:v10];
  [v11 setToValue:v9];
  [v11 setDuration:0.3];
  [layer addAnimation:v11 forKey:@"blurRadiusAnimation"];
  layer2 = [v13 layer];
  [layer2 setValue:v9 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (id)_springAnimationWithKeyPath:(id)path
{
  v3 = [CASpringAnimation animationWithKeyPath:path];
  [v3 setMass:2.0];
  [v3 setStiffness:300.0];
  [v3 setDamping:50.0];

  return v3;
}

- (void)_updateScaleForSliderContent:(int64_t)content withMode:(int64_t)mode sliderContentDidChange:(BOOL)change updateDropletScale:(BOOL)scale
{
  scaleCopy = scale;
  changeCopy = change;
  sliderState = [(CAMSystemOverlayView *)self sliderState];
  _presented = [sliderState _presented];

  if (_presented)
  {
    _buttonStage = [(CAMSystemOverlayView *)self _buttonStage];
    if (_buttonStage == 4)
    {
      v14 = 1.2;
    }

    else
    {
      v14 = 1.0;
      if ((_buttonStage & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        if ([(CAMSystemOverlayView *)self halfPressEnabled])
        {
          v14 = 1.1;
        }

        else
        {
          v14 = 1.0;
        }
      }
    }

    _touchingSliderGestureRecognizer = [(CAMSystemOverlayView *)self _touchingSliderGestureRecognizer];
    state = [_touchingSliderGestureRecognizer state];

    if ((state - 1) < 2)
    {
      v14 = 1.25;
    }

    _panGestureRecognizer = [(CAMSystemOverlayView *)self _panGestureRecognizer];
    if ([_panGestureRecognizer state] == 2)
    {
      [_panGestureRecognizer translationInView:self];
      v19 = v18;
      v20 = log(fabs(v18) / 100.0 + 1.0);
      v21 = v20 / (v20 + 1.0);
      v22 = 0.2;
      if (v19 >= 0.0)
      {
        v22 = -0.5;
      }

      v14 = v22 * v21 + 1.0;
    }

    if (changeCopy && [(CAMSystemOverlayView *)self sliderContent]!= content)
    {
      if (content == 1)
      {
        v14 = 0.4;
      }

      else if (!content)
      {
        v14 = 1.5;
      }
    }
  }

  else
  {
    v14 = 0.2;
  }

  v23 = mode - 3;
  if (scaleCopy)
  {
    [(CAMSystemOverlayView *)self _setDropletScale:v23 < 3 animated:mode == 5 interactive:v14];
  }

  if (content == 1)
  {
    menu = [(CAMSystemOverlayView *)self menu];
    goto LABEL_28;
  }

  if (!content)
  {
    menu = [(CAMSystemOverlayView *)self slider];
LABEL_28:
    v25 = menu;
    goto LABEL_30;
  }

  v25 = 0;
LABEL_30:
  if (v23 > 2)
  {
    CGAffineTransformMakeScale(&v28, v14, v14);
    v27 = v28;
    [v25 setTransform:&v27];
  }

  else
  {
    _scaleSettings = [(CAMSystemOverlayView *)self _scaleSettings];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100008830;
    v29[3] = &unk_1000554B8;
    v30 = v25;
    v31 = v14;
    [UIView cek_animateWithSettings:_scaleSettings mode:mode animations:v29 completion:0];
  }
}

- (void)reloadValueLabel
{
  [(CAMSystemOverlayView *)self _updateValueLabelText];

  [(CAMSystemOverlayView *)self _updateValueLabelVisibility];
}

- (void)_createValueLabelIfNeeded
{
  _valueLabel = [(CAMSystemOverlayView *)self _valueLabel];

  if (!_valueLabel)
  {
    v12 = objc_alloc_init(UILabel);
    v4 = +[UIColor systemYellowColor];
    [v12 setTextColor:v4];

    [v12 setTextAlignment:1];
    layer = [v12 layer];
    LODWORD(v6) = 1045220557;
    [layer setShadowOpacity:v6];

    layer2 = [v12 layer];
    [layer2 setShadowRadius:15.0];

    height = CGSizeZero.height;
    layer3 = [v12 layer];
    [layer3 setShadowOffset:{CGSizeZero.width, height}];

    layer4 = [v12 layer];
    [layer4 setShadowPathIsBounds:1];

    [v12 setAccessibilityIgnoresInvertColors:1];
    v11 = objc_alloc_init(UIView);
    [v11 addSubview:v12];
    [(CAMSystemOverlayView *)self addSubview:v11];
    [(CAMSystemOverlayView *)self _setValueLabelContainer:v11];
    [(CAMSystemOverlayView *)self _setValueLabel:v12];
    [(CAMSystemOverlayView *)self _updateValueLabelFont];
  }
}

- (void)_updateValueLabelLayoutMetrics
{
  _valueLabel = [(CAMSystemOverlayView *)self _valueLabel];
  [_valueLabel intrinsicContentSize];
  traitCollection = [(CAMSystemOverlayView *)self traitCollection];
  [traitCollection displayScale];
  UISizeCeilToScale();
  v5 = v4;
  v7 = v6;

  [(CAMSystemOverlayView *)self _valueTextSize];
  if (v5 != v9 || v7 != v8)
  {
    [(CAMSystemOverlayView *)self _setValueTextSize:v5, v7];
    [(CAMSystemOverlayView *)self setNeedsLayout];
  }
}

- (void)_updateValueLabelFont
{
  _valueLabel = [(CAMSystemOverlayView *)self _valueLabel];
  traitCollection = [(CAMSystemOverlayView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  [CAMZoomButton fontSizeForContentSize:preferredContentSizeCategory];
  v6 = v5;
  font = [_valueLabel font];
  [font pointSize];
  v9 = v8;

  if (v6 != v9)
  {
    v10 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    [_valueLabel setFont:v10];

    [(CAMSystemOverlayView *)self _updateValueLabelLayoutMetrics];
  }
}

- (void)_updateValueLabelTextWithForcedMeasurement:(BOOL)measurement
{
  sliderContent = [(CAMSystemOverlayView *)self sliderContent];
  if (sliderContent)
  {
    if (sliderContent != 1)
    {
      valueTextForCurrentControl = 0;
      goto LABEL_7;
    }

    delegate = [(CAMSystemOverlayView *)self delegate];
    menu = [(CAMSystemOverlayView *)self menu];
    valueTextForCurrentControl = [delegate menuTitleForControlAtIndex:{objc_msgSend(menu, "selectedControlIndex")}];
  }

  else
  {
    delegate = [(CAMSystemOverlayView *)self delegate];
    valueTextForCurrentControl = [delegate valueTextForCurrentControl];
  }

LABEL_7:
  _valueLabel = [(CAMSystemOverlayView *)self _valueLabel];
  text = [_valueLabel text];
  [_valueLabel setText:valueTextForCurrentControl];
  v10 = +[NSCharacterSet whitespaceCharacterSet];
  v11 = [valueTextForCurrentControl componentsSeparatedByCharactersInSet:v10];
  v12 = [v11 count];

  v13 = +[NSCharacterSet whitespaceCharacterSet];
  v14 = [text componentsSeparatedByCharactersInSet:v13];
  v15 = [v14 count];

  if (measurement || (v16 = [valueTextForCurrentControl length], v16 != objc_msgSend(text, "length")) || v12 != v15)
  {
    [(CAMSystemOverlayView *)self _updateValueLabelLayoutMetrics];
  }
}

- (void)_createHandleBarViewIfNeeded
{
  _handleBarView = [(CAMSystemOverlayView *)self _handleBarView];
  if (!_handleBarView)
  {
    delegate = [(CAMSystemOverlayView *)self delegate];
    v5 = [delegate overlayViewShouldPresentMenu:self];

    if (!v5)
    {
      return;
    }

    v7 = objc_alloc_init(UIView);
    v6 = +[UIColor whiteColor];
    [v7 setBackgroundColor:v6];

    [(CAMSystemOverlayView *)self addSubview:v7];
    [(CAMSystemOverlayView *)self _setHandleBarView:v7];
    _handleBarView = v7;
  }
}

- (double)_dropletCenterYFromState:(id)state toState:(id)toState
{
  [toState _effectiveNormalizedButtonOffsetFromState:state];
  [(CAMSystemOverlayView *)self _frameForButton];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  CGRectGetMinY(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetMaxY(v12);
  CEKInterpolateClamped();
  return v9 + arc4random_uniform(0x5F5E100u) / 100000000.0;
}

- (void)_resetDropletBackgroundIfNeededFromState:(id)state toState:(id)toState
{
  stateCopy = state;
  toStateCopy = toState;
  if ([(CAMSystemOverlayView *)self _backgroundHintNeedsReset])
  {
    _backgroundAnimator = [(CAMSystemOverlayView *)self _backgroundAnimator];
    _backgroundDroplet = [(CAMSystemOverlayView *)self _backgroundDroplet];
    _backgroundContext = [(CAMSystemOverlayView *)self _backgroundContext];
    [(CAMSystemOverlayView *)self bounds];
    v11 = v10;
    v13 = v12;
    [(CAMSystemOverlayView *)self _dropletCenterYFromState:stateCopy toState:toStateCopy];
    v15 = v14;
    if ([(CAMSystemOverlayView *)self alignment])
    {
      v16 = 8;
    }

    else
    {
      v16 = 2;
    }

    v17 = [DRPDropletViewConfiguration edgeHintWithCanvasSize:v16 hintSize:v11 edge:v13 centerAlongEdge:53.0 progress:v15 dropletRadius:0.0, 25.0];
    [_backgroundAnimator applyViewConfiguration:v17 animated:0 tracking:0 containerView:_backgroundDroplet contextView:_backgroundContext];
    [(CAMSystemOverlayView *)self _setBackgroundHintNeedsReset:0];
  }
}

- (id)_createValueLabelProgressPropertyWithInitialValue:(double)value
{
  v5 = objc_alloc_init(UIViewFloatAnimatableProperty);
  [v5 setValue:value];
  objc_initWeak(&location, v5);
  objc_initWeak(&from, self);
  v13 = v5;
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009DC8;
  v8[3] = &unk_1000555A8;
  objc_copyWeak(&v9, &location);
  objc_copyWeak(&v10, &from);
  [UIView _createTransformerWithInputAnimatableProperties:v6 presentationValueChangedCallback:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v5;
}

- (BOOL)_isCoachingAnimationCycling
{
  _coachingAnimationTimer = [(CAMSystemOverlayView *)self _coachingAnimationTimer];
  v3 = _coachingAnimationTimer != 0;

  return v3;
}

- (void)_startCoachingAnimationCycleIfNeeded
{
  if (![(CAMSystemOverlayView *)self _isCoachingAnimationCycling])
  {
    v3 = os_log_create("com.apple.camera.overlay", "Views");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Swipe-to-enter coaching cycle", buf, 2u);
    }

    [(CAMSystemOverlayView *)self _createCoachingAnimationLabelIfNeeded];
    [(CAMSystemOverlayView *)self _updateCoachingAnimationLabelOrientation];
    [(CAMSystemOverlayView *)self layoutIfNeeded];
    objc_initWeak(buf, self);
    [(CAMSystemOverlayView *)self _beginCoachingAnimationIteration];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000A074;
    v5[3] = &unk_1000555D0;
    objc_copyWeak(&v6, buf);
    v4 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v5 block:2.0];
    [(CAMSystemOverlayView *)self _setCoachingAnimationTimer:v4];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

- (void)_stopCoachingAnimationCycleIfNeeded
{
  if ([(CAMSystemOverlayView *)self _isCoachingAnimationCycling])
  {
    _backgroundAnimator = [(CAMSystemOverlayView *)self _backgroundAnimator];
    defaultBehaviorSettings = [_backgroundAnimator defaultBehaviorSettings];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000A1EC;
    v8[3] = &unk_100055490;
    v8[4] = self;
    [UIView _animateUsingSpringBehavior:defaultBehaviorSettings tracking:0 animations:v8 completion:0];

    v5 = os_log_create("com.apple.camera.overlay", "Views");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ending Swipe-to-enter coaching cycle", v7, 2u);
    }

    _coachingAnimationTimer = [(CAMSystemOverlayView *)self _coachingAnimationTimer];
    [_coachingAnimationTimer invalidate];

    [(CAMSystemOverlayView *)self _setCoachingAnimationTimer:0];
  }
}

- (void)_beginCoachingAnimationIteration
{
  sliderState = [(CAMSystemOverlayView *)self sliderState];
  if ([sliderState _coaching])
  {
    _isCoachingAnimationVisible = [(CAMSystemOverlayView *)self _isCoachingAnimationVisible];

    if ((_isCoachingAnimationVisible & 1) == 0)
    {
      _backgroundDroplet = [(CAMSystemOverlayView *)self _backgroundDroplet];
      _backgroundContext = [(CAMSystemOverlayView *)self _backgroundContext];
      _backgroundAnimator = [(CAMSystemOverlayView *)self _backgroundAnimator];
      _coachingAnimationLabel = [(CAMSystemOverlayView *)self _coachingAnimationLabel];
      objc_initWeak(location, self);
      v9 = [(CAMSystemOverlayView *)self _configurationForCoachingPhase:0];
      [_backgroundAnimator applyViewConfiguration:v9 animated:0 tracking:0 containerView:_backgroundDroplet contextView:_backgroundContext];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10000A5C8;
      v25[3] = &unk_100055490;
      v10 = _coachingAnimationLabel;
      v26 = v10;
      [UIView _performWithoutRetargetingAnimations:v25];
      [(CAMSystemOverlayView *)self _coachingAnimationTransitionMilestoneToPhase:2];
      v19 = _backgroundContext;
      v11 = [NSNumber numberWithDouble:?];
      v12 = [NSSet setWithObject:v11];

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000A628;
      v23[3] = &unk_1000555F8;
      objc_copyWeak(&v24, location);
      v13 = [CEKFluidBehaviorUtilities animatablePropertyWithProgressMilestones:v12 block:v23];
      v14 = v9;
      v15 = [(CAMSystemOverlayView *)self _configurationForCoachingPhase:1];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000A668;
      v20[3] = &unk_100055620;
      v16 = v10;
      v21 = v16;
      v17 = v13;
      v22 = v17;
      [v15 addAlongsideAnimationBlockForKeyPath:@"centerY" animationBlock:v20];
      v18 = os_log_create("com.apple.camera.overlay", "Views");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100035FA4(v18);
      }

      [(CAMSystemOverlayView *)self _setCoachingAnimationPhase:1];
      [_backgroundAnimator applyViewConfiguration:v15 animated:1 tracking:0 containerView:_backgroundDroplet contextView:v19];

      objc_destroyWeak(&v24);
      objc_destroyWeak(location);

      goto LABEL_9;
    }
  }

  else
  {
  }

  _backgroundDroplet = os_log_create("com.apple.camera.overlay", "Views");
  if (os_log_type_enabled(_backgroundDroplet, OS_LOG_TYPE_ERROR))
  {
    sub_100035FE8(_backgroundDroplet);
  }

LABEL_9:
}

- (void)_completeCoachingAnimationIteration
{
  if ([(CAMSystemOverlayView *)self _coachingAnimationPhase]== 1)
  {
    if ([(CAMSystemOverlayView *)self isSliderVisible])
    {

      [(CAMSystemOverlayView *)self _setCoachingAnimationPhase:-1];
    }

    else
    {
      _coachingAnimationLabel = [(CAMSystemOverlayView *)self _coachingAnimationLabel];
      objc_initWeak(&location, self);
      [(CAMSystemOverlayView *)self _coachingAnimationTransitionMilestoneToPhase:3];
      v4 = [NSNumber numberWithDouble:?];
      v5 = [NSSet setWithObject:v4];

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000A96C;
      v19[3] = &unk_1000555F8;
      objc_copyWeak(&v20, &location);
      v6 = [CEKFluidBehaviorUtilities animatablePropertyWithProgressMilestones:v5 block:v19];
      v7 = [(CAMSystemOverlayView *)self _configurationForCoachingPhase:2];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_10000A9AC;
      v16 = &unk_100055620;
      v8 = _coachingAnimationLabel;
      v17 = v8;
      v9 = v6;
      v18 = v9;
      [v7 addAlongsideAnimationBlockForKeyPath:@"centerY" animationBlock:&v13];
      [(CAMSystemOverlayView *)self _setCoachingAnimationPhase:2, v13, v14, v15, v16];
      _backgroundAnimator = [(CAMSystemOverlayView *)self _backgroundAnimator];
      _backgroundDroplet = [(CAMSystemOverlayView *)self _backgroundDroplet];
      _backgroundContext = [(CAMSystemOverlayView *)self _backgroundContext];
      [_backgroundAnimator applyViewConfiguration:v7 animated:1 tracking:0 containerView:_backgroundDroplet contextView:_backgroundContext];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_handleCoachingAnimationDidEnd
{
  if ([(CAMSystemOverlayView *)self _coachingAnimationPhase]== 2)
  {
    sliderState = [(CAMSystemOverlayView *)self sliderState];
    if ([sliderState _coaching])
    {
      v3 = 3;
    }

    else
    {
      v3 = -1;
    }

    [(CAMSystemOverlayView *)self _setCoachingAnimationPhase:v3];
    if (![(CAMSystemOverlayView *)self isSliderVisible])
    {
      v4 = [(CAMSystemOverlayView *)self _configurationForCoachingPhase:3];
      _backgroundAnimator = [(CAMSystemOverlayView *)self _backgroundAnimator];
      _backgroundDroplet = [(CAMSystemOverlayView *)self _backgroundDroplet];
      _backgroundContext = [(CAMSystemOverlayView *)self _backgroundContext];
      [_backgroundAnimator applyViewConfiguration:v4 animated:0 tracking:0 containerView:_backgroundDroplet contextView:_backgroundContext];
    }

    if (![sliderState _sliderMode])
    {
      _backgroundDroplet2 = [(CAMSystemOverlayView *)self _backgroundDroplet];
      [_backgroundDroplet2 setHidden:1];
    }
  }
}

- (double)_coachingAnimationTransitionMilestoneToPhase:(int64_t)phase
{
  result = 0.4;
  if (phase != 2)
  {
    result = 0.0;
  }

  if (phase == 3)
  {
    return 0.5;
  }

  return result;
}

- (void)_setCoachingAnimationPhase:(int64_t)phase
{
  if (self->__coachingAnimationPhase != phase)
  {
    self->__coachingAnimationPhase = phase;
    if ((phase + 1) > 4)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(&off_100055640 + phase + 1);
    }

    v4 = os_log_create("com.apple.camera.overlay", "Views");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10003602C(v3, v4);
    }
  }
}

- (void)_createCoachingAnimationLabelIfNeeded
{
  if (!self->__coachingAnimationLabel)
  {
    v4 = objc_alloc_init(CAMOverlayShimmerLabel);
    [objc_opt_class() _applyGainModulationToElement:v4 withInputAmount:&off_100057B50];
    [(CAMOverlayShimmerLabel *)v4 setUserInteractionEnabled:0];
    [(CAMOverlayShimmerLabel *)v4 setAlpha:0.0];
    [(CAMSystemOverlayView *)self addSubview:v4];
    [(CAMSystemOverlayView *)self _setCoachingAnimationLabel:v4];
  }
}

- (void)_updateCoachingAnimationLabelOrientation
{
  _coachingAnimationLabel = [(CAMSystemOverlayView *)self _coachingAnimationLabel];
  orientation = [_coachingAnimationLabel orientation];
  orientation2 = [(CAMSystemOverlayView *)self orientation];
  if (orientation2 <= 4)
  {
    orientation = qword_10003FC30[orientation2];
    v6 = qword_10003FC58[orientation2];
  }

  [_coachingAnimationLabel setOrientation:orientation];
  CAMOrientationTransform();
  v7[0] = v7[3];
  v7[1] = v7[4];
  v7[2] = v7[5];
  [_coachingAnimationLabel setTransform:v7];
}

+ (void)_applyGainModulationToElement:(id)element withInputAmount:(id)amount
{
  elementCopy = element;
  if (elementCopy)
  {
    v5 = kCAFilterEDRGainMultiply;
    amountCopy = amount;
    v7 = [NSString stringWithFormat:@"filters.%@", v5];
    kCAFilterInputAmount = [NSString stringWithFormat:@"%@.%@", v7, kCAFilterInputAmount];
    layer = [elementCopy layer];
    v10 = [layer valueForKeyPath:v7];

    if (!v10)
    {
      v11 = [CAFilter filterWithType:v5];
      [v11 setValue:&__kCFBooleanFalse forKey:kCAFilterInputAllowsGroup];
      layer2 = [elementCopy layer];
      filters = [layer2 filters];
      v14 = [NSMutableArray arrayWithArray:filters];

      [v14 addObject:v11];
      layer3 = [elementCopy layer];
      [layer3 setFilters:v14];
    }

    layer4 = [elementCopy layer];
    [layer4 setValue:amountCopy forKeyPath:kCAFilterInputAmount];
  }
}

- (id)_blurFilter
{
  v2 = [CAFilter filterWithType:kCAFilterGaussianBlur];
  [v2 setValue:&off_100057B00 forKey:@"inputRadius"];
  [v2 setValue:&__kCFBooleanTrue forKey:@"inputNormalizeEdgesTransparent"];
  [v2 setValue:@"low" forKey:@"inputQuality"];
  [v2 setValue:@"low" forKey:@"inputIntermediateBitDepth"];

  return v2;
}

- (CAFilter)_progressiveEdgeBlurFilter
{
  progressiveEdgeBlurFilter = self->__progressiveEdgeBlurFilter;
  if (progressiveEdgeBlurFilter)
  {
    v3 = progressiveEdgeBlurFilter;
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v6 = CGBitmapContextCreate(0, 1uLL, 0x14uLL, 8uLL, 0, DeviceRGB, 1u);
    locations = 0.0;
    v25 = xmmword_10003FC00;
    v26 = xmmword_10003FC10;
    v19 = 0;
    v21 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = 0;
    v16 = 0u;
    v11 = 0;
    v13 = 0u;
    v10 = 0u;
    v12 = 0x3FF0000000000000;
    v15 = 0x3FB999999999999ALL;
    v20 = 0x3FB999999999999ALL;
    v22 = 0;
    v23 = 0x3FF0000000000000;
    v7 = CGGradientCreateWithColorComponents(DeviceRGB, &v10, &locations, 5uLL);
    v28.x = 0.0;
    v28.y = 0.0;
    v29.x = 0.0;
    v29.y = 20.0;
    CGContextDrawLinearGradient(v6, v7, v28, v29, 0);
    Image = CGBitmapContextCreateImage(v6);
    CGColorSpaceRelease(DeviceRGB);
    CGGradientRelease(v7);
    CGContextRelease(v6);
    v3 = [CAFilter filterWithType:kCAFilterVariableBlur];
    [(CAFilter *)v3 setValue:Image forKey:@"inputMaskImage"];
    [(CAFilter *)v3 setValue:&off_100057B10 forKey:kCAFilterInputRadius];
    [(CAFilter *)v3 setValue:&__kCFBooleanTrue forKey:@"inputNormalizeEdgesTransparent"];
    [(CAFilter *)v3 setValue:@"low" forKey:@"inputQuality"];
    [(CAFilter *)v3 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
    objc_storeStrong(&self->__progressiveEdgeBlurFilter, v3);
  }

  return v3;
}

- (CAMutableMeshTransform)_dialEffectMesh
{
  dialEffectMesh = self->__dialEffectMesh;
  if (dialEffectMesh)
  {
    v3 = dialEffectMesh;
  }

  else
  {
    __chkstk_darwin();
    v5 = 0;
    v6 = &v18;
    v19 = xmmword_10003FC20;
    do
    {
      v7 = v5 / 19.0;
      v8 = pow(v7 + -0.5 + v7 + -0.5, 3.0);
      *(v6 - 6) = 0.0;
      v9 = v7 + v8 * -0.11;
      *(v6 - 5) = v7;
      *(v6 - 4) = 0.0;
      *(v6 - 3) = v9;
      *(v6 - 1) = v19;
      *v6 = v7;
      v6[1] = 1.0;
      v6[2] = v9;
      v6[3] = 0.0;
      ++v5;
      v6 += 10;
    }

    while (v5 != 20);
    __chkstk_darwin();
    v10 = &v16;
    v11 = -38;
    do
    {
      *(v10 - 2) = v11 + 38;
      *(v10 - 1) = v11 + 39;
      *v10 = v11 + 41;
      *(v10 + 1) = v11 + 40;
      v10[1] = 0;
      v10[2] = 0;
      v10 += 4;
      v11 += 2;
    }

    while (v11);
    v12 = [CAMutableMeshTransform meshTransformWithVertexCount:"meshTransformWithVertexCount:vertices:faceCount:faces:depthNormalization:" vertices:40 faceCount:&v17 faces:19 depthNormalization:?];
    [v12 setSubdivisionSteps:2];
    v13 = self->__dialEffectMesh;
    self->__dialEffectMesh = v12;
    v14 = v12;

    v3 = self->__dialEffectMesh;
  }

  return v3;
}

- (void)overlaySliderWillBeginScrolling:(id)scrolling
{
  delegate = [(CAMSystemOverlayView *)self delegate];
  [delegate overlayViewSliderWillBeginScrolling:self];

  [(CAMSystemOverlayView *)self _updateScaleForSliderContent:0 withMode:3 sliderContentDidChange:0 updateDropletScale:1];
}

- (void)overlaySliderDidEndScrolling:(id)scrolling
{
  delegate = [(CAMSystemOverlayView *)self delegate];
  [delegate overlayViewSliderDidEndScrolling:self];
}

- (void)overlaySliderDidChangeCurrentValue:(id)value
{
  delegate = [(CAMSystemOverlayView *)self delegate];
  [delegate overlayViewSliderDidChangeCurrentValue:self];

  [(CAMSystemOverlayView *)self _updateValueLabelText];
}

- (id)overlaySlider:(id)slider cellConfigurationForValue:(id)value
{
  valueCopy = value;
  delegate = [(CAMSystemOverlayView *)self delegate];
  v7 = [delegate overlayView:self cellConfigurationForNumber:valueCopy];

  return v7;
}

- (void)overlayMenuSliderWillBeginScrolling:(id)scrolling
{
  _menuVisibility = [(CAMSystemOverlayView *)self _menuVisibility];
  [_menuVisibility addReason:3];
}

- (void)overlayMenuSliderDidEndScrolling:(id)scrolling
{
  _menuVisibility = [(CAMSystemOverlayView *)self _menuVisibility];
  [_menuVisibility removeReason:3];
}

- (void)overlayMenuSlider:(id)slider didSelectControlAt:(int64_t)at
{
  v5 = [(CAMSystemOverlayView *)self delegate:slider];
  menu = [(CAMSystemOverlayView *)self menu];
  [v5 overlayView:self menuDidSelectControlAtIndex:{objc_msgSend(menu, "selectedControlIndex")}];

  [(CAMSystemOverlayView *)self _updateValueLabelText];

  [(CAMSystemOverlayView *)self _updateValueLabelVisibility];
}

- (void)systemOverlayVisibility:(id)visibility changedForReason:(int64_t)reason
{
  isVisible = [visibility isVisible];

  [(CAMSystemOverlayView *)self _setSliderContent:isVisible animated:1];
}

- (CAMSystemOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)_valueTextSize
{
  width = self->__valueTextSize.width;
  height = self->__valueTextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end