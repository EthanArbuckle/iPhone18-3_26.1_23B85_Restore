@interface VLFPuckModeCircleView
- (BOOL)isVisible;
- (VLFPuckModeCircleView)initWithFrame:(CGRect)a3;
- (id)pulseAnimation;
- (void)dealloc;
- (void)hide;
- (void)hideWithDuration:(double)a3 startingOpacity:(double)a4 shouldShrink:(BOOL)a5 suppressOtherAnimations:(BOOL)a6;
- (void)pulseOnce;
- (void)setupConstraints;
- (void)show;
- (void)showWithDuration:(double)a3 startingOpacity:(double)a4 shouldGrow:(BOOL)a5 suppressOtherAnimations:(BOOL)a6;
- (void)startPulsing;
- (void)stopPulsing;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateShadowForCurrentTraitCollection;
@end

@implementation VLFPuckModeCircleView

- (void)updateShadowForCurrentTraitCollection
{
  v3 = [(VLFPuckModeCircleView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 <= 2)
  {
    v5 = dword_101215C00[v4];
    v7 = [(VLFPuckModeCircleView *)self layer];
    LODWORD(v6) = v5;
    [v7 setShadowOpacity:v6];
  }
}

- (void)setupConstraints
{
  [(VLFPuckModeCircleView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [(VLFPuckModeCircleView *)self widthAnchor];
  v31 = [v32 constraintEqualToConstant:44.0];
  v33[0] = v31;
  v30 = [(VLFPuckModeCircleView *)self heightAnchor];
  v29 = [(VLFPuckModeCircleView *)self widthAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 multiplier:1.0];
  v33[1] = v28;
  v27 = [(VLFPuckModeCircleView *)self backgroundView];
  v26 = [v27 leadingAnchor];
  v25 = [(VLFPuckModeCircleView *)self leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v33[2] = v24;
  v23 = [(VLFPuckModeCircleView *)self backgroundView];
  v22 = [v23 trailingAnchor];
  v21 = [(VLFPuckModeCircleView *)self trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v33[3] = v20;
  v19 = [(VLFPuckModeCircleView *)self backgroundView];
  v18 = [v19 topAnchor];
  v17 = [(VLFPuckModeCircleView *)self topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v33[4] = v16;
  v15 = [(VLFPuckModeCircleView *)self backgroundView];
  v14 = [v15 bottomAnchor];
  v13 = [(VLFPuckModeCircleView *)self bottomAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v33[5] = v3;
  v4 = [(VLFPuckModeCircleView *)self viewFinderImageView];
  v5 = [v4 centerXAnchor];
  v6 = [(VLFPuckModeCircleView *)self centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v33[6] = v7;
  v8 = [(VLFPuckModeCircleView *)self viewFinderImageView];
  v9 = [v8 centerYAnchor];
  v10 = [(VLFPuckModeCircleView *)self centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v33[7] = v11;
  v12 = [NSArray arrayWithObjects:v33 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)stopPulsing
{
  v3 = [(VLFPuckModeCircleView *)self viewFinderImageView];
  v4 = [v3 layer];
  v5 = [v4 animationForKey:@"transform.scale.xy.repeat"];

  if (v5)
  {
    v6 = sub_10001EA64();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134349056;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Stop pulsing", &v9, 0xCu);
    }

    v7 = [(VLFPuckModeCircleView *)self viewFinderImageView];
    v8 = [v7 layer];
    [v8 removeAnimationForKey:@"transform.scale.xy.repeat"];
  }
}

- (void)hide
{
  v4 = [(VLFPuckModeCircleView *)self layer];
  [v4 opacity];
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

- (void)hideWithDuration:(double)a3 startingOpacity:(double)a4 shouldShrink:(BOOL)a5 suppressOtherAnimations:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
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
        v26 = "[VLFPuckModeCircleView hideWithDuration:startingOpacity:shouldShrink:suppressOtherAnimations:]";
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
          v26 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
        }
      }
    }
  }

  if (fabs(a4) >= 0.00000011920929 && ![(VLFPuckModeCircleView *)self isSuppressingAnimations])
  {
    v14 = sub_10001EA64();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v25 = 134349056;
      v26 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] Hiding VLF puck UI", &v25, 0xCu);
    }

    v15 = +[NSMutableArray array];
    if (v7)
    {
      v16 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
      [v16 setFromValue:&off_1016E9DD0];
      [v16 setToValue:&off_1016E9DB8];
      [v15 addObject:v16];
    }

    v17 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    v18 = [NSNumber numberWithDouble:a4];
    [v17 setFromValue:v18];

    [v17 setToValue:&off_1016E9DB8];
    [v15 addObject:v17];
    v19 = +[CAAnimationGroup animation];
    [v19 setAnimations:v15];
    [v19 setDuration:a3];
    if (v6)
    {
      [v19 setDelegate:self];
      [(VLFPuckModeCircleView *)self setSuppressAnimations:1];
    }

    v20 = [(VLFPuckModeCircleView *)self layer];
    [v20 addAnimation:v19 forKey:@"hide"];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v21 = [(VLFPuckModeCircleView *)self layer];
    [v21 setOpacity:0.0];

    +[CATransaction commit];
  }
}

- (void)showWithDuration:(double)a3 startingOpacity:(double)a4 shouldGrow:(BOOL)a5 suppressOtherAnimations:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
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
        v27 = "[VLFPuckModeCircleView showWithDuration:startingOpacity:shouldGrow:suppressOtherAnimations:]";
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
          v27 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
        }
      }
    }
  }

  if (fabs(a4 + -1.0) >= 0.00000011920929 && ![(VLFPuckModeCircleView *)self isSuppressingAnimations])
  {
    v14 = sub_10001EA64();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v26 = 134349056;
      v27 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Showing VLF puck UI", &v26, 0xCu);
    }

    v15 = +[NSMutableArray array];
    if (v7)
    {
      v16 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
      [v16 setFromValue:&off_1016E9DB8];
      [v16 setToValue:&off_1016E9DD0];
      [v15 addObject:v16];
    }

    v17 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    v18 = [NSNumber numberWithDouble:a4];
    [v17 setFromValue:v18];

    [v17 setToValue:&off_1016E9DD0];
    [v15 addObject:v17];
    v19 = +[CAAnimationGroup animation];
    [v19 setAnimations:v15];
    [v19 setDuration:a3];
    if (v6)
    {
      [v19 setDelegate:self];
      [(VLFPuckModeCircleView *)self setSuppressAnimations:1];
    }

    v20 = [(VLFPuckModeCircleView *)self layer];
    [v20 addAnimation:v19 forKey:@"show"];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v21 = [(VLFPuckModeCircleView *)self layer];
    LODWORD(v22) = 1.0;
    [v21 setOpacity:v22];

    +[CATransaction commit];
  }
}

- (void)show
{
  v4 = [(VLFPuckModeCircleView *)self layer];
  [v4 opacity];
  [(VLFPuckModeCircleView *)self showWithDuration:1 startingOpacity:0 shouldGrow:0.200000003 suppressOtherAnimations:v3];
}

- (BOOL)isVisible
{
  v2 = [(VLFPuckModeCircleView *)self layer];
  [v2 opacity];
  v4 = fabsf(v3 + -1.0) < 0.00000011921;

  return v4;
}

- (void)pulseOnce
{
  v3 = sub_10001EA64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Pulsing once", &v8, 0xCu);
  }

  v4 = [(VLFPuckModeCircleView *)self pulseAnimation];
  LODWORD(v5) = 3.0;
  [v4 setRepeatCount:v5];
  v6 = [(VLFPuckModeCircleView *)self viewFinderImageView];
  v7 = [v6 layer];
  [v7 addAnimation:v4 forKey:@"transform.scale.xy.pulse"];
}

- (void)startPulsing
{
  v3 = [(VLFPuckModeCircleView *)self viewFinderImageView];
  v4 = [v3 layer];
  v5 = [v4 animationForKey:@"transform.scale.xy.repeat"];

  v6 = sub_10001EA64();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] There's already an ongoing pulse animation; ignoring", &v11, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Start pulsing", &v11, 0xCu);
    }

    v7 = [(VLFPuckModeCircleView *)self pulseAnimation];
    LODWORD(v8) = 2139095040;
    [v7 setRepeatCount:v8];
    v9 = [(VLFPuckModeCircleView *)self viewFinderImageView];
    v10 = [v9 layer];
    [v10 addAnimation:v7 forKey:@"transform.scale.xy.repeat"];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = VLFPuckModeCircleView;
  [(VLFPuckModeCircleView *)&v4 traitCollectionDidChange:a3];
  [(VLFPuckModeCircleView *)self updateShadowForCurrentTraitCollection];
}

- (void)dealloc
{
  v3 = sub_10001EA64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = VLFPuckModeCircleView;
  [(VLFPuckModeCircleView *)&v4 dealloc];
}

- (VLFPuckModeCircleView)initWithFrame:(CGRect)a3
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

    v6 = [(VLFPuckModeCircleView *)v3 layer];
    [v6 setOpacity:0.0];

    v7 = +[UIColor blackColor];
    v8 = [v7 CGColor];
    v9 = [(VLFPuckModeCircleView *)v3 layer];
    [v9 setShadowColor:v8];

    v10 = [(VLFPuckModeCircleView *)v3 layer];
    [v10 setShadowOffset:{0.0, 1.0}];

    v11 = [(VLFPuckModeCircleView *)v3 layer];
    [v11 setShadowRadius:4.0];

    v33.size.width = 44.0;
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.height = 44.0;
    v12 = CGPathCreateWithEllipseInRect(v33, 0);
    CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v12, 0, 4.0, kCGLineCapRound, kCGLineJoinRound, 0.0);
    v14 = [(VLFPuckModeCircleView *)v3 layer];
    [v14 setShadowPath:CopyByStrokingPath];

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
    v19 = [(UIVisualEffectView *)v3->_backgroundView layer];
    [v19 setCornerRadius:22.0];

    v20 = [(UIVisualEffectView *)v3->_backgroundView layer];
    [v20 setMasksToBounds:1];

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
    v28 = [(UIVisualEffectView *)v3->_backgroundView contentView];
    [v28 addSubview:v3->_viewFinderImageView];

    [(VLFPuckModeCircleView *)v3 setupConstraints];
  }

  return v3;
}

@end