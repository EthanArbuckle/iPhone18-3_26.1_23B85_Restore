@interface LevelPageViewController
+ (void)initialize;
- (BOOL)_updateForRotation:(double)rotation shiftAngle:(double)angle;
- (LevelPageViewController)initWithCoder:(id)coder;
- (LevelPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)labelFont;
- (void)_enableIdleTimer;
- (void)_updateOffsetLabel:(double)label;
- (void)configure;
- (void)dealloc;
- (void)notifyViewHidden;
- (void)notifyViewShown;
- (void)toggleHold:(id)hold;
- (void)updateColors;
- (void)updateDegreesLabel;
- (void)updateLevelWithForcedInterfaceUpdate:(BOOL)update;
- (void)updateTicsForOrientation:(int64_t)orientation;
- (void)userDefaultsChanged:(id)changed;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation LevelPageViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v4 = @"0.5";
    v5 = &off_10047C638;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [v2 registerDefaults:v3];
  }
}

- (LevelPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = LevelPageViewController;
  v4 = [(LevelPageViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(LevelPageViewController *)v4 configure];
  }

  return v5;
}

- (LevelPageViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LevelPageViewController;
  v3 = [(LevelPageViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(LevelPageViewController *)v3 configure];
  }

  return v4;
}

- (void)configure
{
  v3 = objc_alloc_init(CMMotionManager);
  manager = self->_manager;
  self->_manager = v3;

  [(CMMotionManager *)self->_manager setShowsDeviceMovementDisplay:1];
  [(CMMotionManager *)self->_manager setDeviceMotionUpdateInterval:0.00999999978];
  [(CMMotionManager *)self->_manager startDeviceMotionUpdatesUsingReferenceFrame:1];
  self->_orientation = 1;
  self->_previousOrientation = 1;
  self->_lastLevelChange = 1.79769313e308;
  self->_lastDisplayDegrees = 0x7FFFFFFFFFFFFFFFLL;
  self->_previousRotation = 1.79769313e308;
  self->_previousShift = 1.79769313e308;
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 floatForKey:@"0.5"];
  self->_zeroRange = v5;
}

- (void)dealloc
{
  [(NSTimer *)self->_levelIdleTimer invalidate];
  levelIdleTimer = self->_levelIdleTimer;
  self->_levelIdleTimer = 0;

  v4.receiver = self;
  v4.super_class = LevelPageViewController;
  [(LevelPageViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v127.receiver = self;
  v127.super_class = LevelPageViewController;
  [(LevelPageViewController *)&v127 viewDidLoad];
  view = [(LevelPageViewController *)self view];
  [view setClipsToBounds:1];

  view2 = [(LevelPageViewController *)self view];
  v5 = +[UIColor whiteColor];
  [view2 setBackgroundColor:v5];

  v6 = +[UIScreen mainScreen];
  [v6 _referenceBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  view3 = [(LevelPageViewController *)self view];
  [view3 setFrame:{v8, v10, v12, v14}];

  v16 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  filterContainer = self->_filterContainer;
  self->_filterContainer = v16;

  v18 = self->_filterContainer;
  v19 = +[UIColor clearColor];
  [(UIView *)v18 setBackgroundColor:v19];

  [(UIView *)self->_filterContainer setClipsToBounds:1];
  [(UIView *)self->_filterContainer setAutoresizingMask:18];
  v20 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  levelContainer = self->_levelContainer;
  self->_levelContainer = v20;

  v22 = self->_levelContainer;
  v23 = +[UIColor clearColor];
  [(UIView *)v22 setBackgroundColor:v23];

  [(UIView *)self->_levelContainer setAutoresizingMask:18];
  v24 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  levelHoldContainer = self->_levelHoldContainer;
  self->_levelHoldContainer = v24;

  v26 = self->_levelHoldContainer;
  v27 = +[UIColor clearColor];
  [(UIView *)v26 setBackgroundColor:v27];

  [(UIView *)self->_levelHoldContainer setAutoresizingMask:18];
  v28 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  bubbleContainer = self->_bubbleContainer;
  self->_bubbleContainer = v28;

  v30 = self->_bubbleContainer;
  v31 = +[UIColor clearColor];
  [(UIView *)v30 setBackgroundColor:v31];

  [(UIView *)self->_bubbleContainer setAutoresizingMask:18];
  v32 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  ticContainer = self->_ticContainer;
  self->_ticContainer = v32;

  v34 = self->_ticContainer;
  v35 = +[UIColor clearColor];
  [(UIView *)v34 setBackgroundColor:v35];

  [(UIView *)self->_ticContainer setAutoresizingMask:18];
  layer = [(UIView *)self->_ticContainer layer];
  v126 = kCAFilterXor;
  v37 = [CAFilter filterWithType:?];
  [layer setCompositingFilter:v37];

  v128.origin.x = v8;
  v128.origin.y = v10;
  v128.size.width = v12;
  v128.size.height = v14;
  v38 = v10 + CGRectGetHeight(v128) * 0.5;
  v129.origin.x = v8;
  v129.origin.y = v38;
  v129.size.width = v12;
  v129.size.height = v14;
  Width = CGRectGetWidth(v129);
  v130.origin.x = v8;
  v130.origin.y = v38;
  v130.size.width = v12;
  v130.size.height = v14;
  Height = CGRectGetHeight(v130);
  v41 = Height + Height;
  v131.origin.x = v8;
  v131.origin.y = v38;
  v131.size.width = v12;
  v131.size.height = v14;
  v42 = v8 - Width;
  v43 = v38 + 0.0;
  v44 = v12 - (-CGRectGetWidth(v131) - Width);
  v45 = v14 - (0.0 - v41);
  v46 = +[CALayer layer];
  heldLevelBottomBacking = self->_heldLevelBottomBacking;
  self->_heldLevelBottomBacking = v46;

  [(CALayer *)self->_heldLevelBottomBacking setAnchorPoint:0.5, 0.0];
  [(CALayer *)self->_heldLevelBottomBacking setFrame:v42, v43, v44, v45];
  v48 = self->_heldLevelBottomBacking;
  v49 = +[UIColor systemRedColor];
  -[CALayer setBackgroundColor:](v48, "setBackgroundColor:", [v49 CGColor]);

  [(CALayer *)self->_heldLevelBottomBacking setAllowsEdgeAntialiasing:1];
  [(CALayer *)self->_heldLevelBottomBacking setHidden:1];
  layer2 = [(UIView *)self->_levelContainer layer];
  [layer2 addSublayer:self->_heldLevelBottomBacking];

  v51 = +[CALayer layer];
  heldLevelBottom = self->_heldLevelBottom;
  self->_heldLevelBottom = v51;

  [(CALayer *)self->_heldLevelBottom setAnchorPoint:0.5, 0.0];
  [(CALayer *)self->_heldLevelBottom setFrame:v42, v43, v44, v45];
  v53 = self->_heldLevelBottom;
  v54 = +[UIColor systemRedColor];
  -[CALayer setBackgroundColor:](v53, "setBackgroundColor:", [v54 CGColor]);

  [(CALayer *)self->_heldLevelBottom setAllowsEdgeAntialiasing:1];
  [(CALayer *)self->_heldLevelBottom setHidden:1];
  v55 = self->_heldLevelBottom;
  v56 = [CAFilter filterWithType:v126];
  [(CALayer *)v55 setCompositingFilter:v56];

  layer3 = [(UIView *)self->_levelHoldContainer layer];
  [layer3 addSublayer:self->_heldLevelBottom];

  v58 = +[CALayer layer];
  divergenceLevelBottom = self->_divergenceLevelBottom;
  self->_divergenceLevelBottom = v58;

  [(CALayer *)self->_divergenceLevelBottom setAnchorPoint:0.5, 0.0];
  [(CALayer *)self->_divergenceLevelBottom setFrame:v42, v43, v44, v45];
  v60 = self->_divergenceLevelBottom;
  v61 = +[UIColor systemRedColor];
  -[CALayer setBackgroundColor:](v60, "setBackgroundColor:", [v61 CGColor]);

  [(CALayer *)self->_divergenceLevelBottom setAllowsEdgeAntialiasing:1];
  [(CALayer *)self->_divergenceLevelBottom setHidden:1];
  v62 = self->_divergenceLevelBottom;
  v63 = [CAFilter filterWithType:v126];
  [(CALayer *)v62 setCompositingFilter:v63];

  layer4 = [(UIView *)self->_levelHoldContainer layer];
  [layer4 addSublayer:self->_divergenceLevelBottom];

  v65 = +[CALayer layer];
  levelBottom = self->_levelBottom;
  self->_levelBottom = v65;

  [(CALayer *)self->_levelBottom setAnchorPoint:0.5, 0.0];
  [(CALayer *)self->_levelBottom setFrame:v42, v43, v44, v45];
  v67 = self->_levelBottom;
  v68 = +[UIColor blackColor];
  -[CALayer setBackgroundColor:](v67, "setBackgroundColor:", [v68 CGColor]);

  [(CALayer *)self->_levelBottom setAllowsEdgeAntialiasing:1];
  layer5 = [(UIView *)self->_levelContainer layer];
  [layer5 addSublayer:self->_levelBottom];

  [(UIView *)self->_filterContainer addSubview:self->_levelContainer];
  [(UIView *)self->_levelContainer addSubview:self->_levelHoldContainer];
  v70 = +[CAShapeLayer layer];
  topOuterCircle = self->_topOuterCircle;
  self->_topOuterCircle = v70;

  [(CAShapeLayer *)self->_topOuterCircle setFrame:0.0, 0.0, 200.0, 200.0];
  v72 = self->_topOuterCircle;
  v73 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 200.0, 200.0];
  -[CAShapeLayer setPath:](v72, "setPath:", [v73 CGPath]);

  v74 = self->_topOuterCircle;
  v75 = +[UIColor blackColor];
  -[CAShapeLayer setFillColor:](v74, "setFillColor:", [v75 CGColor]);

  v76 = self->_topOuterCircle;
  v77 = [CAFilter filterWithType:v126];
  [(CAShapeLayer *)v76 setCompositingFilter:v77];

  v78 = +[CAShapeLayer layer];
  topInnerCircle = self->_topInnerCircle;
  self->_topInnerCircle = v78;

  [(CAShapeLayer *)self->_topInnerCircle setFrame:0.0, 0.0, 195.0, 195.0];
  v80 = self->_topInnerCircle;
  v81 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 195.0, 195.0];
  -[CAShapeLayer setPath:](v80, "setPath:", [v81 CGPath]);

  v82 = self->_topInnerCircle;
  v83 = +[UIColor blackColor];
  -[CAShapeLayer setFillColor:](v82, "setFillColor:", [v83 CGColor]);

  v84 = self->_topInnerCircle;
  v85 = [CAFilter filterWithType:v126];
  [(CAShapeLayer *)v84 setCompositingFilter:v85];

  v86 = +[CAShapeLayer layer];
  bottomOuterCircle = self->_bottomOuterCircle;
  self->_bottomOuterCircle = v86;

  [(CAShapeLayer *)self->_bottomOuterCircle setFrame:0.0, 0.0, 200.0, 200.0];
  v88 = self->_bottomOuterCircle;
  v89 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 200.0, 200.0];
  -[CAShapeLayer setPath:](v88, "setPath:", [v89 CGPath]);

  v90 = self->_bottomOuterCircle;
  v91 = +[UIColor blackColor];
  -[CAShapeLayer setFillColor:](v90, "setFillColor:", [v91 CGColor]);

  v92 = self->_bottomOuterCircle;
  v93 = [CAFilter filterWithType:v126];
  [(CAShapeLayer *)v92 setCompositingFilter:v93];

  v94 = +[CAShapeLayer layer];
  bottomInnerCircle = self->_bottomInnerCircle;
  self->_bottomInnerCircle = v94;

  [(CAShapeLayer *)self->_bottomInnerCircle setFrame:0.0, 0.0, 195.0, 195.0];
  v96 = self->_bottomInnerCircle;
  v97 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 195.0, 195.0];
  -[CAShapeLayer setPath:](v96, "setPath:", [v97 CGPath]);

  v98 = self->_bottomInnerCircle;
  v99 = +[UIColor blackColor];
  -[CAShapeLayer setFillColor:](v98, "setFillColor:", [v99 CGColor]);

  v100 = self->_bottomInnerCircle;
  v101 = [CAFilter filterWithType:v126];
  [(CAShapeLayer *)v100 setCompositingFilter:v101];

  layer6 = [(UIView *)self->_filterContainer layer];
  [layer6 addSublayer:self->_topOuterCircle];

  layer7 = [(UIView *)self->_filterContainer layer];
  [layer7 addSublayer:self->_topInnerCircle];

  layer8 = [(UIView *)self->_filterContainer layer];
  [layer8 addSublayer:self->_bottomOuterCircle];

  layer9 = [(UIView *)self->_filterContainer layer];
  [layer9 addSublayer:self->_bottomInnerCircle];

  v106 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  degreesLabel = self->_degreesLabel;
  self->_degreesLabel = v106;

  v108 = self->_degreesLabel;
  v109 = +[UIColor blackColor];
  [(UILabel *)v108 setTextColor:v109];

  [(LevelPageViewController *)self updateDegreesLabel];
  layer10 = [(UILabel *)self->_degreesLabel layer];
  v111 = [CAFilter filterWithType:v126];
  [layer10 setCompositingFilter:v111];

  [(UIView *)self->_filterContainer addSubview:self->_degreesLabel];
  v112 = +[CALayer layer];
  rightLevelTic = self->_rightLevelTic;
  self->_rightLevelTic = v112;

  [(CALayer *)self->_rightLevelTic setFrame:0.0, 0.0, 40.5, 1.5];
  v114 = self->_rightLevelTic;
  v115 = +[UIColor blackColor];
  -[CALayer setBackgroundColor:](v114, "setBackgroundColor:", [v115 CGColor]);

  [(CALayer *)self->_rightLevelTic setAllowsEdgeAntialiasing:1];
  layer11 = [(UIView *)self->_ticContainer layer];
  [layer11 addSublayer:self->_rightLevelTic];

  v117 = +[CALayer layer];
  leftLevelTic = self->_leftLevelTic;
  self->_leftLevelTic = v117;

  [(CALayer *)self->_leftLevelTic setFrame:0.0, 0.0, 40.5, 1.5];
  v119 = self->_leftLevelTic;
  v120 = +[UIColor blackColor];
  -[CALayer setBackgroundColor:](v119, "setBackgroundColor:", [v120 CGColor]);

  [(CALayer *)self->_leftLevelTic setAllowsEdgeAntialiasing:1];
  layer12 = [(UIView *)self->_ticContainer layer];
  [layer12 addSublayer:self->_leftLevelTic];

  [(UIView *)self->_filterContainer addSubview:self->_ticContainer];
  view4 = [(LevelPageViewController *)self view];
  [view4 addSubview:self->_filterContainer];

  v123 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"toggleHold:"];
  holdRecognizer = self->_holdRecognizer;
  self->_holdRecognizer = v123;

  view5 = [(LevelPageViewController *)self view];
  [view5 addGestureRecognizer:self->_holdRecognizer];
}

- (BOOL)_updateForRotation:(double)rotation shiftAngle:(double)angle
{
  self->_currentShift = angle;
  self->_currentRotation = rotation;
  v7 = rotation * 180.0 / 3.14159265;
  if (self->_isHeld)
  {
    v8 = 216;
LABEL_3:
    v9 = *(&self->super.super.super.isa + v8);
    goto LABEL_18;
  }

  if (fabs(angle * 180.0 / 3.14159265) <= 40.0)
  {
    v10 = fabs(v7);
    if (v10 >= 20.0)
    {
      if (v10 <= 160.0)
      {
        if (v7 <= 70.0 || v7 >= 110.0)
        {
          if (v7 >= -70.0 || v7 <= -110.0)
          {
            v8 = 200;
            goto LABEL_3;
          }

          v9 = 4;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else if (angle <= 0.0)
  {
    v9 = 6;
  }

  else
  {
    v9 = 5;
  }

LABEL_18:
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  orientation = self->_orientation;
  v12 = v9 != orientation;
  if (v9 != orientation)
  {
    traitCollection = [(LevelPageViewController *)self traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];

    if (verticalSizeClass == 2)
    {
      self->_previousOrientation = v9;
      [(LevelPageViewController *)self updateTicsForOrientation:v9];
    }

    else
    {
      traitCollection2 = [(LevelPageViewController *)self traitCollection];
      verticalSizeClass2 = [traitCollection2 verticalSizeClass];

      if (verticalSizeClass2 == 1)
      {
        self->_previousOrientation = v9;
      }
    }

    [(LevelPageViewController *)self updateTicsForOrientation:v9];
  }

  self->_orientation = v9;
  if (self->_isHeld)
  {
    if (v9 != 5)
    {
      if (v9 != 6)
      {
        holdAngle = self->_holdAngle;
        v18 = holdAngle - sub_100003088(holdAngle, self->_currentRotation);
LABEL_39:
        v7 = v18 * 180.0 / 3.14159265;
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v9 > 3)
  {
    if (v9 != 4)
    {
      if (v9 != 5)
      {
        v7 = 0.0;
        if (v9 != 6)
        {
          goto LABEL_43;
        }

LABEL_36:
        v21 = 1.57079633;
LABEL_38:
        v18 = angle + v21;
        goto LABEL_39;
      }

LABEL_37:
      v21 = -1.57079633;
      goto LABEL_38;
    }

    v19 = sub_100003088(-2.35619449, rotation) * 180.0 / 3.14159265;
    v20 = 90.0;
  }

  else
  {
    if (v9 == 1)
    {
      goto LABEL_43;
    }

    if (v9 == 2)
    {
      v19 = sub_100003088(3.14159265, rotation) * 180.0 / 3.14159265;
      v20 = -180.0;
    }

    else
    {
      v7 = 0.0;
      if (v9 != 3)
      {
        goto LABEL_43;
      }

      v19 = sub_100003088(1.57079633, rotation) * 180.0 / 3.14159265;
      v20 = -90.0;
    }
  }

  v7 = v19 + v20;
LABEL_43:
  +[CATransaction commit];
  if (fabs(v7) >= self->_zeroRange)
  {
    v23 = 0;
    self->_framesLevel = 0;
  }

  else
  {
    framesLevel = self->_framesLevel;
    if (framesLevel > 29)
    {
      v23 = 1;
    }

    else
    {
      self->_framesLevel = framesLevel + 1;
      v23 = framesLevel == 29;
      v12 = 1;
    }
  }

  if (self->_isLevel != v23)
  {
    if (self->_isLevel && vabdd_f64(self->_lastLevelChange, v7) <= 0.5)
    {
      v12 = 0;
      self->_framesLevel = 30;
      return v12;
    }

    self->_isLevel = v23;
    if (v23)
    {
      if (!self->_impactConfig)
      {
        v24 = +[_UIImpactFeedbackGeneratorConfiguration defaultConfiguration];
        v25 = [v24 tweakedConfigurationForCaller:self usage:@"levelDetent"];
        impactConfig = self->_impactConfig;
        self->_impactConfig = v25;
      }

      [(UIImpactFeedbackGenerator *)self->_impactGenerator deactivate];
      impactGenerator = self->_impactGenerator;
      if (!impactGenerator)
      {
        v28 = [UIImpactFeedbackGenerator alloc];
        v29 = self->_impactConfig;
        view = [(LevelPageViewController *)self view];
        v31 = [v28 initWithConfiguration:v29 view:view];
        v32 = self->_impactGenerator;
        self->_impactGenerator = v31;

        impactGenerator = self->_impactGenerator;
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100004838;
      v35[3] = &unk_100464AC8;
      v35[4] = self;
      [(UIImpactFeedbackGenerator *)impactGenerator activateWithCompletionBlock:v35];
    }

    self->_lastLevelChange = v7;
    [(LevelPageViewController *)self updateColors];
    v12 = 1;
  }

  v33 = 0.0;
  if (!v23)
  {
    v33 = v7;
  }

  [(LevelPageViewController *)self _updateOffsetLabel:v33];
  return v12;
}

- (void)updateDegreesLabel
{
  degreesLabel = self->_degreesLabel;
  labelFont = [(LevelPageViewController *)self labelFont];
  [(UILabel *)degreesLabel setFont:labelFont];

  [(UILabel *)self->_degreesLabel sizeToFit];
  v5 = self->_degreesLabel;
  view = [(LevelPageViewController *)self view];
  [view center];
  [(UILabel *)v5 setCenter:?];
}

- (void)updateColors
{
  isHeld = self->_isHeld;
  v4 = isHeld && (self->_heldOrientation - 5) < 2;
  v18 = +[UIColor systemGreenColor];
  if (v4)
  {
    +[UIColor systemRedColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v5 = ;
  v6 = +[UIColor systemRedColor];
  v7 = v6;
  heldLevelBottom = self->_heldLevelBottom;
  if (self->_isLevel)
  {
    v9 = v18;
    -[CALayer setBackgroundColor:](heldLevelBottom, "setBackgroundColor:", [v18 CGColor]);
    heldLevelBottomBacking = self->_heldLevelBottomBacking;
    v11 = v18;
    -[CALayer setBackgroundColor:](heldLevelBottomBacking, "setBackgroundColor:", [v18 CGColor]);
    divergenceLevelBottom = self->_divergenceLevelBottom;
    v13 = v18;
    -[CALayer setBackgroundColor:](divergenceLevelBottom, "setBackgroundColor:", [v18 CGColor]);
    if (isHeld && !v4)
    {
      v14 = v5;
    }

    else
    {
      v14 = v18;
    }

    v15 = &OBJC_IVAR___LevelPageViewController__bottomOuterCircle;
    v16 = &OBJC_IVAR___LevelPageViewController__bottomInnerCircle;
    v17 = v18;
  }

  else
  {
    -[CALayer setBackgroundColor:](heldLevelBottom, "setBackgroundColor:", [v6 CGColor]);
    -[CALayer setBackgroundColor:](self->_heldLevelBottomBacking, "setBackgroundColor:", [v18 CGColor]);
    -[CALayer setBackgroundColor:](self->_divergenceLevelBottom, "setBackgroundColor:", [v7 CGColor]);
    v15 = &OBJC_IVAR___LevelPageViewController__bottomInnerCircle;
    v14 = v5;
    v17 = v5;
    v16 = &OBJC_IVAR___LevelPageViewController__bottomOuterCircle;
  }

  -[CALayer setBackgroundColor:](self->_levelBottom, "setBackgroundColor:", [v14 CGColor]);
  -[CAShapeLayer setFillColor:](self->_topInnerCircle, "setFillColor:", [v17 CGColor]);
  -[CAShapeLayer setFillColor:](self->_topOuterCircle, "setFillColor:", [v17 CGColor]);
  [*(&self->super.super.super.isa + *v16) setFillColor:{objc_msgSend(v17, "CGColor")}];
  [*(&self->super.super.super.isa + *v15) setFillColor:{objc_msgSend(v17, "CGColor")}];
  [(UILabel *)self->_degreesLabel setTextColor:v17];
  -[CALayer setBackgroundColor:](self->_leftLevelTic, "setBackgroundColor:", [v17 CGColor]);
  -[CALayer setBackgroundColor:](self->_rightLevelTic, "setBackgroundColor:", [v17 CGColor]);
}

- (void)_enableIdleTimer
{
  v2 = +[UIApplication sharedApplication];
  [v2 setIdleTimerDisabled:0];
}

- (void)_updateOffsetLabel:(double)label
{
  labelCopy = label;
  v5 = fabs(label);
  if (v5 < 1.0 && v5 > self->_zeroRange)
  {
    labelCopy = (*&label >> 63) | 1;
  }

  lastDisplayDegrees = self->_lastDisplayDegrees;
  levelIdleTimer = self->_levelIdleTimer;
  if (lastDisplayDegrees == labelCopy)
  {
    if (levelIdleTimer)
    {
      return;
    }

    v14 = [NSTimer scheduledTimerWithTimeInterval:self target:"_enableIdleTimer" selector:0 userInfo:0 repeats:60.0];
    v15 = self->_levelIdleTimer;
    self->_levelIdleTimer = v14;
  }

  else
  {
    [(NSTimer *)levelIdleTimer invalidate];
    v8 = self->_levelIdleTimer;
    self->_levelIdleTimer = 0;

    v9 = +[UIApplication sharedApplication];
    [v9 setIdleTimerDisabled:1];

    self->_lastDisplayDegrees = labelCopy;
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"COMPASS_DEGREES" value:&stru_10047BCD0 table:0];
    labelCopy = [NSString localizedStringWithFormat:v11, labelCopy];

    [(UILabel *)self->_degreesLabel setText:labelCopy];
    [(UILabel *)self->_degreesLabel sizeToFit];
    degreesLabel = self->_degreesLabel;
    view = [(LevelPageViewController *)self view];
    [view center];
    [(UILabel *)degreesLabel setCenter:?];

    v15 = labelCopy;
  }

  _objc_release_x1(v14, v15);
}

- (void)updateLevelWithForcedInterfaceUpdate:(BOOL)update
{
  updateCopy = update;
  deviceMotion = [(CMMotionManager *)self->_manager deviceMotion];
  attitude = [deviceMotion attitude];

  if (self->_holdAttitude)
  {
    [attitude multiplyByInverseOfAttitude:?];
  }

  v62 = 0.0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (attitude)
  {
    [attitude rotationMatrix];
    v9 = *&v59;
    v8 = *(&v60 + 1);
    v7 = v62;
  }

  v10 = -v9;
  v11 = -v7;
  v12 = v8 * v8 + v9 * v9;
  v13 = sqrt(v12);
  if (v12 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v13;
  }

  v15 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v16 = atan2(v10, v8);
  v17 = acos(v11);
  v18 = -1.57079633;
  v19 = v17 + -1.57079633;
  holdAngle = self->_holdAngle;
  v21 = [(LevelPageViewController *)self _updateForRotation:v16 shiftAngle:(v17 + -1.57079633)];
  if (v14 <= 0.100000001)
  {
    v24 = self->_rotationOrientation - 2;
    v25 = 0.0;
    if (v24 <= 2)
    {
      v25 = dbl_1003D2EF0[v24];
    }

    v18 = sub_100003088(v16, v25);
    v26 = 1.0;
    if (v14 >= 0.0250000004)
    {
      v26 = (v14 + -0.0250000004) / -0.0750000011 + 1.0;
    }

    v16 = sub_10000310C(v16, v18, v26);
  }

  else
  {
    v22 = v16 * 180.0 / 3.14159265;
    v23 = fabs(v22);
    if (v23 >= 45.0)
    {
      if (v23 <= 135.0)
      {
        if (v22 <= 45.0 || v22 >= 135.0)
        {
          self->_rotationOrientation = 4;
        }

        else
        {
          self->_rotationOrientation = 3;
          v18 = 1.57079633;
        }
      }

      else
      {
        self->_rotationOrientation = 2;
        v18 = -3.14159265;
      }
    }

    else
    {
      self->_rotationOrientation = 1;
      v18 = 0.0;
    }
  }

  if (vabdd_f64(v19, self->_previousShift) <= 0.0000999999975 && vabdd_f64(v16, self->_previousRotation) <= 0.0000999999975)
  {
    v27 = v21 | updateCopy;
  }

  else
  {
    v27 = 1;
  }

  v28 = v19 / 1.57079633;
  framesLevel = self->_framesLevel;
  if (framesLevel < 1)
  {
LABEL_26:
    if (!v27)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v30 = framesLevel / 30.0;
  orientation = self->_orientation;
  if (orientation != 5)
  {
    if (orientation == 6)
    {
      v28 = v28 * (1.0 - v30) - v30;
    }

    goto LABEL_26;
  }

  v28 = v30 + v28 * (1.0 - v30);
  if (!v27)
  {
    goto LABEL_31;
  }

LABEL_27:
  v32 = self->_holdShift / 1.57079633;
  view = [(LevelPageViewController *)self view];
  [view bounds];
  v34 = CGRectGetHeight(v63) * 1.29999995;

  *&v35 = v14;
  [v15 _solveForInput:v35];
  v37 = v34 * (v36 * 0.399999976 + 0.600000024);
  memset(&v57, 0, sizeof(v57));
  CATransform3DMakeRotation(&v57, v16, 0.0, 0.0, -1.0);
  memset(&v56, 0, sizeof(v56));
  CATransform3DMakeRotation(&v56, holdAngle, 0.0, 0.0, -1.0);
  memset(&v55, 0, sizeof(v55));
  v54 = v57;
  CATransform3DTranslate(&v55, &v54, 0.0, -(v34 * v28), 0.0);
  memset(&v54, 0, sizeof(v54));
  v53 = v56;
  CATransform3DTranslate(&v54, &v53, 0.0, -(v34 * v32), 0.0);
  memset(&v53, 0, sizeof(v53));
  v52 = v57;
  CATransform3DTranslate(&v53, &v52, 0.0, -(v37 * (v28 + -1.0)), 0.0);
  memset(&v52, 0, sizeof(v52));
  v51 = v57;
  CATransform3DTranslate(&v52, &v51, 0.0, (v28 + -1.0) * v37, 0.0);
  memset(&v51, 0, sizeof(v51));
  v50 = v57;
  CATransform3DTranslate(&v51, &v50, 0.0, -(v37 * (v28 + 1.0)), 0.0);
  memset(&v50, 0, sizeof(v50));
  v49 = v57;
  CATransform3DTranslate(&v50, &v49, 0.0, (v28 + 1.0) * v37, 0.0);
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  levelBottom = self->_levelBottom;
  v49 = v55;
  [(CALayer *)levelBottom setTransform:&v49];
  heldLevelBottom = self->_heldLevelBottom;
  v49 = v54;
  [(CALayer *)heldLevelBottom setTransform:&v49];
  heldLevelBottomBacking = self->_heldLevelBottomBacking;
  v49 = v54;
  [(CALayer *)heldLevelBottomBacking setTransform:&v49];
  divergenceLevelBottom = self->_divergenceLevelBottom;
  v49 = v55;
  [(CALayer *)divergenceLevelBottom setTransform:&v49];
  layer = [(UILabel *)self->_degreesLabel layer];
  v49 = v57;
  [layer setTransform:&v49];

  bottomOuterCircle = self->_bottomOuterCircle;
  v49 = v53;
  [(CAShapeLayer *)bottomOuterCircle setTransform:&v49];
  bottomInnerCircle = self->_bottomInnerCircle;
  v49 = v52;
  [(CAShapeLayer *)bottomInnerCircle setTransform:&v49];
  topOuterCircle = self->_topOuterCircle;
  v49 = v51;
  [(CAShapeLayer *)topOuterCircle setTransform:&v49];
  topInnerCircle = self->_topInnerCircle;
  v49 = v50;
  [(CAShapeLayer *)topInnerCircle setTransform:&v49];
  isHeld = self->_isHeld;
  layer2 = [(UIView *)self->_ticContainer layer];
  if (isHeld)
  {
    v49 = v56;
  }

  else
  {
    CATransform3DMakeRotation(&v49, v18, 0.0, 0.0, 1.0);
  }

  [layer2 setTransform:&v49];

  +[CATransaction commit];
LABEL_31:
  self->_previousShift = v19;
  self->_previousRotation = v16;
}

- (void)viewWillLayoutSubviews
{
  v39.receiver = self;
  v39.super_class = LevelPageViewController;
  [(LevelPageViewController *)&v39 viewWillLayoutSubviews];
  degreesLabel = self->_degreesLabel;
  view = [(LevelPageViewController *)self view];
  [view center];
  [(UILabel *)degreesLabel setCenter:?];

  bottomOuterCircle = self->_bottomOuterCircle;
  view2 = [(LevelPageViewController *)self view];
  [view2 center];
  [(CAShapeLayer *)bottomOuterCircle setPosition:?];

  bottomInnerCircle = self->_bottomInnerCircle;
  view3 = [(LevelPageViewController *)self view];
  [view3 center];
  [(CAShapeLayer *)bottomInnerCircle setPosition:?];

  topOuterCircle = self->_topOuterCircle;
  view4 = [(LevelPageViewController *)self view];
  [view4 center];
  [(CAShapeLayer *)topOuterCircle setPosition:?];

  topInnerCircle = self->_topInnerCircle;
  view5 = [(LevelPageViewController *)self view];
  [view5 center];
  [(CAShapeLayer *)topInnerCircle setPosition:?];

  view6 = [(LevelPageViewController *)self view];
  [view6 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  leftLevelTic = self->_leftLevelTic;
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v24 = MidX - CGRectGetWidth(v41) * 0.5;
  [(CALayer *)self->_leftLevelTic bounds];
  v25 = v24 + CGRectGetWidth(v42) * 0.5;
  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  v43.size.height = v21;
  [(CALayer *)leftLevelTic setPosition:v25, CGRectGetMidY(v43)];
  rightLevelTic = self->_rightLevelTic;
  v44.origin.x = v15;
  v44.origin.y = v17;
  v44.size.width = v19;
  v44.size.height = v21;
  v27 = CGRectGetMidX(v44);
  v45.origin.x = v15;
  v45.origin.y = v17;
  v45.size.width = v19;
  v45.size.height = v21;
  v28 = v27 + CGRectGetWidth(v45) * 0.5;
  [(CALayer *)self->_rightLevelTic bounds];
  v29 = v28 - CGRectGetWidth(v46) * 0.5;
  v47.origin.x = v15;
  v47.origin.y = v17;
  v47.size.width = v19;
  v47.size.height = v21;
  [(CALayer *)rightLevelTic setPosition:v29, CGRectGetMidY(v47)];
  v48.origin.x = v15;
  v48.origin.y = v17;
  v48.size.width = v19;
  v48.size.height = v21;
  v30 = v17 + CGRectGetHeight(v48) * 0.5;
  heldLevelBottom = self->_heldLevelBottom;
  v49.origin.x = v15;
  v49.origin.y = v30;
  v49.size.width = v19;
  v49.size.height = v21;
  v32 = CGRectGetMidX(v49);
  v50.origin.x = v15;
  v50.origin.y = v30;
  v50.size.width = v19;
  v50.size.height = v21;
  [(CALayer *)heldLevelBottom setPosition:v32, CGRectGetMinY(v50)];
  heldLevelBottomBacking = self->_heldLevelBottomBacking;
  v51.origin.x = v15;
  v51.origin.y = v30;
  v51.size.width = v19;
  v51.size.height = v21;
  v34 = CGRectGetMidX(v51);
  v52.origin.x = v15;
  v52.origin.y = v30;
  v52.size.width = v19;
  v52.size.height = v21;
  [(CALayer *)heldLevelBottomBacking setPosition:v34, CGRectGetMinY(v52)];
  divergenceLevelBottom = self->_divergenceLevelBottom;
  v53.origin.x = v15;
  v53.origin.y = v30;
  v53.size.width = v19;
  v53.size.height = v21;
  v36 = CGRectGetMidX(v53);
  v54.origin.x = v15;
  v54.origin.y = v30;
  v54.size.width = v19;
  v54.size.height = v21;
  [(CALayer *)divergenceLevelBottom setPosition:v36, CGRectGetMinY(v54)];
  levelBottom = self->_levelBottom;
  v55.origin.x = v15;
  v55.origin.y = v30;
  v55.size.width = v19;
  v55.size.height = v21;
  v38 = CGRectGetMidX(v55);
  v56.origin.x = v15;
  v56.origin.y = v30;
  v56.size.width = v19;
  v56.size.height = v21;
  [(CALayer *)levelBottom setPosition:v38, CGRectGetMinY(v56)];
  [(LevelPageViewController *)self updateLevelWithForcedInterfaceUpdate:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = LevelPageViewController;
  [(LevelPageViewController *)&v10 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"userDefaultsChanged:" name:NSUserDefaultsDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"contentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v6 = [CADisplayLink displayLinkWithTarget:self selector:"updateDisplay:"];
  displayLink = self->_displayLink;
  self->_displayLink = v6;

  v8 = self->_displayLink;
  v9 = +[NSRunLoop mainRunLoop];
  [(CADisplayLink *)v8 addToRunLoop:v9 forMode:NSDefaultRunLoopMode];

  [(LevelPageViewController *)self notifyViewShown];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = LevelPageViewController;
  [(LevelPageViewController *)&v10 viewDidDisappear:disappear];
  [(UIImpactFeedbackGenerator *)self->_impactGenerator deactivate];
  impactGenerator = self->_impactGenerator;
  self->_impactGenerator = 0;

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6 = +[UIApplication sharedApplication];
  [v6 setIdleTimerDisabled:0];

  displayLink = self->_displayLink;
  v8 = +[NSRunLoop mainRunLoop];
  [(CADisplayLink *)displayLink removeFromRunLoop:v8 forMode:NSDefaultRunLoopMode];

  v9 = self->_displayLink;
  self->_displayLink = 0;

  [(LevelPageViewController *)self notifyViewHidden];
}

- (void)updateTicsForOrientation:(int64_t)orientation
{
  v4 = (orientation - 5) < 0xFFFFFFFFFFFFFFFCLL;
  [(CALayer *)self->_leftLevelTic setHidden:v4];
  rightLevelTic = self->_rightLevelTic;

  [(CALayer *)rightLevelTic setHidden:v4];
}

- (void)userDefaultsChanged:(id)changed
{
  v4 = +[NSUserDefaults standardUserDefaults];
  self->_zeroRange = [v4 BOOLForKey:@"0.5"];
}

- (void)toggleHold:(id)hold
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (self->_isHeld)
  {
    self->_isHeld = 0;
    [(CALayer *)self->_heldLevelBottom setHidden:1];
    [(CALayer *)self->_heldLevelBottomBacking setHidden:1];
    [(CALayer *)self->_divergenceLevelBottom setHidden:1];
    [(CAShapeLayer *)self->_topInnerCircle setHidden:0];
    [(CAShapeLayer *)self->_bottomInnerCircle setHidden:0];
    [(CAShapeLayer *)self->_topOuterCircle setHidden:0];
    [(CAShapeLayer *)self->_bottomOuterCircle setHidden:0];
    [(LevelPageViewController *)self setHoldAttitude:0];
    [(LevelPageViewController *)self updateTicsForOrientation:self->_orientation];
  }

  else
  {
    self->_isHeld = 1;
    orientation = self->_orientation;
    self->_heldOrientation = orientation;
    if ((orientation - 5) > 1)
    {
      self->_holdAngle = self->_currentRotation;
      self->_holdShift = self->_currentShift;
      [(CALayer *)self->_heldLevelBottom setHidden:0];
      [(CALayer *)self->_heldLevelBottomBacking setHidden:0];
      [(CALayer *)self->_divergenceLevelBottom setHidden:0];
      [(CAShapeLayer *)self->_topInnerCircle setHidden:1];
      [(CAShapeLayer *)self->_bottomInnerCircle setHidden:1];
      [(CAShapeLayer *)self->_topOuterCircle setHidden:1];
      [(CAShapeLayer *)self->_bottomOuterCircle setHidden:1];
    }

    else
    {
      deviceMotion = [(CMMotionManager *)self->_manager deviceMotion];
      attitude = [deviceMotion attitude];
      [(LevelPageViewController *)self setHoldAttitude:attitude];
    }
  }

  [(LevelPageViewController *)self updateLevelWithForcedInterfaceUpdate:1];
  [(LevelPageViewController *)self updateColors];

  +[CATransaction commit];
}

- (void)notifyViewShown
{
  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D4F08;
  *(qword_1004D4F08 + 16) = 1;
  v3 = v2 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  *(v3 + 72) = 1;
}

- (void)notifyViewHidden
{
  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  *(qword_1004D4F08 + 16) = 0;
}

- (id)labelFont
{
  v2 = sub_10019FF34();

  return v2;
}

@end