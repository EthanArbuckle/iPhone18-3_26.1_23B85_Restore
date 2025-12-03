@interface VLFPuckModeCircleView
- (BOOL)isVisible;
- (VLFPuckModeCircleView)initWithFrame:(CGRect)frame;
- (id)pulseAnimation;
- (void)dealloc;
- (void)hide;
- (void)hideWithDuration:(double)duration startingOpacity:(double)opacity shouldShrink:(BOOL)shrink suppressOtherAnimations:(BOOL)animations;
- (void)pulseOnce;
- (void)setupConstraints;
- (void)show;
- (void)showWithDuration:(double)duration startingOpacity:(double)opacity shouldGrow:(BOOL)grow suppressOtherAnimations:(BOOL)animations;
- (void)startPulsing;
- (void)stopPulsing;
- (void)traitCollectionDidChange:(id)change;
- (void)updateShadowForCurrentTraitCollection;
@end

@implementation VLFPuckModeCircleView

- (void)updateShadowForCurrentTraitCollection
{
  traitCollection = [(VLFPuckModeCircleView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle <= 2)
  {
    v5 = dword_101215C00[userInterfaceStyle];
    layer = [(VLFPuckModeCircleView *)self layer];
    LODWORD(v6) = v5;
    [layer setShadowOpacity:v6];
  }
}

- (void)setupConstraints
{
  [(VLFPuckModeCircleView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [(VLFPuckModeCircleView *)self widthAnchor];
  v31 = [widthAnchor constraintEqualToConstant:44.0];
  v33[0] = v31;
  heightAnchor = [(VLFPuckModeCircleView *)self heightAnchor];
  widthAnchor2 = [(VLFPuckModeCircleView *)self widthAnchor];
  v28 = [heightAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  v33[1] = v28;
  backgroundView = [(VLFPuckModeCircleView *)self backgroundView];
  leadingAnchor = [backgroundView leadingAnchor];
  leadingAnchor2 = [(VLFPuckModeCircleView *)self leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[2] = v24;
  backgroundView2 = [(VLFPuckModeCircleView *)self backgroundView];
  trailingAnchor = [backgroundView2 trailingAnchor];
  trailingAnchor2 = [(VLFPuckModeCircleView *)self trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v33[3] = v20;
  backgroundView3 = [(VLFPuckModeCircleView *)self backgroundView];
  topAnchor = [backgroundView3 topAnchor];
  topAnchor2 = [(VLFPuckModeCircleView *)self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[4] = v16;
  backgroundView4 = [(VLFPuckModeCircleView *)self backgroundView];
  bottomAnchor = [backgroundView4 bottomAnchor];
  bottomAnchor2 = [(VLFPuckModeCircleView *)self bottomAnchor];
  v3 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[5] = v3;
  viewFinderImageView = [(VLFPuckModeCircleView *)self viewFinderImageView];
  centerXAnchor = [viewFinderImageView centerXAnchor];
  centerXAnchor2 = [(VLFPuckModeCircleView *)self centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[6] = v7;
  viewFinderImageView2 = [(VLFPuckModeCircleView *)self viewFinderImageView];
  centerYAnchor = [viewFinderImageView2 centerYAnchor];
  centerYAnchor2 = [(VLFPuckModeCircleView *)self centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v33[7] = v11;
  v12 = [NSArray arrayWithObjects:v33 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)stopPulsing
{
  viewFinderImageView = [(VLFPuckModeCircleView *)self viewFinderImageView];
  layer = [viewFinderImageView layer];
  v5 = [layer animationForKey:@"transform.scale.xy.repeat"];

  if (v5)
  {
    v6 = sub_10001EA64();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Stop pulsing", &v9, 0xCu);
    }

    viewFinderImageView2 = [(VLFPuckModeCircleView *)self viewFinderImageView];
    layer2 = [viewFinderImageView2 layer];
    [layer2 removeAnimationForKey:@"transform.scale.xy.repeat"];
  }
}

- (void)hide
{
  layer = [(VLFPuckModeCircleView *)self layer];
  [layer opacity];
  [(VLFPuckModeCircleView *)self hideWithDuration:1 startingOpacity:0 shouldShrink:0.200000003 suppressOtherAnimations:v3];
}

- (id)pulseAnimation
{
  v2 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.xy"];
  [v2 setValues:&off_1016EDA90];
  [v2 setKeyTimes:&off_1016EDAA8];
  v3 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v7[0] = v3;
  v4 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];
  [v2 setTimingFunctions:v5];

  [v2 setDuration:1.0];
  [v2 setRemovedOnCompletion:0];

  return v2;
}

- (void)hideWithDuration:(double)duration startingOpacity:(double)opacity shouldShrink:(BOOL)shrink suppressOtherAnimations:(BOOL)animations
{
  animationsCopy = animations;
  shrinkCopy = shrink;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v12 = dispatch_queue_get_label(0);
  if (label != v12)
  {
    v13 = !label || v12 == 0;
    if (v13 || strcmp(label, v12))
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = 136316418;
        selfCopy = "[VLFPuckModeCircleView hideWithDuration:startingOpacity:shouldShrink:suppressOtherAnimations:]";
        v27 = 2080;
        v28 = "VLFPuckModeCircleView.m";
        v29 = 1024;
        v30 = 195;
        v31 = 2080;
        v32 = "dispatch_get_main_queue()";
        v33 = 2080;
        v34 = dispatch_queue_get_label(&_dispatch_main_q);
        v35 = 2080;
        v36 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v25, 0x3Au);
      }

      if (sub_100E03634())
      {
        v23 = sub_10006D178();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = +[NSThread callStackSymbols];
          v25 = 138412290;
          selfCopy = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
        }
      }
    }
  }

  if (fabs(opacity) >= 0.00000011920929 && ![(VLFPuckModeCircleView *)self isSuppressingAnimations])
  {
    v14 = sub_10001EA64();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v25 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Hiding VLF puck UI", &v25, 0xCu);
    }

    v15 = +[NSMutableArray array];
    if (shrinkCopy)
    {
      v16 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
      [v16 setFromValue:&off_1016E9DD0];
      [v16 setToValue:&off_1016E9DB8];
      [v15 addObject:v16];
    }

    v17 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    v18 = [NSNumber numberWithDouble:opacity];
    [v17 setFromValue:v18];

    [v17 setToValue:&off_1016E9DB8];
    [v15 addObject:v17];
    v19 = +[CAAnimationGroup animation];
    [v19 setAnimations:v15];
    [v19 setDuration:duration];
    if (animationsCopy)
    {
      [v19 setDelegate:self];
      [(VLFPuckModeCircleView *)self setSuppressAnimations:1];
    }

    layer = [(VLFPuckModeCircleView *)self layer];
    [layer addAnimation:v19 forKey:@"hide"];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    layer2 = [(VLFPuckModeCircleView *)self layer];
    [layer2 setOpacity:0.0];

    +[CATransaction commit];
  }
}

- (void)showWithDuration:(double)duration startingOpacity:(double)opacity shouldGrow:(BOOL)grow suppressOtherAnimations:(BOOL)animations
{
  animationsCopy = animations;
  growCopy = grow;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v12 = dispatch_queue_get_label(0);
  if (label != v12)
  {
    v13 = !label || v12 == 0;
    if (v13 || strcmp(label, v12))
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = 136316418;
        selfCopy = "[VLFPuckModeCircleView showWithDuration:startingOpacity:shouldGrow:suppressOtherAnimations:]";
        v28 = 2080;
        v29 = "VLFPuckModeCircleView.m";
        v30 = 1024;
        v31 = 145;
        v32 = 2080;
        v33 = "dispatch_get_main_queue()";
        v34 = 2080;
        v35 = dispatch_queue_get_label(&_dispatch_main_q);
        v36 = 2080;
        v37 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v26, 0x3Au);
      }

      if (sub_100E03634())
      {
        v24 = sub_10006D178();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = +[NSThread callStackSymbols];
          v26 = 138412290;
          selfCopy = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
        }
      }
    }
  }

  if (fabs(opacity + -1.0) >= 0.00000011920929 && ![(VLFPuckModeCircleView *)self isSuppressingAnimations])
  {
    v14 = sub_10001EA64();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v26 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Showing VLF puck UI", &v26, 0xCu);
    }

    v15 = +[NSMutableArray array];
    if (growCopy)
    {
      v16 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
      [v16 setFromValue:&off_1016E9DB8];
      [v16 setToValue:&off_1016E9DD0];
      [v15 addObject:v16];
    }

    v17 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    v18 = [NSNumber numberWithDouble:opacity];
    [v17 setFromValue:v18];

    [v17 setToValue:&off_1016E9DD0];
    [v15 addObject:v17];
    v19 = +[CAAnimationGroup animation];
    [v19 setAnimations:v15];
    [v19 setDuration:duration];
    if (animationsCopy)
    {
      [v19 setDelegate:self];
      [(VLFPuckModeCircleView *)self setSuppressAnimations:1];
    }

    layer = [(VLFPuckModeCircleView *)self layer];
    [layer addAnimation:v19 forKey:@"show"];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    layer2 = [(VLFPuckModeCircleView *)self layer];
    LODWORD(v22) = 1.0;
    [layer2 setOpacity:v22];

    +[CATransaction commit];
  }
}

- (void)show
{
  layer = [(VLFPuckModeCircleView *)self layer];
  [layer opacity];
  [(VLFPuckModeCircleView *)self showWithDuration:1 startingOpacity:0 shouldGrow:0.200000003 suppressOtherAnimations:v3];
}

- (BOOL)isVisible
{
  layer = [(VLFPuckModeCircleView *)self layer];
  [layer opacity];
  v4 = fabsf(v3 + -1.0) < 0.00000011921;

  return v4;
}

- (void)pulseOnce
{
  v3 = sub_10001EA64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pulsing once", &v8, 0xCu);
  }

  pulseAnimation = [(VLFPuckModeCircleView *)self pulseAnimation];
  LODWORD(v5) = 3.0;
  [pulseAnimation setRepeatCount:v5];
  viewFinderImageView = [(VLFPuckModeCircleView *)self viewFinderImageView];
  layer = [viewFinderImageView layer];
  [layer addAnimation:pulseAnimation forKey:@"transform.scale.xy.pulse"];
}

- (void)startPulsing
{
  viewFinderImageView = [(VLFPuckModeCircleView *)self viewFinderImageView];
  layer = [viewFinderImageView layer];
  v5 = [layer animationForKey:@"transform.scale.xy.repeat"];

  v6 = sub_10001EA64();
  pulseAnimation = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, pulseAnimation, OS_LOG_TYPE_DEBUG, "[%{public}p] There's already an ongoing pulse animation; ignoring", &v11, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, pulseAnimation, OS_LOG_TYPE_INFO, "[%{public}p] Start pulsing", &v11, 0xCu);
    }

    pulseAnimation = [(VLFPuckModeCircleView *)self pulseAnimation];
    LODWORD(v8) = 2139095040;
    [pulseAnimation setRepeatCount:v8];
    viewFinderImageView2 = [(VLFPuckModeCircleView *)self viewFinderImageView];
    layer2 = [viewFinderImageView2 layer];
    [layer2 addAnimation:pulseAnimation forKey:@"transform.scale.xy.repeat"];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = VLFPuckModeCircleView;
  [(VLFPuckModeCircleView *)&v4 traitCollectionDidChange:change];
  [(VLFPuckModeCircleView *)self updateShadowForCurrentTraitCollection];
}

- (void)dealloc
{
  v3 = sub_10001EA64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = VLFPuckModeCircleView;
  [(VLFPuckModeCircleView *)&v4 dealloc];
}

- (VLFPuckModeCircleView)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = VLFPuckModeCircleView;
  v3 = [(VLFPuckModeCircleView *)&v30 initWithFrame:0.0, 0.0, 44.0, 44.0];
  if (v3)
  {
    v4 = sub_10001EA64();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v32 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v5 = +[UIColor clearColor];
    [(VLFPuckModeCircleView *)v3 setBackgroundColor:v5];

    layer = [(VLFPuckModeCircleView *)v3 layer];
    [layer setOpacity:0.0];

    v7 = +[UIColor blackColor];
    cGColor = [v7 CGColor];
    layer2 = [(VLFPuckModeCircleView *)v3 layer];
    [layer2 setShadowColor:cGColor];

    layer3 = [(VLFPuckModeCircleView *)v3 layer];
    [layer3 setShadowOffset:{0.0, 1.0}];

    layer4 = [(VLFPuckModeCircleView *)v3 layer];
    [layer4 setShadowRadius:4.0];

    v33.size.width = 44.0;
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.height = 44.0;
    v12 = CGPathCreateWithEllipseInRect(v33, 0);
    CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v12, 0, 4.0, kCGLineCapRound, kCGLineJoinRound, 0.0);
    layer5 = [(VLFPuckModeCircleView *)v3 layer];
    [layer5 setShadowPath:CopyByStrokingPath];

    CGPathRelease(CopyByStrokingPath);
    CGPathRelease(v12);
    [(VLFPuckModeCircleView *)v3 updateShadowForCurrentTraitCollection];
    v15 = [UIVisualEffectView alloc];
    v16 = [UIBlurEffect effectWithStyle:14];
    v17 = [v15 initWithEffect:v16];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v17;

    [(UIVisualEffectView *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)v3->_backgroundView _setGroupName:@"MapsTheme"];
    layer6 = [(UIVisualEffectView *)v3->_backgroundView layer];
    [layer6 setCornerRadius:22.0];

    layer7 = [(UIVisualEffectView *)v3->_backgroundView layer];
    [layer7 setMasksToBounds:1];

    [(VLFPuckModeCircleView *)v3 addSubview:v3->_backgroundView];
    v21 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:27.0];
    v22 = [UIImage systemImageNamed:@"location.viewfinder" withConfiguration:v21];
    v23 = [v22 imageWithRenderingMode:2];

    v24 = [[UIImageView alloc] initWithImage:v23];
    viewFinderImageView = v3->_viewFinderImageView;
    v3->_viewFinderImageView = v24;

    v26 = +[UIColor systemBlueColor];
    [(UIImageView *)v3->_viewFinderImageView setTintColor:v26];

    v27 = +[UIColor clearColor];
    [(UIImageView *)v3->_viewFinderImageView setBackgroundColor:v27];

    [(UIImageView *)v3->_viewFinderImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UIVisualEffectView *)v3->_backgroundView contentView];
    [contentView addSubview:v3->_viewFinderImageView];

    [(VLFPuckModeCircleView *)v3 setupConstraints];
  }

  return v3;
}

@end