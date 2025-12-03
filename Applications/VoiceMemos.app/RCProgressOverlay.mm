@interface RCProgressOverlay
- (RCEditingProgressIndicator)progressIndicator;
- (RCProgressOverlay)initWithCoder:(id)coder;
- (RCProgressOverlay)initWithFrame:(CGRect)frame;
- (UIColor)dimmingBackgroundColor;
- (void)_commonInit;
- (void)_setupProgressIndicator;
- (void)_setupTextIfNeeded;
- (void)dismiss;
- (void)layoutSubviews;
- (void)presentInView:(id)view;
- (void)restyle;
- (void)setDimmingBackgroundColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)setProgress:(float)progress;
- (void)setProgressIndicatorColor:(id)color;
- (void)setStyle:(int64_t)style;
@end

@implementation RCProgressOverlay

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = RCProgressOverlay;
  [(RCProgressOverlay *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(RCProgressOverlay *)self setNeedsLayout];
}

- (void)setProgress:(float)progress
{
  self->_progress = progress;
  progressIndicator = [(RCProgressOverlay *)self progressIndicator];
  *&v4 = progress;
  [progressIndicator setProgress:v4];
}

- (RCEditingProgressIndicator)progressIndicator
{
  progressIndicator = self->_progressIndicator;
  if (!progressIndicator)
  {
    v4 = objc_opt_new();
    v5 = self->_progressIndicator;
    self->_progressIndicator = v4;

    progressIndicatorColor = [(RCProgressOverlay *)self progressIndicatorColor];

    if (progressIndicatorColor)
    {
      progressIndicatorColor2 = [(RCProgressOverlay *)self progressIndicatorColor];
      [(RCEditingProgressIndicator *)self->_progressIndicator setProgressColor:progressIndicatorColor2];
    }

    [(RCProgressOverlay *)self progress];
    [(RCEditingProgressIndicator *)self->_progressIndicator setProgress:?];
    progressIndicator = self->_progressIndicator;
  }

  return progressIndicator;
}

- (void)setProgressIndicatorColor:(id)color
{
  self->_progressIndicatorColor = color;
  colorCopy = color;
  progressIndicator = [(RCProgressOverlay *)self progressIndicator];
  [progressIndicator setProgressColor:colorCopy];

  textLabel = [(RCProgressOverlay *)self textLabel];
  [textLabel setTextColor:colorCopy];
}

- (void)setStyle:(int64_t)style
{
  self->_style = style;
  progressIndicator = [(RCProgressOverlay *)self progressIndicator];
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  dimmingView = [(RCProgressOverlay *)self dimmingView];
  if (style == 1)
  {
    [(RCProgressOverlay *)self _setupTextIfNeeded];
    [v5 editingProgressIndicatorDiameterPlayback];
    [progressIndicator setDiameter:?];
    [v5 editingProgressOuterRingThicknessPlayback];
    [progressIndicator setOuterRingThickness:?];
    [(RCProgressOverlay *)self addSubviewAndPinToEdges:dimmingView];
    [(RCProgressOverlay *)self sendSubviewToBack:dimmingView];
  }

  else if (!style)
  {
    [v5 editingProgressIndicatorDiameterCell];
    [progressIndicator setDiameter:?];
    [v5 editingProgressOuterRingThicknessCell];
    [progressIndicator setOuterRingThickness:?];
  }

  [(RCProgressOverlay *)self _setupProgressIndicator];
}

- (void)setDimmingBackgroundColor:(id)color
{
  colorCopy = color;
  dimmingView = [(RCProgressOverlay *)self dimmingView];
  [dimmingView setBackgroundColor:colorCopy];
}

- (UIColor)dimmingBackgroundColor
{
  dimmingView = [(RCProgressOverlay *)self dimmingView];
  backgroundColor = [dimmingView backgroundColor];

  return backgroundColor;
}

- (RCProgressOverlay)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RCProgressOverlay;
  v3 = [(RCProgressOverlay *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RCProgressOverlay *)v3 _commonInit];
  }

  return v4;
}

- (RCProgressOverlay)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RCProgressOverlay;
  v3 = [(RCProgressOverlay *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)presentInView:(id)view
{
  viewCopy = view;
  [(RCProgressOverlay *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  superview = [(RCProgressOverlay *)self superview];

  v5 = viewCopy;
  if (superview != viewCopy)
  {
    [viewCopy addSubviewAndPinToEdges:self];
    [(RCProgressOverlay *)self setAlpha:1.0];
    v5 = viewCopy;
  }
}

- (void)dismiss
{
  superview = [(RCProgressOverlay *)self superview];

  if (superview)
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
  progressIndicator = [(RCProgressOverlay *)self progressIndicator];
  [(RCProgressOverlay *)self progress];
  [progressIndicator setProgress:?];
  style = [(RCProgressOverlay *)self style];
  if (style == 1)
  {
    [(RCProgressOverlay *)self addSubviewAndCenter:progressIndicator];
  }

  else if (!style)
  {
    [(RCProgressOverlay *)self addSubview:progressIndicator];
  }

  [(RCProgressOverlay *)self bringSubviewToFront:progressIndicator];
}

- (void)_setupTextIfNeeded
{
  textLabel = [(RCProgressOverlay *)self textLabel];
  if (!textLabel)
  {
    textLabel = objc_opt_new();
    [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RCProgressOverlay *)self setTextLabel:textLabel];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"SAVING_CHANGES" value:&stru_100295BB8 table:0];
    [textLabel setText:v5];

    [textLabel setTextAlignment:1];
    v6 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v6 progressTextFontSize];
    v7 = [UIFont systemFontOfSize:?];
    [textLabel setFont:v7];

    progressIndicator = [(RCProgressOverlay *)self progressIndicator];
    progressColor = [progressIndicator progressColor];
    [textLabel setTextColor:progressColor];

    [(RCProgressOverlay *)self addSubview:textLabel];
    progressIndicator2 = [(RCProgressOverlay *)self progressIndicator];
    [v6 progressTextYSpacing];
    v12 = [NSLayoutConstraint constraintWithItem:textLabel attribute:3 relatedBy:0 toItem:progressIndicator2 attribute:4 multiplier:1.0 constant:v11];

    progressIndicator3 = [(RCProgressOverlay *)self progressIndicator];
    v14 = [NSLayoutConstraint constraintWithItem:textLabel attribute:9 relatedBy:0 toItem:progressIndicator3 attribute:9 multiplier:1.0 constant:0.0];

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
    progressIndicator = [(RCProgressOverlay *)self progressIndicator];
    [progressIndicator frame];
    v9 = v8;
    v11 = v10;

    progressIndicator2 = [(RCProgressOverlay *)self progressIndicator];
    [progressIndicator2 diameter];
    v14 = v13;

    v15 = (v6 - v11) * 0.5;
    v16 = roundf(v15);
    progressIndicator3 = [(RCProgressOverlay *)self progressIndicator];
    [progressIndicator3 setFrame:{v4 - v9, v16, v14, v14}];
  }
}

- (void)restyle
{
  progressIndicator = [(RCProgressOverlay *)self progressIndicator];
  [progressIndicator restyle];
}

@end