@interface CAMSystemOverlayView
+ (void)_applyGainModulationToElement:(id)a3 withInputAmount:(id)a4;
- (BOOL)_isCoachingAnimationCycling;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)isSliderPresented;
- (BOOL)isSliderVisible;
- (CAFilter)_progressiveEdgeBlurFilter;
- (CAMSystemOverlaySlider)slider;
- (CAMSystemOverlayView)initWithFrame:(CGRect)a3;
- (CAMSystemOverlayViewDelegate)delegate;
- (CAMutableMeshTransform)_dialEffectMesh;
- (CEKFluidBehaviorSettings)_scaleSettings;
- (CGRect)_frameForButton;
- (CGRect)_frameForSliderVisible:(BOOL)a3 content:(int64_t)a4 scale:(double)a5;
- (CGSize)_valueTextSize;
- (double)_coachingAnimationTransitionMilestoneToPhase:(int64_t)a3;
- (double)_dropletCenterYFromState:(id)a3 toState:(id)a4;
- (id)_blurFilter;
- (id)_createValueLabelProgressPropertyWithInitialValue:(double)a3;
- (id)_springAnimationWithKeyPath:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)overlaySlider:(id)a3 cellConfigurationForValue:(id)a4;
- (void)_beginCoachingAnimationIteration;
- (void)_completeCoachingAnimationIteration;
- (void)_createCoachingAnimationLabelIfNeeded;
- (void)_createHandleBarViewIfNeeded;
- (void)_createMenuIfNeeded;
- (void)_createSliderIfNeeded;
- (void)_createValueLabelIfNeeded;
- (void)_handleCoachingAnimationDidEnd;
- (void)_handlePan:(id)a3;
- (void)_handleSliderTap:(id)a3;
- (void)_handleTouchingMenu:(id)a3;
- (void)_handleTouchingSlider:(id)a3;
- (void)_resetDropletBackgroundIfNeededFromState:(id)a3 toState:(id)a4;
- (void)_setCoachingAnimationPhase:(int64_t)a3;
- (void)_sliderContent:(int64_t)a3 blurred:(BOOL)a4;
- (void)_startCoachingAnimationCycleIfNeeded;
- (void)_stopCoachingAnimationCycleIfNeeded;
- (void)_updateCoachingAnimationLabelOrientation;
- (void)_updateScaleForSliderContent:(int64_t)a3 withMode:(int64_t)a4 sliderContentDidChange:(BOOL)a5 updateDropletScale:(BOOL)a6;
- (void)_updateValueLabelFont;
- (void)_updateValueLabelLayoutMetrics;
- (void)_updateValueLabelTextWithForcedMeasurement:(BOOL)a3;
- (void)_updateValueLabelVisibility;
- (void)layoutSubviews;
- (void)overlayMenuSlider:(id)a3 didSelectControlAt:(int64_t)a4;
- (void)overlayMenuSliderDidEndScrolling:(id)a3;
- (void)overlayMenuSliderWillBeginScrolling:(id)a3;
- (void)overlaySliderDidChangeCurrentValue:(id)a3;
- (void)overlaySliderDidEndScrolling:(id)a3;
- (void)overlaySliderWillBeginScrolling:(id)a3;
- (void)performMenuPresentation:(unint64_t)a3;
- (void)reloadValueLabel;
- (void)setAlignment:(unint64_t)a3;
- (void)setHandleBarVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)systemOverlayVisibility:(id)a3 changedForReason:(int64_t)a4;
- (void)updateUIForButtonStage:(unint64_t)a3;
@end

@implementation CAMSystemOverlayView

- (CAMSystemOverlayView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = CAMSystemOverlayView;
  v3 = [(CAMSystemOverlayView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CAMSystemOverlayView *)v3 traitOverrides];
    [v5 setUserInterfaceStyle:2];

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

    v19 = [(CAMSystemOverlayView *)v4 layer];
    [v19 addSublayer:v4->__screenLuminanceObserverLayer];

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
  v11 = [(CAMSystemOverlayView *)self _backgroundContext];
  v86 = v8;
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CAMSystemOverlayView *)self traitCollection];
  [v12 displayScale];

  v13 = [(CAMSystemOverlayView *)self orientation];
  v14 = [(CAMSystemOverlayView *)self isSliderVisible];
  v15 = [(CAMSystemOverlayView *)self sliderIfLoaded];
  v16 = [(CAMSystemOverlayView *)self menu];
  v17 = [(CAMSystemOverlayView *)self _handleBarView];
  v18 = [(CAMSystemOverlayView *)self sliderContent];
  [(CAMSystemOverlayView *)self _frameForSliderVisible:v14 content:0 scale:1.0];
  v19 = 0.0;
  v107 = CGRectInset(v106, 0.0, -16.0);
  x = v107.origin.x;
  y = v107.origin.y;
  width = v107.size.width;
  height = v107.size.height;
  if (v18)
  {
    v19 = 20.0;
  }

  v24 = v19 + CGRectGetMaxX(v107);
  v108.origin.x = x;
  v85 = y;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  [v15 setCenter:{v24, CGRectGetMidY(v108)}];
  v83 = width;
  v84 = height;
  CEKRectWithSize();
  [v15 setBounds:?];
  [(CAMSystemOverlayView *)self _frameForSliderVisible:v14 content:1 scale:1.0];
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
  [v16 setCenter:{MaxX, CGRectGetMidY(v111)}];
  CEKRectWithSize();
  v93 = v16;
  [v16 setBounds:?];
  v87 = [(CAMSystemOverlayView *)self _valueLabel];
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
  v38 = [(CAMSystemOverlayView *)self sliderContent];
  [(CAMSystemOverlayView *)self _dropletScale];
  [(CAMSystemOverlayView *)self _frameForSliderVisible:v14 content:v38 scale:?];
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
  if (v14 && [(CAMSystemOverlayView *)self isHandleBarVisible])
  {
    v43 = 0.5;
  }

  else
  {
    v43 = 0.0;
  }

  v88 = v43;
  v44 = [(CAMSystemOverlayView *)self alignment];
  if (v44 == 1)
  {
    if (v14)
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

  else if (!v44)
  {
    if (v14)
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

  v45 = [(CAMSystemOverlayView *)self _valueLabelContainer];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v45 setCenter:?];
  v104 = v105;
  [v45 setTransform:&v104];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v17 setCenter:?];
  [v17 setBounds:{0.0, 0.0, 3.0, 53.0}];
  v46 = [v17 layer];
  [v46 setCornerRadius:1.5];

  v47 = [(CAMSystemOverlayView *)self _coachingAnimationLabel];
  v48 = v47;
  if (v47)
  {
    [v47 bounds];
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
    v55 = [(CAMSystemOverlayView *)self traitCollection];
    [v55 displayScale];
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
  v65 = [(CAMSystemOverlayView *)self _hitTestingBackground];
  [v65 setFrame:{v58, v60, v62, v64}];

  v66 = v13;
  v67 = v13 == 1;
  if (v14)
  {
    [v45 frame];
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
  v72 = [(CAMSystemOverlayView *)self _screenLuminanceObserverLayer];
  [v72 setFrame:{v68, v69, v71, v70}];

  +[CATransaction commit];
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_100006AB0;
  v95[3] = &unk_100055468;
  v98 = v92;
  v99 = v91;
  v100 = v90;
  v101 = v89;
  v96 = v45;
  v73 = v87;
  v97 = v73;
  v102 = v67;
  v74 = v45;
  [UIView performWithoutAnimation:v95];
  if (v66 == 1)
  {
    UIRectGetCenter();
    [v73 setCenter:?];
  }

  v75 = [(CAMSystemOverlayView *)self tipAnchor];
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
  [v75 setCenter:{v80, CGRectGetMidY(v123)}];
  CEKRectWithSize();
  [v75 setBounds:?];
  if (v18)
  {
    v81 = 0;
  }

  else
  {
    v81 = v14;
  }

  if (!v18)
  {
    LODWORD(v14) = 0;
  }

  [v15 setAlpha:v81];
  [v93 setAlpha:v14];
  [v17 setAlpha:v88];
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_100006B60;
  v94[3] = &unk_100055490;
  v94[4] = self;
  [UIView performWithoutAnimation:v94];
}

- (void)_updateValueLabelVisibility
{
  v3 = [(CAMSystemOverlayView *)self _valueLabel];
  v4 = [(CAMSystemOverlayView *)self sliderIfLoaded];
  v5 = [v4 style];

  v6 = v5 == 6 && [(CAMSystemOverlayView *)self sliderContent]== 0;
  v7 = [(CAMSystemOverlayView *)self isSliderVisible];
  v8 = [(CAMSystemOverlayView *)self _valueLabelPresentationProgress];
  if ([(CAMSystemOverlayView *)self sliderContent]== 1)
  {
    v9 = [(CAMSystemOverlayView *)self delegate];
    v10 = [(CAMSystemOverlayView *)self menu];
    v11 = [v9 isControlEnabledAtIndex:{objc_msgSend(v10, "selectedControlIndex")}];
  }

  else
  {
    v9 = [(CAMSystemOverlayView *)self sliderIfLoaded];
    v11 = [v9 enabled];
  }

  if (v8)
  {
    [v8 presentationValue];
    v13 = fmax(v12, 0.0);
  }

  else
  {
    v13 = v7;
  }

  if (v11)
  {
    v14 = +[UIColor systemYellowColor];
    v15 = 1.0;
  }

  else
  {
    v14 = +[UIColor labelColor];
    v15 = 0.4;
  }

  [v3 setTextColor:v14];

  if (v6)
  {
    v15 = 0.0;
  }

  CGAffineTransformMakeScale(&v17, v13, v13);
  v16 = v17;
  [v3 setTransform:&v16];
  [v3 setAlpha:v13 * v15];
}

- (CGRect)_frameForSliderVisible:(BOOL)a3 content:(int64_t)a4 scale:(double)a5
{
  v6 = a3;
  if (a4 == 1)
  {
    v8 = 31.0;
    v30 = 220.0;
  }

  else
  {
    v30 = 0.0;
    v8 = 0.0;
    if (!a4)
    {
      v9 = [(CAMSystemOverlayView *)self sliderIfLoaded];
      v10 = [v9 style];

      v8 = 18.0;
      v30 = 180.0;
      if (v10 == 6)
      {
        v11 = [(CAMSystemOverlayView *)self orientation];
        v8 = 29.0;
        if ((v11 - 1) >= 2)
        {
          v8 = 22.0;
        }
      }
    }
  }

  v29 = v8;
  CGAffineTransformMakeScale(&v32, a5, a5);
  *&v31 = *&vmlaq_n_f64(vmulq_n_f64(*&v32.c, v30), *&v32.a, v29);
  CEKRectWithSize();
  [(CAMSystemOverlayView *)self _frameForButton];
  v12 = [(CAMSystemOverlayView *)self traitCollection];
  [v12 displayScale];
  v28 = v13;
  UIRectCenteredYInRectScale();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(CAMSystemOverlayView *)self alignment];
  if (v22 == 1)
  {
    [(CAMSystemOverlayView *)self bounds];
    v23 = v24 - v31;
    if (!v6)
    {
      v23 = v24;
    }
  }

  else
  {
    v23 = -v31;
    if (v6)
    {
      v23 = 0.0;
    }

    if (v22)
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
  v4 = [(CAMSystemOverlayView *)self alignment];
  if (v4 == 1)
  {
    [v3 frameForPhysicalButton:6];
    goto LABEL_5;
  }

  height = 0.0;
  width = 0.0;
  y = 0.0;
  x = 0.0;
  if (!v4)
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = CAMSystemOverlayView;
  v5 = [(CAMSystemOverlayView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
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

- (void)setAlignment:(unint64_t)a3
{
  if (self->_alignment != a3)
  {
    self->_alignment = a3;
    v6 = [(CAMSystemOverlayView *)self sliderIfLoaded];
    [v6 setAlignment:a3];

    v7 = [(CAMSystemOverlayView *)self menu];
    [v7 setAlignment:a3];

    [(CAMSystemOverlayView *)self setNeedsLayout];
  }
}

- (BOOL)isSliderVisible
{
  v2 = [(CAMSystemOverlayView *)self sliderState];
  v3 = [v2 _presented];

  return v3;
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

- (void)performMenuPresentation:(unint64_t)a3
{
  if (a3 == 2)
  {
    v4 = [(CAMSystemOverlayView *)self _menuVisibility];
    [v4 hideImmediately];

    [(CAMSystemOverlayView *)self _setSliderContent:0 animated:1];
  }

  else
  {
    if (a3 == 1)
    {
      v5 = [(CAMSystemOverlayView *)self _menuVisibility];
      [v5 addReason:0];
    }

    else
    {
      if (a3)
      {
        return;
      }

      v5 = [(CAMSystemOverlayView *)self _menuVisibility];
      [v5 removeReason:0];
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
    v5 = [(CAMSystemOverlayView *)self _blurFilter];
    v17[0] = v5;
    v6 = [(CAMSystemOverlayView *)self _progressiveEdgeBlurFilter];
    v17[1] = v6;
    v7 = [NSArray arrayWithObjects:v17 count:2];
    v8 = [(OverlayMenuSlider *)self->_menu layer];
    [v8 setFilters:v7];

    [(OverlayMenuSlider *)self->_menu setAnchorPoint:1.0, 0.5];
    v9 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleTouchingMenu:"];
    [v9 _wantsGESEvents:1];
    [v9 setMinimumPressDuration:0.0];
    [v9 setDelegate:self];
    [(OverlayMenuSlider *)self->_menu addGestureRecognizer:v9];
    v10 = [(CAMSystemOverlayView *)self _dialEffectMesh];
    v11 = [(OverlayMenuSlider *)self->_menu layer];
    [v11 setMeshTransform:v10];

    v12 = [(CAMSystemOverlayView *)self traitCollection];
    [v12 displayScale];
    v14 = v13;
    v15 = [(OverlayMenuSlider *)self->_menu layer];
    [v15 setRasterizationScale:v14];

    v16 = [(OverlayMenuSlider *)self->_menu layer];
    [v16 setAllowsGroupBlending:1];

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
    v6 = [(CAMSystemOverlayView *)self _blurFilter];
    v27[0] = v6;
    v7 = [(CAMSystemOverlayView *)self _progressiveEdgeBlurFilter];
    v27[1] = v7;
    v8 = [NSArray arrayWithObjects:v27 count:2];
    v9 = [(CAMSystemOverlaySlider *)self->_slider layer];
    [v9 setFilters:v8];

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
    v14 = [(DRPDropletContextView *)self->__backgroundContext layer];
    [v14 setAllowsHitTesting:0];

    [(CAMSystemOverlayView *)self addSubview:self->__backgroundContext];
    v15 = [(DRPDropletContextView *)self->__backgroundContext addContainerWithContentView:0];
    backgroundDroplet = self->__backgroundDroplet;
    self->__backgroundDroplet = v15;

    v17 = objc_alloc_init(DRPDropletAnimationCoordinator);
    backgroundAnimator = self->__backgroundAnimator;
    self->__backgroundAnimator = v17;

    self->__backgroundHintNeedsReset = 1;
    [(CAMSystemOverlayView *)self addSubview:self->_slider];
    v19 = [(CAMSystemOverlayView *)self _dialEffectMesh];
    v20 = [(CAMSystemOverlaySlider *)self->_slider layer];
    [v20 setMeshTransform:v19];

    v21 = [(CAMSystemOverlayView *)self traitCollection];
    [v21 displayScale];
    v23 = v22;
    v24 = [(CAMSystemOverlaySlider *)self->_slider layer];
    [v24 setRasterizationScale:v23];

    v25 = [(CAMSystemOverlaySlider *)self->_slider layer];
    [v25 setAllowsGroupBlending:1];

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

- (void)setHandleBarVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_handleBarVisible != a3)
  {
    self->_handleBarVisible = a3;
    if (a4)
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

- (void)updateUIForButtonStage:(unint64_t)a3
{
  [(CAMSystemOverlayView *)self _setButtonStage:a3];
  v4 = [(CAMSystemOverlayView *)self sliderState];
  v5 = [v4 _presented];

  if (v5)
  {
    v6 = [(CAMSystemOverlayView *)self sliderContent];

    [(CAMSystemOverlayView *)self _updateScaleForSliderContent:v6 withMode:3 sliderContentDidChange:0 updateDropletScale:1];
  }
}

- (void)_handleSliderTap:(id)a3
{
  v14 = a3;
  v4 = [(CAMSystemOverlayView *)self sliderContent];
  if (v4 == 1)
  {
    v8 = [(CAMSystemOverlayView *)self menu];
    [v14 locationInView:self];
    v9 = [v8 indexOfImageClosestToPoint:self in:?];
    if (v9 == [v8 selectedControlIndex])
    {
      v10 = [(CAMSystemOverlayView *)self delegate];
      v11 = [(CAMSystemOverlayView *)self menu];
      v12 = [v10 isControlEnabledAtIndex:{objc_msgSend(v11, "selectedControlIndex")}];

      if (v12)
      {
        v13 = [(CAMSystemOverlayView *)self _menuVisibility];
        [v13 hideImmediately];

        [(CAMSystemOverlayView *)self _setSliderContent:0 animated:1];
      }
    }

    else
    {
      [v8 setSelectedControlIndex:v9 animated:1];
    }
  }

  else if (!v4)
  {
    if ([(CAMSystemOverlayView *)self isSliderVisible])
    {
      v5 = [(CAMSystemOverlayView *)self delegate];
      v6 = [v5 overlayViewShouldPresentMenu:self];

      if (v6)
      {
        v7 = [(CAMSystemOverlayView *)self _menuVisibility];
        [v7 showTransiently];

        [(CAMSystemOverlayView *)self _setSliderContent:1 animated:1];
      }
    }
  }
}

- (void)_handleTouchingMenu:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = [(CAMSystemOverlayView *)self _menuVisibility];
    [v5 addReason:2];
  }

  else
  {
    v5 = [(CAMSystemOverlayView *)self _menuVisibility];
    [v5 removeReason:2];
  }
}

- (void)_handleTouchingSlider:(id)a3
{
  if ([a3 state] - 3 <= 1)
  {

    [(CAMSystemOverlayView *)self _updateScaleForSliderContent:0 withMode:3 sliderContentDidChange:0 updateDropletScale:1];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CAMSystemOverlayView *)self _tapGestureRecognizer];

  if (v8 == v7)
  {
    [v6 locationInView:self];
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

- (void)_handlePan:(id)a3
{
  v18 = a3;
  [v18 translationInView:self];
  v5 = v4;
  v6 = [(CAMSystemOverlayView *)self sliderContent];
  if ([v18 state] == 3)
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

    v8 = [(CAMSystemOverlayView *)self delegate];
    v9 = [(CAMSystemOverlayView *)self menu];
    v10 = [v8 isControlEnabledAtIndex:{objc_msgSend(v9, "selectedControlIndex")}];

    if (fabs(v5) <= v7)
    {
      goto LABEL_13;
    }

    if (v6 == 1)
    {
      if (((v5 >= 0.0) & v10) != 1)
      {
        goto LABEL_13;
      }

      v14 = [(CAMSystemOverlayView *)self _menuVisibility];
      [v14 hideImmediately];

      v15 = self;
      v16 = 0;
      goto LABEL_19;
    }

    if (!v6)
    {
      v11 = [(CAMSystemOverlayView *)self delegate];
      v12 = [v11 overlayViewShouldPresentMenu:self];

      if (v12)
      {
        if (v5 >= 0.0)
        {
          v13 = [(CAMSystemOverlayView *)self delegate];
          [v13 overlayView:self performedDismissGesture:v18];

          goto LABEL_13;
        }

        v17 = [(CAMSystemOverlayView *)self _menuVisibility];
        [v17 showTransiently];

        v15 = self;
        v16 = 1;
LABEL_19:
        [(CAMSystemOverlayView *)v15 _setSliderContent:v16 animated:1];
      }
    }
  }

  else if ([v18 state] == 2)
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

- (void)_sliderContent:(int64_t)a3 blurred:(BOOL)a4
{
  v4 = a4;
  if (a3 == 1)
  {
    v6 = [(CAMSystemOverlayView *)self menu];
  }

  else if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CAMSystemOverlayView *)self slider];
  }

  v13 = v6;
  v7 = [v6 layer];
  v8 = !v4;
  if (v4)
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
  [v7 addAnimation:v11 forKey:@"blurRadiusAnimation"];
  v12 = [v13 layer];
  [v12 setValue:v9 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (id)_springAnimationWithKeyPath:(id)a3
{
  v3 = [CASpringAnimation animationWithKeyPath:a3];
  [v3 setMass:2.0];
  [v3 setStiffness:300.0];
  [v3 setDamping:50.0];

  return v3;
}

- (void)_updateScaleForSliderContent:(int64_t)a3 withMode:(int64_t)a4 sliderContentDidChange:(BOOL)a5 updateDropletScale:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = [(CAMSystemOverlayView *)self sliderState];
  v12 = [v11 _presented];

  if (v12)
  {
    v13 = [(CAMSystemOverlayView *)self _buttonStage];
    if (v13 == 4)
    {
      v14 = 1.2;
    }

    else
    {
      v14 = 1.0;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) == 2)
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

    v15 = [(CAMSystemOverlayView *)self _touchingSliderGestureRecognizer];
    v16 = [v15 state];

    if ((v16 - 1) < 2)
    {
      v14 = 1.25;
    }

    v17 = [(CAMSystemOverlayView *)self _panGestureRecognizer];
    if ([v17 state] == 2)
    {
      [v17 translationInView:self];
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

    if (v7 && [(CAMSystemOverlayView *)self sliderContent]!= a3)
    {
      if (a3 == 1)
      {
        v14 = 0.4;
      }

      else if (!a3)
      {
        v14 = 1.5;
      }
    }
  }

  else
  {
    v14 = 0.2;
  }

  v23 = a4 - 3;
  if (v6)
  {
    [(CAMSystemOverlayView *)self _setDropletScale:v23 < 3 animated:a4 == 5 interactive:v14];
  }

  if (a3 == 1)
  {
    v24 = [(CAMSystemOverlayView *)self menu];
    goto LABEL_28;
  }

  if (!a3)
  {
    v24 = [(CAMSystemOverlayView *)self slider];
LABEL_28:
    v25 = v24;
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
    v26 = [(CAMSystemOverlayView *)self _scaleSettings];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100008830;
    v29[3] = &unk_1000554B8;
    v30 = v25;
    v31 = v14;
    [UIView cek_animateWithSettings:v26 mode:a4 animations:v29 completion:0];
  }
}

- (void)reloadValueLabel
{
  [(CAMSystemOverlayView *)self _updateValueLabelText];

  [(CAMSystemOverlayView *)self _updateValueLabelVisibility];
}

- (void)_createValueLabelIfNeeded
{
  v3 = [(CAMSystemOverlayView *)self _valueLabel];

  if (!v3)
  {
    v12 = objc_alloc_init(UILabel);
    v4 = +[UIColor systemYellowColor];
    [v12 setTextColor:v4];

    [v12 setTextAlignment:1];
    v5 = [v12 layer];
    LODWORD(v6) = 1045220557;
    [v5 setShadowOpacity:v6];

    v7 = [v12 layer];
    [v7 setShadowRadius:15.0];

    height = CGSizeZero.height;
    v9 = [v12 layer];
    [v9 setShadowOffset:{CGSizeZero.width, height}];

    v10 = [v12 layer];
    [v10 setShadowPathIsBounds:1];

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
  v11 = [(CAMSystemOverlayView *)self _valueLabel];
  [v11 intrinsicContentSize];
  v3 = [(CAMSystemOverlayView *)self traitCollection];
  [v3 displayScale];
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
  v11 = [(CAMSystemOverlayView *)self _valueLabel];
  v3 = [(CAMSystemOverlayView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  [CAMZoomButton fontSizeForContentSize:v4];
  v6 = v5;
  v7 = [v11 font];
  [v7 pointSize];
  v9 = v8;

  if (v6 != v9)
  {
    v10 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    [v11 setFont:v10];

    [(CAMSystemOverlayView *)self _updateValueLabelLayoutMetrics];
  }
}

- (void)_updateValueLabelTextWithForcedMeasurement:(BOOL)a3
{
  v5 = [(CAMSystemOverlayView *)self sliderContent];
  if (v5)
  {
    if (v5 != 1)
    {
      v17 = 0;
      goto LABEL_7;
    }

    v6 = [(CAMSystemOverlayView *)self delegate];
    v7 = [(CAMSystemOverlayView *)self menu];
    v17 = [v6 menuTitleForControlAtIndex:{objc_msgSend(v7, "selectedControlIndex")}];
  }

  else
  {
    v6 = [(CAMSystemOverlayView *)self delegate];
    v17 = [v6 valueTextForCurrentControl];
  }

LABEL_7:
  v8 = [(CAMSystemOverlayView *)self _valueLabel];
  v9 = [v8 text];
  [v8 setText:v17];
  v10 = +[NSCharacterSet whitespaceCharacterSet];
  v11 = [v17 componentsSeparatedByCharactersInSet:v10];
  v12 = [v11 count];

  v13 = +[NSCharacterSet whitespaceCharacterSet];
  v14 = [v9 componentsSeparatedByCharactersInSet:v13];
  v15 = [v14 count];

  if (a3 || (v16 = [v17 length], v16 != objc_msgSend(v9, "length")) || v12 != v15)
  {
    [(CAMSystemOverlayView *)self _updateValueLabelLayoutMetrics];
  }
}

- (void)_createHandleBarViewIfNeeded
{
  v3 = [(CAMSystemOverlayView *)self _handleBarView];
  if (!v3)
  {
    v4 = [(CAMSystemOverlayView *)self delegate];
    v5 = [v4 overlayViewShouldPresentMenu:self];

    if (!v5)
    {
      return;
    }

    v7 = objc_alloc_init(UIView);
    v6 = +[UIColor whiteColor];
    [v7 setBackgroundColor:v6];

    [(CAMSystemOverlayView *)self addSubview:v7];
    [(CAMSystemOverlayView *)self _setHandleBarView:v7];
    v3 = v7;
  }
}

- (double)_dropletCenterYFromState:(id)a3 toState:(id)a4
{
  [a4 _effectiveNormalizedButtonOffsetFromState:a3];
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

- (void)_resetDropletBackgroundIfNeededFromState:(id)a3 toState:(id)a4
{
  v18 = a3;
  v6 = a4;
  if ([(CAMSystemOverlayView *)self _backgroundHintNeedsReset])
  {
    v7 = [(CAMSystemOverlayView *)self _backgroundAnimator];
    v8 = [(CAMSystemOverlayView *)self _backgroundDroplet];
    v9 = [(CAMSystemOverlayView *)self _backgroundContext];
    [(CAMSystemOverlayView *)self bounds];
    v11 = v10;
    v13 = v12;
    [(CAMSystemOverlayView *)self _dropletCenterYFromState:v18 toState:v6];
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
    [v7 applyViewConfiguration:v17 animated:0 tracking:0 containerView:v8 contextView:v9];
    [(CAMSystemOverlayView *)self _setBackgroundHintNeedsReset:0];
  }
}

- (id)_createValueLabelProgressPropertyWithInitialValue:(double)a3
{
  v5 = objc_alloc_init(UIViewFloatAnimatableProperty);
  [v5 setValue:a3];
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
  v2 = [(CAMSystemOverlayView *)self _coachingAnimationTimer];
  v3 = v2 != 0;

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
    v3 = [(CAMSystemOverlayView *)self _backgroundAnimator];
    v4 = [v3 defaultBehaviorSettings];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000A1EC;
    v8[3] = &unk_100055490;
    v8[4] = self;
    [UIView _animateUsingSpringBehavior:v4 tracking:0 animations:v8 completion:0];

    v5 = os_log_create("com.apple.camera.overlay", "Views");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ending Swipe-to-enter coaching cycle", v7, 2u);
    }

    v6 = [(CAMSystemOverlayView *)self _coachingAnimationTimer];
    [v6 invalidate];

    [(CAMSystemOverlayView *)self _setCoachingAnimationTimer:0];
  }
}

- (void)_beginCoachingAnimationIteration
{
  v3 = [(CAMSystemOverlayView *)self sliderState];
  if ([v3 _coaching])
  {
    v4 = [(CAMSystemOverlayView *)self _isCoachingAnimationVisible];

    if ((v4 & 1) == 0)
    {
      v5 = [(CAMSystemOverlayView *)self _backgroundDroplet];
      v6 = [(CAMSystemOverlayView *)self _backgroundContext];
      v7 = [(CAMSystemOverlayView *)self _backgroundAnimator];
      v8 = [(CAMSystemOverlayView *)self _coachingAnimationLabel];
      objc_initWeak(location, self);
      v9 = [(CAMSystemOverlayView *)self _configurationForCoachingPhase:0];
      [v7 applyViewConfiguration:v9 animated:0 tracking:0 containerView:v5 contextView:v6];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10000A5C8;
      v25[3] = &unk_100055490;
      v10 = v8;
      v26 = v10;
      [UIView _performWithoutRetargetingAnimations:v25];
      [(CAMSystemOverlayView *)self _coachingAnimationTransitionMilestoneToPhase:2];
      v19 = v6;
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
      [v7 applyViewConfiguration:v15 animated:1 tracking:0 containerView:v5 contextView:v19];

      objc_destroyWeak(&v24);
      objc_destroyWeak(location);

      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = os_log_create("com.apple.camera.overlay", "Views");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100035FE8(v5);
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
      v3 = [(CAMSystemOverlayView *)self _coachingAnimationLabel];
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
      v8 = v3;
      v17 = v8;
      v9 = v6;
      v18 = v9;
      [v7 addAlongsideAnimationBlockForKeyPath:@"centerY" animationBlock:&v13];
      [(CAMSystemOverlayView *)self _setCoachingAnimationPhase:2, v13, v14, v15, v16];
      v10 = [(CAMSystemOverlayView *)self _backgroundAnimator];
      v11 = [(CAMSystemOverlayView *)self _backgroundDroplet];
      v12 = [(CAMSystemOverlayView *)self _backgroundContext];
      [v10 applyViewConfiguration:v7 animated:1 tracking:0 containerView:v11 contextView:v12];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_handleCoachingAnimationDidEnd
{
  if ([(CAMSystemOverlayView *)self _coachingAnimationPhase]== 2)
  {
    v9 = [(CAMSystemOverlayView *)self sliderState];
    if ([v9 _coaching])
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
      v5 = [(CAMSystemOverlayView *)self _backgroundAnimator];
      v6 = [(CAMSystemOverlayView *)self _backgroundDroplet];
      v7 = [(CAMSystemOverlayView *)self _backgroundContext];
      [v5 applyViewConfiguration:v4 animated:0 tracking:0 containerView:v6 contextView:v7];
    }

    if (![v9 _sliderMode])
    {
      v8 = [(CAMSystemOverlayView *)self _backgroundDroplet];
      [v8 setHidden:1];
    }
  }
}

- (double)_coachingAnimationTransitionMilestoneToPhase:(int64_t)a3
{
  result = 0.4;
  if (a3 != 2)
  {
    result = 0.0;
  }

  if (a3 == 3)
  {
    return 0.5;
  }

  return result;
}

- (void)_setCoachingAnimationPhase:(int64_t)a3
{
  if (self->__coachingAnimationPhase != a3)
  {
    self->__coachingAnimationPhase = a3;
    if ((a3 + 1) > 4)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(&off_100055640 + a3 + 1);
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
  v3 = [(CAMSystemOverlayView *)self _coachingAnimationLabel];
  v4 = [v3 orientation];
  v5 = [(CAMSystemOverlayView *)self orientation];
  if (v5 <= 4)
  {
    v4 = qword_10003FC30[v5];
    v6 = qword_10003FC58[v5];
  }

  [v3 setOrientation:v4];
  CAMOrientationTransform();
  v7[0] = v7[3];
  v7[1] = v7[4];
  v7[2] = v7[5];
  [v3 setTransform:v7];
}

+ (void)_applyGainModulationToElement:(id)a3 withInputAmount:(id)a4
{
  v17 = a3;
  if (v17)
  {
    v5 = kCAFilterEDRGainMultiply;
    v6 = a4;
    v7 = [NSString stringWithFormat:@"filters.%@", v5];
    v8 = [NSString stringWithFormat:@"%@.%@", v7, kCAFilterInputAmount];
    v9 = [v17 layer];
    v10 = [v9 valueForKeyPath:v7];

    if (!v10)
    {
      v11 = [CAFilter filterWithType:v5];
      [v11 setValue:&__kCFBooleanFalse forKey:kCAFilterInputAllowsGroup];
      v12 = [v17 layer];
      v13 = [v12 filters];
      v14 = [NSMutableArray arrayWithArray:v13];

      [v14 addObject:v11];
      v15 = [v17 layer];
      [v15 setFilters:v14];
    }

    v16 = [v17 layer];
    [v16 setValue:v6 forKeyPath:v8];
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

- (void)overlaySliderWillBeginScrolling:(id)a3
{
  v4 = [(CAMSystemOverlayView *)self delegate];
  [v4 overlayViewSliderWillBeginScrolling:self];

  [(CAMSystemOverlayView *)self _updateScaleForSliderContent:0 withMode:3 sliderContentDidChange:0 updateDropletScale:1];
}

- (void)overlaySliderDidEndScrolling:(id)a3
{
  v4 = [(CAMSystemOverlayView *)self delegate];
  [v4 overlayViewSliderDidEndScrolling:self];
}

- (void)overlaySliderDidChangeCurrentValue:(id)a3
{
  v4 = [(CAMSystemOverlayView *)self delegate];
  [v4 overlayViewSliderDidChangeCurrentValue:self];

  [(CAMSystemOverlayView *)self _updateValueLabelText];
}

- (id)overlaySlider:(id)a3 cellConfigurationForValue:(id)a4
{
  v5 = a4;
  v6 = [(CAMSystemOverlayView *)self delegate];
  v7 = [v6 overlayView:self cellConfigurationForNumber:v5];

  return v7;
}

- (void)overlayMenuSliderWillBeginScrolling:(id)a3
{
  v3 = [(CAMSystemOverlayView *)self _menuVisibility];
  [v3 addReason:3];
}

- (void)overlayMenuSliderDidEndScrolling:(id)a3
{
  v3 = [(CAMSystemOverlayView *)self _menuVisibility];
  [v3 removeReason:3];
}

- (void)overlayMenuSlider:(id)a3 didSelectControlAt:(int64_t)a4
{
  v5 = [(CAMSystemOverlayView *)self delegate:a3];
  v6 = [(CAMSystemOverlayView *)self menu];
  [v5 overlayView:self menuDidSelectControlAtIndex:{objc_msgSend(v6, "selectedControlIndex")}];

  [(CAMSystemOverlayView *)self _updateValueLabelText];

  [(CAMSystemOverlayView *)self _updateValueLabelVisibility];
}

- (void)systemOverlayVisibility:(id)a3 changedForReason:(int64_t)a4
{
  v5 = [a3 isVisible];

  [(CAMSystemOverlayView *)self _setSliderContent:v5 animated:1];
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