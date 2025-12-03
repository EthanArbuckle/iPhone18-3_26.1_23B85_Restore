@interface MapsProgressBackgroundFillView
- (MapsProgressBackgroundFillView)initWithFrame:(CGRect)frame;
- (void)_setOriginalConstraints;
- (void)_useDefaultColors;
- (void)layoutSubviews;
- (void)setFilledBackgroundColor:(id)color;
- (void)setTitle:(id)title;
- (void)setTitleFont:(id)font;
- (void)setfilledBackgroundColorFocus:(id)focus;
- (void)setfilledLabelColor:(id)color;
- (void)setfilledLabelColorFocus:(id)focus;
- (void)startProgressAnimationWithCompletion:(id)completion;
- (void)updateColorsWithFocus:(BOOL)focus;
@end

@implementation MapsProgressBackgroundFillView

- (void)startProgressAnimationWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MapsProgressBackgroundFillView *)self frame];
  v21.origin.x = CGRectZero.origin.x;
  v21.origin.y = CGRectZero.origin.y;
  v21.size.width = CGRectZero.size.width;
  v21.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(v20, v21))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    isRTL = self->_isRTL;
    [(MapsProgressBackgroundFillView *)self frame];
    if (isRTL)
    {
      v7 = v6;
      [(MapsProgressBackgroundFillView *)self frame];
      [(CALayer *)self->_maskLayer setFrame:0.0, 0.0, v7];
    }

    else
    {
      [(CALayer *)self->_maskLayer setFrame:0.0, 0.0, 0.0];
    }

    +[CATransaction begin];
    [(MapsProgressBackgroundFillView *)self animationDuration];
    [CATransaction setAnimationDuration:?];
    v8 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [CATransaction setAnimationTimingFunction:v8];

    v9 = self->_isRTL;
    [(MapsProgressBackgroundFillView *)self frame];
    if (v9)
    {
      maskLayer = self->_maskLayer;
      v12 = 0.0;
    }

    else
    {
      v13 = v10;
      [(MapsProgressBackgroundFillView *)self frame];
      maskLayer = self->_maskLayer;
      v12 = v13;
    }

    [(CALayer *)maskLayer setFrame:0.0, 0.0, v12];
    if (completionCopy)
    {
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100814BBC;
      v17 = &unk_101661090;
      selfCopy = self;
      v19 = completionCopy;
      [CATransaction setCompletionBlock:&v14];
    }

    [CATransaction commit:v14];
    self->_animationInProgress = 1;
  }
}

- (void)updateColorsWithFocus:(BOOL)focus
{
  filledBackgroundView = self->_filledBackgroundView;
  v5 = &OBJC_IVAR___MapsProgressBackgroundFillView__filledBackgroundColor;
  if (focus)
  {
    v5 = &OBJC_IVAR___MapsProgressBackgroundFillView__filledBackgroundColorFocus;
    v6 = &OBJC_IVAR___MapsProgressBackgroundFillView__filledLabelColorFocus;
  }

  else
  {
    v6 = &OBJC_IVAR___MapsProgressBackgroundFillView__filledLabelColor;
  }

  [(UIView *)filledBackgroundView setBackgroundColor:*(&self->super.super.super.isa + *v5)];
  v7 = *(&self->super.super.super.isa + *v6);
  filledLabel = self->_filledLabel;

  [(UILabel *)filledLabel setTextColor:v7];
}

- (void)setFilledBackgroundColor:(id)color
{
  objc_storeStrong(&self->_filledBackgroundColor, color);
  colorCopy = color;
  [(UIView *)self->_filledBackgroundView setBackgroundColor:colorCopy];
}

- (void)setfilledLabelColor:(id)color
{
  objc_storeStrong(&self->_filledLabelColor, color);
  colorCopy = color;
  [(UILabel *)self->_filledLabel setTextColor:colorCopy];
}

- (void)setfilledBackgroundColorFocus:(id)focus
{
  objc_storeStrong(&self->_filledBackgroundColorFocus, focus);
  focusCopy = focus;
  [(UIView *)self->_filledBackgroundView setBackgroundColor:focusCopy];
}

- (void)setfilledLabelColorFocus:(id)focus
{
  objc_storeStrong(&self->_filledLabelColorFocus, focus);
  focusCopy = focus;
  [(UILabel *)self->_filledLabel setTextColor:focusCopy];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_filledLabel setText:titleCopy];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = MapsProgressBackgroundFillView;
  [(MapsProgressBackgroundFillView *)&v11 layoutSubviews];
  if (!self->_animationInProgress || ([(CALayer *)self->_maskLayer frame], v4 = v3, [(MapsProgressBackgroundFillView *)self frame], v4 != v5))
  {
    isRTL = self->_isRTL;
    [(MapsProgressBackgroundFillView *)self frame];
    if (isRTL)
    {
      v8 = v7;
      [(MapsProgressBackgroundFillView *)self frame];
      maskLayer = self->_maskLayer;
      v10 = v8;
    }

    else
    {
      maskLayer = self->_maskLayer;
      v10 = 0.0;
    }

    [(CALayer *)maskLayer setFrame:0.0, 0.0, v10];
  }
}

- (void)_setOriginalConstraints
{
  leadingAnchor = [(UIView *)self->_filledContainer leadingAnchor];
  leadingAnchor2 = [(MapsProgressBackgroundFillView *)self leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v37;
  trailingAnchor = [(UIView *)self->_filledContainer trailingAnchor];
  trailingAnchor2 = [(MapsProgressBackgroundFillView *)self trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[1] = v34;
  topAnchor = [(UIView *)self->_filledContainer topAnchor];
  topAnchor2 = [(MapsProgressBackgroundFillView *)self topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[2] = v31;
  bottomAnchor = [(UIView *)self->_filledContainer bottomAnchor];
  bottomAnchor2 = [(MapsProgressBackgroundFillView *)self bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[3] = v28;
  leadingAnchor3 = [(UIView *)self->_filledBackgroundView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_filledContainer leadingAnchor];
  v25 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v40[4] = v25;
  trailingAnchor3 = [(UIView *)self->_filledBackgroundView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_filledContainer trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v40[5] = v22;
  topAnchor3 = [(UIView *)self->_filledBackgroundView topAnchor];
  topAnchor4 = [(UIView *)self->_filledContainer topAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v40[6] = v19;
  bottomAnchor3 = [(UIView *)self->_filledBackgroundView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_filledContainer bottomAnchor];
  v16 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v40[7] = v16;
  leadingAnchor5 = [(UILabel *)self->_filledLabel leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_filledContainer leadingAnchor];
  v13 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v40[8] = v13;
  trailingAnchor5 = [(UILabel *)self->_filledLabel trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_filledContainer trailingAnchor];
  v4 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v40[9] = v4;
  topAnchor5 = [(UILabel *)self->_filledLabel topAnchor];
  topAnchor6 = [(UIView *)self->_filledContainer topAnchor];
  v7 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v40[10] = v7;
  bottomAnchor5 = [(UILabel *)self->_filledLabel bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_filledContainer bottomAnchor];
  v10 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v40[11] = v10;
  v11 = [NSArray arrayWithObjects:v40 count:12];
  [NSLayoutConstraint activateConstraints:v11];

  [(MapsProgressBackgroundFillView *)self bringSubviewToFront:self->_filledLabel];
}

- (void)_useDefaultColors
{
  v5 = objc_alloc_init(MapsTheme);
  v3 = [(MapsTheme *)v5 blueButtonBackgroundColor:0];
  v4 = +[UIColor whiteColor];
  [(UILabel *)self->_filledLabel setTextColor:v4];

  [(UIView *)self->_filledBackgroundView setBackgroundColor:v3];
}

- (void)setTitleFont:(id)font
{
  objc_storeStrong(&self->_titleFont, font);
  fontCopy = font;
  [(UILabel *)self->_filledLabel setFont:fontCopy];
}

- (MapsProgressBackgroundFillView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v30.receiver = self;
  v30.super_class = MapsProgressBackgroundFillView;
  v7 = [(MapsProgressBackgroundFillView *)&v30 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_isRTL = [(MapsProgressBackgroundFillView *)v7 effectiveUserInterfaceLayoutDirection]== 1;
    v8->_animationDuration = 10.0;
    v9 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
    filledLabel = v8->_filledLabel;
    v8->_filledLabel = v9;

    [(UILabel *)v8->_filledLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_filledLabel setTextAlignment:1];
    [(UILabel *)v8->_filledLabel setMinimumScaleFactor:0.5];
    v11 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    filledBackgroundView = v8->_filledBackgroundView;
    v8->_filledBackgroundView = v11;

    [(UIView *)v8->_filledBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    filledContainer = v8->_filledContainer;
    v8->_filledContainer = v13;

    [(UIView *)v8->_filledContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)v8->_filledContainer layer];
    [layer setMasksToBounds:1];

    [(MapsProgressBackgroundFillView *)v8 addSubview:v8->_filledContainer];
    v16 = +[CALayer layer];
    maskLayer = v8->_maskLayer;
    v8->_maskLayer = v16;

    isRTL = v8->_isRTL;
    if (isRTL)
    {
      [(MapsProgressBackgroundFillView *)v8 frame];
      v20 = v19;
      [(MapsProgressBackgroundFillView *)v8 frame];
      v22 = v8->_maskLayer;
      v23 = v20;
    }

    else
    {
      v22 = v8->_maskLayer;
      v23 = 0.0;
      v21 = height;
    }

    [(CALayer *)v22 setFrame:0.0, 0.0, v23, v21];
    layer2 = [(UIView *)v8->_filledContainer layer];
    [layer2 setInvertsMask:isRTL];

    v25 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v8->_maskLayer, "setBackgroundColor:", [v25 CGColor]);

    [(UIView *)v8->_filledContainer addSubview:v8->_filledBackgroundView];
    [(UIView *)v8->_filledContainer addSubview:v8->_filledLabel];
    layer3 = [(MapsProgressBackgroundFillView *)v8 layer];
    [layer3 addSublayer:v8->_maskLayer];

    v27 = v8->_maskLayer;
    layer4 = [(UIView *)v8->_filledContainer layer];
    [layer4 setMask:v27];

    [(MapsProgressBackgroundFillView *)v8 _setOriginalConstraints];
    [(MapsProgressBackgroundFillView *)v8 _useDefaultColors];
  }

  return v8;
}

@end