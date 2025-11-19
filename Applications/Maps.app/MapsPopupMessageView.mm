@interface MapsPopupMessageView
- (MapsPopupMessageView)initWithMessage:(id)a3 timeout:(double)a4 timeoutHandler:(id)a5;
- (void)_preferredContentSizeDidChange;
- (void)_userInterfaceStyleDidChange;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)presentFromView:(id)a3 animated:(BOOL)a4;
- (void)resetTimerAnimated:(BOOL)a3;
@end

@implementation MapsPopupMessageView

- (void)_preferredContentSizeDidChange
{
  v3 = [(MapsPopupMessageView *)self traitCollection];
  v4 = [v3 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v6 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleSubheadline weight:v4 compatibleWithTraitCollection:UIFontWeightSemibold];

  [(UILabel *)self->_messageLabel setFont:v6];
  v5 = [(MapsPopupMessageView *)self superview];
  [v5 setNeedsLayout];
}

- (void)_userInterfaceStyleDidChange
{
  v3 = [(MapsPopupMessageView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
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

- (void)resetTimerAnimated:(BOOL)a3
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
    v13 = a3;
    v9 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v11 block:v7];
    timer = self->_timer;
    self->_timer = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MapsPopupMessageView *)self superview];
  if (v7 && !self->_isDismissing)
  {
    self->_isDismissing = 1;
    v9 = [(MapsPopupMessageView *)self bottomAnchor];
    v10 = [v7 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    v12 = sub_10061AD40();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Dismissing popup, animated %d", &buf, 8u);
    }

    objc_initWeak(&buf, self);
    if (v4)
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
    v20 = v7;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10061B1A8;
    v15[3] = &unk_101661108;
    objc_copyWeak(&v17, &buf);
    v16 = v6;
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

    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (void)presentFromView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 addSubview:self];
  [(MapsPopupMessageView *)self setAlpha:0.0];
  [(NSLayoutConstraint *)self->_activeTopConstraint setActive:0];
  timer = self->_timer;
  self->_timer = 0;

  if (sub_10000FA08(self) == 5)
  {
    v8 = [(MapsPopupMessageView *)self leadingAnchor];
    v9 = [v6 leadingAnchor];
    v10 = 8.0;
    v11 = [v8 constraintEqualToAnchor:v9 constant:8.0];
  }

  else
  {
    v8 = [(MapsPopupMessageView *)self centerXAnchor];
    v9 = [v6 centerXAnchor];
    v11 = [v8 constraintEqualToAnchor:v9];
    v10 = 4.0;
  }

  v12 = sub_10000FA08(self) == 1;
  v13 = [(MapsPopupMessageView *)self bottomAnchor];
  if (v12)
  {
    v14 = [v6 safeAreaLayoutGuide];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];

    v17 = [(MapsPopupMessageView *)self topAnchor];
    v18 = [v6 safeAreaLayoutGuide];
    v19 = [v18 topAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:v10];
  }

  else
  {
    v21 = [v6 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v21];

    v17 = [(MapsPopupMessageView *)self topAnchor];
    v18 = [v6 topAnchor];
    v20 = [v17 constraintEqualToAnchor:v18 constant:v10];
  }

  [v11 setActive:1];
  [v16 setActive:1];
  [v6 layoutIfNeeded];
  objc_initWeak(&location, self);
  v22 = sub_10061AD40();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v39 = v4;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Presenting popup, animated: %d", buf, 8u);
  }

  if (v4)
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
  v26 = v6;
  v35 = v26;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10061B6F0;
  v28[3] = &unk_101632700;
  objc_copyWeak(&v30, &location);
  v27 = v25;
  v29 = v27;
  v31 = v4;
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
  v4 = [v3 CGPath];
  v5 = [(MapsPopupMessageView *)self layer];
  [v5 setShadowPath:v4];

  v6 = [(MapsPopupMessageView *)self layer];
  [v6 bounds];
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

- (MapsPopupMessageView)initWithMessage:(id)a3 timeout:(double)a4 timeoutHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v75.receiver = self;
  v75.super_class = MapsPopupMessageView;
  v10 = [(MapsPopupMessageView *)&v75 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v10)
  {
    v74 = v8;
    v11 = [v8 copy];
    message = v10->_message;
    v10->_message = v11;

    v10->_timeout = a4;
    v73 = v9;
    v13 = [v9 copy];
    timeoutHandler = v10->_timeoutHandler;
    v10->_timeoutHandler = v13;

    [(MapsPopupMessageView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = +[UIColor blackColor];
    v16 = [v15 CGColor];
    v17 = [(MapsPopupMessageView *)v10 layer];
    [v17 setShadowColor:v16];

    v18 = [(MapsPopupMessageView *)v10 layer];
    [v18 setShadowOffset:{0.0, 2.0}];

    v19 = [(MapsPopupMessageView *)v10 layer];
    [v19 setShadowRadius:8.0];

    v20 = [(MapsPopupMessageView *)v10 layer];
    LODWORD(v21) = *"\nף=";
    [v20 setShadowOpacity:v21];

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

    v31 = [(MapsPopupMessageView *)v10 layer];
    [v31 addSublayer:v10->_materialLayer];

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
    v37 = [(UIView *)v10->_backgroundView layer];
    [v37 addSublayer:v10->_borderLayer];

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
    v71 = [(MapsPopupMessageView *)v10 widthAnchor];
    v70 = [v71 constraintLessThanOrEqualToConstant:340.0];
    v78[0] = v70;
    v69 = [(UIView *)v10->_backgroundView leadingAnchor];
    v68 = [(MapsPopupMessageView *)v10 leadingAnchor];
    v67 = [v69 constraintEqualToAnchor:v68];
    v78[1] = v67;
    v66 = [(UIView *)v10->_backgroundView trailingAnchor];
    v65 = [(MapsPopupMessageView *)v10 trailingAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v78[2] = v64;
    v63 = [(UIView *)v10->_backgroundView topAnchor];
    v62 = [(MapsPopupMessageView *)v10 topAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v78[3] = v61;
    v60 = [(UIView *)v10->_backgroundView bottomAnchor];
    v59 = [(MapsPopupMessageView *)v10 bottomAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v78[4] = v58;
    v57 = [v38 leadingAnchor];
    v56 = [(MapsPopupMessageView *)v10 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56 constant:16.0];
    v78[5] = v55;
    v54 = [v38 trailingAnchor];
    v53 = [(MapsPopupMessageView *)v10 trailingAnchor];
    v40 = [v54 constraintEqualToAnchor:v53 constant:-16.0];
    v78[6] = v40;
    v41 = [v38 topAnchor];
    v42 = [(MapsPopupMessageView *)v10 topAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:8.0];
    v78[7] = v43;
    v44 = [v38 bottomAnchor];
    v45 = [(MapsPopupMessageView *)v10 bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:-8.0];
    v78[8] = v46;
    v47 = [NSArray arrayWithObjects:v78 count:9];
    [NSLayoutConstraint activateConstraints:v47];

    v77 = objc_opt_class();
    v48 = [NSArray arrayWithObjects:&v77 count:1];
    v49 = [(MapsPopupMessageView *)v10 registerForTraitChanges:v48 withTarget:v10 action:"_userInterfaceStyleDidChange"];

    v76 = objc_opt_class();
    v50 = [NSArray arrayWithObjects:&v76 count:1];
    v51 = [(MapsPopupMessageView *)v10 registerForTraitChanges:v50 withTarget:v10 action:"_preferredContentSizeDidChange"];

    v9 = v73;
    v8 = v74;
  }

  return v10;
}

@end