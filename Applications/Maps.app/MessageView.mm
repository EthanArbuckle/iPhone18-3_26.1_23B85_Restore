@interface MessageView
- (MessageView)initWithTitle:(id)a3;
- (void)createAnimation;
- (void)layoutSubviews;
@end

@implementation MessageView

- (void)createAnimation
{
  v3 = self->_animationView;
  v25 = +[UITraitCollection _currentTraitCollection];
  v4 = [(UIView *)v3 traitCollection];
  [UITraitCollection _setCurrentTraitCollection:v4];

  [(UIView *)v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_alloc_init(UIBezierPath);
  v27.origin.x = v6;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  v14 = CGRectGetWidth(v27) * 0.129999995;
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  [v13 moveToPoint:{v14, CGRectGetHeight(v28) * 0.5}];
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  v15 = CGRectGetWidth(v29) * 0.449999988;
  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  [v13 addLineToPoint:{v15, CGRectGetMaxY(v30) * 0.899999976}];
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  v16 = CGRectGetMaxX(v31) * 0.899999976;
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  [v13 addLineToPoint:{v16, CGRectGetHeight(v32) * 0.100000001}];
  v17 = objc_alloc_init(CAShapeLayer);
  [v17 setPath:{objc_msgSend(v13, "CGPath")}];
  [v17 setStrokeColor:{-[UIColor CGColor](self->_color, "CGColor")}];
  v18 = +[UIColor clearColor];
  [v17 setFillColor:{objc_msgSend(v18, "CGColor")}];

  [v17 setLineWidth:7.0];
  [v17 setLineJoin:kCALineJoinRound];
  [v17 setLineCap:kCALineCapRound];
  v19 = [(UIView *)v3 layer];

  [v19 addSublayer:v17];
  v20 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
  v21 = [NSNumber numberWithFloat:0.0];
  [v20 setFromValue:v21];

  LODWORD(v22) = 1.0;
  v23 = [NSNumber numberWithFloat:v22];
  [v20 setToValue:v23];

  [v20 setDuration:0.349999994];
  v24 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v20 setTimingFunction:v24];

  [v17 addAnimation:v20 forKey:@"drawRectStroke"];
  [UITraitCollection _setCurrentTraitCollection:v25];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MessageView;
  [(MessageView *)&v7 layoutSubviews];
  if (!self->_animationStarted)
  {
    [(UIVisualEffectView *)self->_visualEffectView frame];
    if (CGRectGetWidth(v8) != 0.0)
    {
      self->_animationStarted = 1;
      objc_initWeak(&location, self);
      v3 = dispatch_time(0, 100000000);
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100A08B74;
      v4[3] = &unk_101661B98;
      objc_copyWeak(&v5, &location);
      dispatch_after(v3, &_dispatch_main_q, v4);
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }
  }
}

- (MessageView)initWithTitle:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = MessageView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(MessageView *)&v58 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v8)
  {
    v9 = [UIColor colorNamed:@"HUD"];
    color = v8->_color;
    v8->_color = v9;

    v11 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
    [(MessageView *)v8 setBackgroundColor:v11];

    [(MessageView *)v8 setUserInteractionEnabled:0];
    v12 = [UIVisualEffectView alloc];
    v13 = [UIBlurEffect effectWithStyle:7];
    v14 = [v12 initWithEffect:v13];

    [(UIVisualEffectView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MessageView *)v8 addSubview:v14];
    v15 = [(UIVisualEffectView *)v14 layer];
    [v15 setCornerRadius:15.0];

    [(UIVisualEffectView *)v14 setClipsToBounds:1];
    visualEffectView = v8->_visualEffectView;
    v8->_visualEffectView = v14;
    v17 = v14;

    v18 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UIView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(UIVisualEffectView *)v17 contentView];
    [v19 addSubview:v18];

    animationView = v8->_animationView;
    v8->_animationView = v18;
    v21 = v18;

    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(UIVisualEffectView *)v17 contentView];
    [v23 addSubview:v22];

    [v22 setTextAlignment:1];
    [v22 setAttributedText:v4];
    [v22 setTextColor:v8->_color];
    [v22 setNumberOfLines:0];
    v24 = [(UIVisualEffectView *)v17 centerYAnchor];
    v25 = [(MessageView *)v8 centerYAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v57 = v4;
    offsetConstraint = v8->_offsetConstraint;
    v8->_offsetConstraint = v26;

    v56 = [(UIVisualEffectView *)v17 centerXAnchor];
    v55 = [(MessageView *)v8 centerXAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v59[0] = v54;
    v59[1] = v8->_offsetConstraint;
    v53 = [(UIVisualEffectView *)v17 widthAnchor];
    v52 = [v53 constraintEqualToConstant:156.0];
    v59[2] = v52;
    v51 = [(UIView *)v21 centerXAnchor];
    v50 = [(UIVisualEffectView *)v17 centerXAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v59[3] = v49;
    v48 = [(UIView *)v21 topAnchor];
    v47 = [(UIVisualEffectView *)v17 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:30.0];
    v59[4] = v46;
    v45 = [(UIView *)v21 heightAnchor];
    v44 = [v45 constraintEqualToConstant:56.0];
    v59[5] = v44;
    v43 = [(UIView *)v21 widthAnchor];
    v42 = [v43 constraintEqualToConstant:60.0];
    v59[6] = v42;
    v41 = [v22 leadingAnchor];
    v40 = [(UIVisualEffectView *)v17 leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:16.0];
    v59[7] = v39;
    v38 = [v22 trailingAnchor];
    v37 = [(UIVisualEffectView *)v17 trailingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:-16.0];
    v59[8] = v36;
    v35 = [v22 topAnchor];
    v28 = [(UIView *)v21 bottomAnchor];
    v29 = [v35 constraintEqualToAnchor:v28 constant:16.0];
    v59[9] = v29;
    v30 = [v22 bottomAnchor];
    v31 = [(UIVisualEffectView *)v17 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:-16.0];
    v59[10] = v32;
    v33 = [NSArray arrayWithObjects:v59 count:11];
    [NSLayoutConstraint activateConstraints:v33];

    v4 = v57;
  }

  return v8;
}

@end