@interface MessageView
- (MessageView)initWithTitle:(id)title;
- (void)createAnimation;
- (void)layoutSubviews;
@end

@implementation MessageView

- (void)createAnimation
{
  v3 = self->_animationView;
  v25 = +[UITraitCollection _currentTraitCollection];
  traitCollection = [(UIView *)v3 traitCollection];
  [UITraitCollection _setCurrentTraitCollection:traitCollection];

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
  layer = [(UIView *)v3 layer];

  [layer addSublayer:v17];
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

- (MessageView)initWithTitle:(id)title
{
  titleCopy = title;
  v58.receiver = self;
  v58.super_class = MessageView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(MessageView *)&v58 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v9 = [UIColor colorNamed:@"HUD"];
    color = height->_color;
    height->_color = v9;

    v11 = [UIColor colorWithWhite:0.0 alpha:0.100000001];
    [(MessageView *)height setBackgroundColor:v11];

    [(MessageView *)height setUserInteractionEnabled:0];
    v12 = [UIVisualEffectView alloc];
    v13 = [UIBlurEffect effectWithStyle:7];
    v14 = [v12 initWithEffect:v13];

    [(UIVisualEffectView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MessageView *)height addSubview:v14];
    layer = [(UIVisualEffectView *)v14 layer];
    [layer setCornerRadius:15.0];

    [(UIVisualEffectView *)v14 setClipsToBounds:1];
    visualEffectView = height->_visualEffectView;
    height->_visualEffectView = v14;
    v17 = v14;

    v18 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UIView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UIVisualEffectView *)v17 contentView];
    [contentView addSubview:v18];

    animationView = height->_animationView;
    height->_animationView = v18;
    v21 = v18;

    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(UIVisualEffectView *)v17 contentView];
    [contentView2 addSubview:v22];

    [v22 setTextAlignment:1];
    [v22 setAttributedText:titleCopy];
    [v22 setTextColor:height->_color];
    [v22 setNumberOfLines:0];
    centerYAnchor = [(UIVisualEffectView *)v17 centerYAnchor];
    centerYAnchor2 = [(MessageView *)height centerYAnchor];
    v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v57 = titleCopy;
    offsetConstraint = height->_offsetConstraint;
    height->_offsetConstraint = v26;

    centerXAnchor = [(UIVisualEffectView *)v17 centerXAnchor];
    centerXAnchor2 = [(MessageView *)height centerXAnchor];
    v54 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v59[0] = v54;
    v59[1] = height->_offsetConstraint;
    widthAnchor = [(UIVisualEffectView *)v17 widthAnchor];
    v52 = [widthAnchor constraintEqualToConstant:156.0];
    v59[2] = v52;
    centerXAnchor3 = [(UIView *)v21 centerXAnchor];
    centerXAnchor4 = [(UIVisualEffectView *)v17 centerXAnchor];
    v49 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v59[3] = v49;
    topAnchor = [(UIView *)v21 topAnchor];
    topAnchor2 = [(UIVisualEffectView *)v17 topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:30.0];
    v59[4] = v46;
    heightAnchor = [(UIView *)v21 heightAnchor];
    v44 = [heightAnchor constraintEqualToConstant:56.0];
    v59[5] = v44;
    widthAnchor2 = [(UIView *)v21 widthAnchor];
    v42 = [widthAnchor2 constraintEqualToConstant:60.0];
    v59[6] = v42;
    leadingAnchor = [v22 leadingAnchor];
    leadingAnchor2 = [(UIVisualEffectView *)v17 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v59[7] = v39;
    trailingAnchor = [v22 trailingAnchor];
    trailingAnchor2 = [(UIVisualEffectView *)v17 trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v59[8] = v36;
    topAnchor3 = [v22 topAnchor];
    bottomAnchor = [(UIView *)v21 bottomAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
    v59[9] = v29;
    bottomAnchor2 = [v22 bottomAnchor];
    bottomAnchor3 = [(UIVisualEffectView *)v17 bottomAnchor];
    v32 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-16.0];
    v59[10] = v32;
    v33 = [NSArray arrayWithObjects:v59 count:11];
    [NSLayoutConstraint activateConstraints:v33];

    titleCopy = v57;
  }

  return height;
}

@end