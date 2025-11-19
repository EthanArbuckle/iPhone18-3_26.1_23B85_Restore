@interface RCProgressOverlay
- (RCEditingProgressIndicator)progressIndicator;
- (RCProgressOverlay)initWithCoder:(id)a3;
- (RCProgressOverlay)initWithFrame:(CGRect)a3;
- (UIColor)dimmingBackgroundColor;
- (void)_commonInit;
- (void)_setupProgressIndicator;
- (void)_setupTextIfNeeded;
- (void)dismiss;
- (void)layoutSubviews;
- (void)presentInView:(id)a3;
- (void)restyle;
- (void)setDimmingBackgroundColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setProgress:(float)a3;
- (void)setProgressIndicatorColor:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation RCProgressOverlay

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = RCProgressOverlay;
  [(RCProgressOverlay *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(RCProgressOverlay *)self setNeedsLayout];
}

- (void)setProgress:(float)a3
{
  self->_progress = a3;
  v5 = [(RCProgressOverlay *)self progressIndicator];
  *&v4 = a3;
  [v5 setProgress:v4];
}

- (RCEditingProgressIndicator)progressIndicator
{
  progressIndicator = self->_progressIndicator;
  if (!progressIndicator)
  {
    v4 = objc_opt_new();
    v5 = self->_progressIndicator;
    self->_progressIndicator = v4;

    v6 = [(RCProgressOverlay *)self progressIndicatorColor];

    if (v6)
    {
      v7 = [(RCProgressOverlay *)self progressIndicatorColor];
      [(RCEditingProgressIndicator *)self->_progressIndicator setProgressColor:v7];
    }

    [(RCProgressOverlay *)self progress];
    [(RCEditingProgressIndicator *)self->_progressIndicator setProgress:?];
    progressIndicator = self->_progressIndicator;
  }

  return progressIndicator;
}

- (void)setProgressIndicatorColor:(id)a3
{
  self->_progressIndicatorColor = a3;
  v4 = a3;
  v5 = [(RCProgressOverlay *)self progressIndicator];
  [v5 setProgressColor:v4];

  v6 = [(RCProgressOverlay *)self textLabel];
  [v6 setTextColor:v4];
}

- (void)setStyle:(int64_t)a3
{
  self->_style = a3;
  v7 = [(RCProgressOverlay *)self progressIndicator];
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = [(RCProgressOverlay *)self dimmingView];
  if (a3 == 1)
  {
    [(RCProgressOverlay *)self _setupTextIfNeeded];
    [v5 editingProgressIndicatorDiameterPlayback];
    [v7 setDiameter:?];
    [v5 editingProgressOuterRingThicknessPlayback];
    [v7 setOuterRingThickness:?];
    [(RCProgressOverlay *)self addSubviewAndPinToEdges:v6];
    [(RCProgressOverlay *)self sendSubviewToBack:v6];
  }

  else if (!a3)
  {
    [v5 editingProgressIndicatorDiameterCell];
    [v7 setDiameter:?];
    [v5 editingProgressOuterRingThicknessCell];
    [v7 setOuterRingThickness:?];
  }

  [(RCProgressOverlay *)self _setupProgressIndicator];
}

- (void)setDimmingBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(RCProgressOverlay *)self dimmingView];
  [v5 setBackgroundColor:v4];
}

- (UIColor)dimmingBackgroundColor
{
  v2 = [(RCProgressOverlay *)self dimmingView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (RCProgressOverlay)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RCProgressOverlay;
  v3 = [(RCProgressOverlay *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RCProgressOverlay *)v3 _commonInit];
  }

  return v4;
}

- (RCProgressOverlay)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RCProgressOverlay;
  v3 = [(RCProgressOverlay *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCProgressOverlay *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  [v3 setAlpha:1.0];
  [(RCProgressOverlay *)self setDimmingView:v3];
}

- (void)presentInView:(id)a3
{
  v6 = a3;
  [(RCProgressOverlay *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(RCProgressOverlay *)self superview];

  v5 = v6;
  if (v4 != v6)
  {
    [v6 addSubviewAndPinToEdges:self];
    [(RCProgressOverlay *)self setAlpha:1.0];
    v5 = v6;
  }
}

- (void)dismiss
{
  v3 = [(RCProgressOverlay *)self superview];

  if (v3)
  {
    v4 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v4 progressViewDisplayDismissTime];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000708D8;
    v6[3] = &unk_10028A3B8;
    v6[4] = self;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000708E4;
    v5[3] = &unk_10028AF90;
    v5[4] = self;
    [UIView animateWithDuration:v6 animations:v5 completion:?];
  }
}

- (void)_setupProgressIndicator
{
  v4 = [(RCProgressOverlay *)self progressIndicator];
  [(RCProgressOverlay *)self progress];
  [v4 setProgress:?];
  v3 = [(RCProgressOverlay *)self style];
  if (v3 == 1)
  {
    [(RCProgressOverlay *)self addSubviewAndCenter:v4];
  }

  else if (!v3)
  {
    [(RCProgressOverlay *)self addSubview:v4];
  }

  [(RCProgressOverlay *)self bringSubviewToFront:v4];
}

- (void)_setupTextIfNeeded
{
  v3 = [(RCProgressOverlay *)self textLabel];
  if (!v3)
  {
    v3 = objc_opt_new();
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RCProgressOverlay *)self setTextLabel:v3];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"SAVING_CHANGES" value:&stru_100295BB8 table:0];
    [v3 setText:v5];

    [v3 setTextAlignment:1];
    v6 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v6 progressTextFontSize];
    v7 = [UIFont systemFontOfSize:?];
    [v3 setFont:v7];

    v8 = [(RCProgressOverlay *)self progressIndicator];
    v9 = [v8 progressColor];
    [v3 setTextColor:v9];

    [(RCProgressOverlay *)self addSubview:v3];
    v10 = [(RCProgressOverlay *)self progressIndicator];
    [v6 progressTextYSpacing];
    v12 = [NSLayoutConstraint constraintWithItem:v3 attribute:3 relatedBy:0 toItem:v10 attribute:4 multiplier:1.0 constant:v11];

    v13 = [(RCProgressOverlay *)self progressIndicator];
    v14 = [NSLayoutConstraint constraintWithItem:v3 attribute:9 relatedBy:0 toItem:v13 attribute:9 multiplier:1.0 constant:0.0];

    v16[0] = v12;
    v16[1] = v14;
    v15 = [NSArray arrayWithObjects:v16 count:2];
    [(RCProgressOverlay *)self addConstraints:v15];
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = RCProgressOverlay;
  [(RCProgressOverlay *)&v18 layoutSubviews];
  if (![(RCProgressOverlay *)self style])
  {
    [(RCProgressOverlay *)self frame];
    v4 = v3;
    v6 = v5;
    v7 = [(RCProgressOverlay *)self progressIndicator];
    [v7 frame];
    v9 = v8;
    v11 = v10;

    v12 = [(RCProgressOverlay *)self progressIndicator];
    [v12 diameter];
    v14 = v13;

    v15 = (v6 - v11) * 0.5;
    v16 = roundf(v15);
    v17 = [(RCProgressOverlay *)self progressIndicator];
    [v17 setFrame:{v4 - v9, v16, v14, v14}];
  }
}

- (void)restyle
{
  v2 = [(RCProgressOverlay *)self progressIndicator];
  [v2 restyle];
}

@end