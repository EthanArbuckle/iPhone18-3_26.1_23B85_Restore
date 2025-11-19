@interface MapsProgressBackgroundFillView
- (MapsProgressBackgroundFillView)initWithFrame:(CGRect)a3;
- (void)_setOriginalConstraints;
- (void)_useDefaultColors;
- (void)layoutSubviews;
- (void)setFilledBackgroundColor:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)setfilledBackgroundColorFocus:(id)a3;
- (void)setfilledLabelColor:(id)a3;
- (void)setfilledLabelColorFocus:(id)a3;
- (void)startProgressAnimationWithCompletion:(id)a3;
- (void)updateColorsWithFocus:(BOOL)a3;
@end

@implementation MapsProgressBackgroundFillView

- (void)startProgressAnimationWithCompletion:(id)a3
{
  v4 = a3;
  [(MapsProgressBackgroundFillView *)self frame];
  v21.origin.x = CGRectZero.origin.x;
  v21.origin.y = CGRectZero.origin.y;
  v21.size.width = CGRectZero.size.width;
  v21.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(v20, v21))
  {
    if (v4)
    {
      v4[2](v4);
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
    if (v4)
    {
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100814BBC;
      v17 = &unk_101661090;
      v18 = self;
      v19 = v4;
      [CATransaction setCompletionBlock:&v14];
    }

    [CATransaction commit:v14];
    self->_animationInProgress = 1;
  }
}

- (void)updateColorsWithFocus:(BOOL)a3
{
  filledBackgroundView = self->_filledBackgroundView;
  v5 = &OBJC_IVAR___MapsProgressBackgroundFillView__filledBackgroundColor;
  if (a3)
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

- (void)setFilledBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_filledBackgroundColor, a3);
  v5 = a3;
  [(UIView *)self->_filledBackgroundView setBackgroundColor:v5];
}

- (void)setfilledLabelColor:(id)a3
{
  objc_storeStrong(&self->_filledLabelColor, a3);
  v5 = a3;
  [(UILabel *)self->_filledLabel setTextColor:v5];
}

- (void)setfilledBackgroundColorFocus:(id)a3
{
  objc_storeStrong(&self->_filledBackgroundColorFocus, a3);
  v5 = a3;
  [(UIView *)self->_filledBackgroundView setBackgroundColor:v5];
}

- (void)setfilledLabelColorFocus:(id)a3
{
  objc_storeStrong(&self->_filledLabelColorFocus, a3);
  v5 = a3;
  [(UILabel *)self->_filledLabel setTextColor:v5];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_filledLabel setText:v5];
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
  v39 = [(UIView *)self->_filledContainer leadingAnchor];
  v38 = [(MapsProgressBackgroundFillView *)self leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v40[0] = v37;
  v36 = [(UIView *)self->_filledContainer trailingAnchor];
  v35 = [(MapsProgressBackgroundFillView *)self trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v40[1] = v34;
  v33 = [(UIView *)self->_filledContainer topAnchor];
  v32 = [(MapsProgressBackgroundFillView *)self topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v40[2] = v31;
  v30 = [(UIView *)self->_filledContainer bottomAnchor];
  v29 = [(MapsProgressBackgroundFillView *)self bottomAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v40[3] = v28;
  v27 = [(UIView *)self->_filledBackgroundView leadingAnchor];
  v26 = [(UIView *)self->_filledContainer leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v40[4] = v25;
  v24 = [(UIView *)self->_filledBackgroundView trailingAnchor];
  v23 = [(UIView *)self->_filledContainer trailingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v40[5] = v22;
  v21 = [(UIView *)self->_filledBackgroundView topAnchor];
  v20 = [(UIView *)self->_filledContainer topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v40[6] = v19;
  v18 = [(UIView *)self->_filledBackgroundView bottomAnchor];
  v17 = [(UIView *)self->_filledContainer bottomAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v40[7] = v16;
  v15 = [(UILabel *)self->_filledLabel leadingAnchor];
  v14 = [(UIView *)self->_filledContainer leadingAnchor];
  v13 = [v15 constraintEqualToAnchor:v14];
  v40[8] = v13;
  v12 = [(UILabel *)self->_filledLabel trailingAnchor];
  v3 = [(UIView *)self->_filledContainer trailingAnchor];
  v4 = [v12 constraintEqualToAnchor:v3];
  v40[9] = v4;
  v5 = [(UILabel *)self->_filledLabel topAnchor];
  v6 = [(UIView *)self->_filledContainer topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v40[10] = v7;
  v8 = [(UILabel *)self->_filledLabel bottomAnchor];
  v9 = [(UIView *)self->_filledContainer bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
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

- (void)setTitleFont:(id)a3
{
  objc_storeStrong(&self->_titleFont, a3);
  v5 = a3;
  [(UILabel *)self->_filledLabel setFont:v5];
}

- (MapsProgressBackgroundFillView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v15 = [(UIView *)v8->_filledContainer layer];
    [v15 setMasksToBounds:1];

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
    v24 = [(UIView *)v8->_filledContainer layer];
    [v24 setInvertsMask:isRTL];

    v25 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v8->_maskLayer, "setBackgroundColor:", [v25 CGColor]);

    [(UIView *)v8->_filledContainer addSubview:v8->_filledBackgroundView];
    [(UIView *)v8->_filledContainer addSubview:v8->_filledLabel];
    v26 = [(MapsProgressBackgroundFillView *)v8 layer];
    [v26 addSublayer:v8->_maskLayer];

    v27 = v8->_maskLayer;
    v28 = [(UIView *)v8->_filledContainer layer];
    [v28 setMask:v27];

    [(MapsProgressBackgroundFillView *)v8 _setOriginalConstraints];
    [(MapsProgressBackgroundFillView *)v8 _useDefaultColors];
  }

  return v8;
}

@end