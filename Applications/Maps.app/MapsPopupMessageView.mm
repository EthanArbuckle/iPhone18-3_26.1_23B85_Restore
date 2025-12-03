@interface MapsPopupMessageView
- (MapsPopupMessageView)initWithMessage:(id)message timeout:(double)timeout timeoutHandler:(id)handler;
- (void)_preferredContentSizeDidChange;
- (void)_userInterfaceStyleDidChange;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)layoutSubviews;
- (void)presentFromView:(id)view animated:(BOOL)animated;
- (void)resetTimerAnimated:(BOOL)animated;
@end

@implementation MapsPopupMessageView

- (void)_preferredContentSizeDidChange
{
  traitCollection = [(MapsPopupMessageView *)self traitCollection];
  v4 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v6 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleSubheadline weight:v4 compatibleWithTraitCollection:UIFontWeightSemibold];

  [(UILabel *)self->_messageLabel setFont:v6];
  superview = [(MapsPopupMessageView *)self superview];
  [superview setNeedsLayout];
}

- (void)_userInterfaceStyleDidChange
{
  traitCollection = [(MapsPopupMessageView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v5 = [UIColor colorWithWhite:1.0 alpha:0.800000012];
    [(UILabel *)self->_messageLabel setTextColor:v5];

    [(UILabel *)self->_messageLabel _setDrawsAsBackdropOverlayWithBlendMode:2];
    p_borderLayer = &self->_borderLayer;
    [(CALayer *)*p_borderLayer setCompositingFilter:kCAFilterLightenBlendMode];
    v7 = 0.400000006;
    v8 = 1.0;
  }

  else
  {
    v9 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_messageLabel setTextColor:v9];

    [(UILabel *)self->_messageLabel _setDrawsAsBackdropOverlayWithBlendMode:0];
    p_borderLayer = &self->_borderLayer;
    [(CALayer *)*p_borderLayer setCompositingFilter:kCAFilterDarkenBlendMode];
    v7 = 0.0799999982;
    v8 = 0.0;
  }

  v11 = [UIColor colorWithWhite:v8 alpha:v7];
  v10 = v11;
  -[CALayer setBorderColor:](*p_borderLayer, "setBorderColor:", [v11 CGColor]);
}

- (void)resetTimerAnimated:(BOOL)animated
{
  if (self->_timeout > 0.0)
  {
    v5 = sub_10061AD40();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      timeout = self->_timeout;
      *buf = 134217984;
      v15 = timeout;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Scheduling timer to dismiss pop in %f", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v7 = self->_timeout;
    v8 = &_dispatch_main_q;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10061AD94;
    v11[3] = &unk_1016241B0;
    objc_copyWeak(&v12, buf);
    animatedCopy = animated;
    v9 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v11 block:v7];
    timer = self->_timer;
    self->_timer = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  superview = [(MapsPopupMessageView *)self superview];
  if (superview && !self->_isDismissing)
  {
    self->_isDismissing = 1;
    bottomAnchor = [(MapsPopupMessageView *)self bottomAnchor];
    topAnchor = [superview topAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:topAnchor];

    v12 = sub_10061AD40();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = animatedCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Dismissing popup, animated %d", &buf, 8u);
    }

    objc_initWeak(&buf, self);
    if (animatedCopy)
    {
      v13 = 0.3;
    }

    else
    {
      v13 = 0.0;
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10061B128;
    v18[3] = &unk_101661480;
    objc_copyWeak(&v21, &buf);
    v14 = v11;
    v19 = v14;
    v20 = superview;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10061B1A8;
    v15[3] = &unk_101661108;
    objc_copyWeak(&v17, &buf);
    v16 = completionCopy;
    [UIView animateWithDuration:v18 animations:v15 completion:v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&buf);
  }

  else
  {
    v8 = sub_10061AD40();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ignoring dismiss", &buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)presentFromView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  [viewCopy addSubview:self];
  [(MapsPopupMessageView *)self setAlpha:0.0];
  [(NSLayoutConstraint *)self->_activeTopConstraint setActive:0];
  timer = self->_timer;
  self->_timer = 0;

  if (sub_10000FA08(self) == 5)
  {
    leadingAnchor = [(MapsPopupMessageView *)self leadingAnchor];
    leadingAnchor2 = [viewCopy leadingAnchor];
    v10 = 8.0;
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  }

  else
  {
    leadingAnchor = [(MapsPopupMessageView *)self centerXAnchor];
    leadingAnchor2 = [viewCopy centerXAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v10 = 4.0;
  }

  v12 = sub_10000FA08(self) == 1;
  bottomAnchor = [(MapsPopupMessageView *)self bottomAnchor];
  if (v12)
  {
    safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide topAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:topAnchor];

    topAnchor2 = [(MapsPopupMessageView *)self topAnchor];
    safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
    topAnchor3 = [safeAreaLayoutGuide2 topAnchor];
    v20 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:v10];
  }

  else
  {
    topAnchor4 = [viewCopy topAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:topAnchor4];

    topAnchor2 = [(MapsPopupMessageView *)self topAnchor];
    safeAreaLayoutGuide2 = [viewCopy topAnchor];
    v20 = [topAnchor2 constraintEqualToAnchor:safeAreaLayoutGuide2 constant:v10];
  }

  [v11 setActive:1];
  [v16 setActive:1];
  [viewCopy layoutIfNeeded];
  objc_initWeak(&location, self);
  v22 = sub_10061AD40();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v39 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Presenting popup, animated: %d", buf, 8u);
  }

  if (animatedCopy)
  {
    v23 = 0.3;
  }

  else
  {
    v23 = 0.0;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10061B67C;
  v32[3] = &unk_10165E728;
  objc_copyWeak(&v36, &location);
  v24 = v16;
  v33 = v24;
  v25 = v20;
  v34 = v25;
  v26 = viewCopy;
  v35 = v26;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10061B6F0;
  v28[3] = &unk_101632700;
  objc_copyWeak(&v30, &location);
  v27 = v25;
  v29 = v27;
  v31 = animatedCopy;
  [UIView animateWithDuration:v32 animations:v28 completion:v23];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = MapsPopupMessageView;
  [(MapsPopupMessageView *)&v11 layoutSubviews];
  [(MapsPopupMessageView *)self bounds];
  v3 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  cGPath = [v3 CGPath];
  layer = [(MapsPopupMessageView *)self layer];
  [layer setShadowPath:cGPath];

  layer2 = [(MapsPopupMessageView *)self layer];
  [layer2 bounds];
  [(CALayer *)self->_materialLayer setFrame:?];

  [(UIView *)self->_backgroundView bounds];
  v13 = CGRectInset(v12, -1.0, -1.0);
  [(CALayer *)self->_borderLayer setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
  [(MapsPopupMessageView *)self frame];
  v8 = v7 * 0.5;
  materialLayer = self->_materialLayer;
  if (v7 * 0.5 <= 19.0)
  {
    [(CALayer *)materialLayer setCornerRadius:v7 * 0.5];
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:v8];
    v10 = v8 + 1.0;
  }

  else
  {
    [(CALayer *)materialLayer setCornerRadius:16.0];
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:16.0];
    v10 = 17.0;
  }

  [(CALayer *)self->_borderLayer setCornerRadius:v10];
}

- (MapsPopupMessageView)initWithMessage:(id)message timeout:(double)timeout timeoutHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v75.receiver = self;
  v75.super_class = MapsPopupMessageView;
  v10 = [(MapsPopupMessageView *)&v75 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v10)
  {
    v74 = messageCopy;
    v11 = [messageCopy copy];
    message = v10->_message;
    v10->_message = v11;

    v10->_timeout = timeout;
    v73 = handlerCopy;
    v13 = [handlerCopy copy];
    timeoutHandler = v10->_timeoutHandler;
    v10->_timeoutHandler = v13;

    [(MapsPopupMessageView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = +[UIColor blackColor];
    cGColor = [v15 CGColor];
    layer = [(MapsPopupMessageView *)v10 layer];
    [layer setShadowColor:cGColor];

    layer2 = [(MapsPopupMessageView *)v10 layer];
    [layer2 setShadowOffset:{0.0, 2.0}];

    layer3 = [(MapsPopupMessageView *)v10 layer];
    [layer3 setShadowRadius:8.0];

    layer4 = [(MapsPopupMessageView *)v10 layer];
    LODWORD(v21) = *"\nף=";
    [layer4 setShadowOpacity:v21];

    NSClassFromString(@"MTMaterialLayer");
    v22 = objc_opt_new();
    v72 = v22;
    if (v22)
    {
      v23 = v22;
      v24 = [NSBundle bundleForClass:objc_opt_class()];
      [v23 setRecipeName:@"coaching-material" fromBundle:v24];

      [v23 setWeighting:1.0];
      v25 = kCACornerCurveContinuous;
      [v23 setCornerCurve:kCACornerCurveContinuous];
      objc_storeStrong(&v10->_materialLayer, v23);
    }

    else
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v80 = "[MapsPopupMessageView initWithMessage:timeout:timeoutHandler:]";
        v81 = 2080;
        v82 = "MapsPopupMessageView.m";
        v83 = 1024;
        v84 = 64;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v27 = sub_10006D178();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v80 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v29 = objc_opt_new();
      materialLayer = v10->_materialLayer;
      v10->_materialLayer = v29;

      v25 = kCACornerCurveContinuous;
    }

    layer5 = [(MapsPopupMessageView *)v10 layer];
    [layer5 addSublayer:v10->_materialLayer];

    v32 = objc_opt_new();
    backgroundView = v10->_backgroundView;
    v10->_backgroundView = v32;

    [(UIView *)v10->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [UIColor colorWithWhite:1.0 alpha:0.200000003];
    [(UIView *)v10->_backgroundView setBackgroundColor:v34];

    [(MapsPopupMessageView *)v10 addSubview:v10->_backgroundView];
    v35 = objc_opt_new();
    borderLayer = v10->_borderLayer;
    v10->_borderLayer = v35;

    [(CALayer *)v10->_borderLayer setBorderWidth:1.0];
    [(CALayer *)v10->_materialLayer setCornerCurve:v25];
    layer6 = [(UIView *)v10->_backgroundView layer];
    [layer6 addSublayer:v10->_borderLayer];

    v38 = objc_opt_new();
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v38 setNumberOfLines:4];
    v39 = +[UIColor secondaryLabelColor];
    [v38 setTextColor:v39];

    [v38 setText:v10->_message];
    [v38 setTextAlignment:1];
    [(UIView *)v10->_backgroundView addSubview:v38];
    objc_storeStrong(&v10->_messageLabel, v38);
    [(MapsPopupMessageView *)v10 _userInterfaceStyleDidChange];
    [(MapsPopupMessageView *)v10 _preferredContentSizeDidChange];
    widthAnchor = [(MapsPopupMessageView *)v10 widthAnchor];
    v70 = [widthAnchor constraintLessThanOrEqualToConstant:340.0];
    v78[0] = v70;
    leadingAnchor = [(UIView *)v10->_backgroundView leadingAnchor];
    leadingAnchor2 = [(MapsPopupMessageView *)v10 leadingAnchor];
    v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v78[1] = v67;
    trailingAnchor = [(UIView *)v10->_backgroundView trailingAnchor];
    trailingAnchor2 = [(MapsPopupMessageView *)v10 trailingAnchor];
    v64 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v78[2] = v64;
    topAnchor = [(UIView *)v10->_backgroundView topAnchor];
    topAnchor2 = [(MapsPopupMessageView *)v10 topAnchor];
    v61 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v78[3] = v61;
    bottomAnchor = [(UIView *)v10->_backgroundView bottomAnchor];
    bottomAnchor2 = [(MapsPopupMessageView *)v10 bottomAnchor];
    v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v78[4] = v58;
    leadingAnchor3 = [v38 leadingAnchor];
    leadingAnchor4 = [(MapsPopupMessageView *)v10 leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v78[5] = v55;
    trailingAnchor3 = [v38 trailingAnchor];
    trailingAnchor4 = [(MapsPopupMessageView *)v10 trailingAnchor];
    v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v78[6] = v40;
    topAnchor3 = [v38 topAnchor];
    topAnchor4 = [(MapsPopupMessageView *)v10 topAnchor];
    v43 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
    v78[7] = v43;
    bottomAnchor3 = [v38 bottomAnchor];
    bottomAnchor4 = [(MapsPopupMessageView *)v10 bottomAnchor];
    v46 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
    v78[8] = v46;
    v47 = [NSArray arrayWithObjects:v78 count:9];
    [NSLayoutConstraint activateConstraints:v47];

    v77 = objc_opt_class();
    v48 = [NSArray arrayWithObjects:&v77 count:1];
    v49 = [(MapsPopupMessageView *)v10 registerForTraitChanges:v48 withTarget:v10 action:"_userInterfaceStyleDidChange"];

    v76 = objc_opt_class();
    v50 = [NSArray arrayWithObjects:&v76 count:1];
    v51 = [(MapsPopupMessageView *)v10 registerForTraitChanges:v50 withTarget:v10 action:"_preferredContentSizeDidChange"];

    handlerCopy = v73;
    messageCopy = v74;
  }

  return v10;
}

@end