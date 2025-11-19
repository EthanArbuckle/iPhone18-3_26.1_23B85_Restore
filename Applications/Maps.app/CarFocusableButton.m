@interface CarFocusableButton
+ (CarFocusableButton)buttonWithConfiguration:(id)a3 primaryAction:(id)a4;
+ (CarFocusableButton)buttonWithType:(int64_t)a3;
+ (id)backButton;
+ (id)cardHeaderButton;
+ (id)closeButton;
- (BOOL)canBecomeFocused;
- (CarFocusableButton)initWithFrame:(CGRect)a3;
- (id)_backgroundShapeLayer;
- (id)_focusShapeLayer;
- (void)_commonInit;
- (void)_setNeedsUpdateAppearance;
- (void)_updateAppearance;
- (void)_updateColorSettings;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setAdjustsImageWhenDisabled:(BOOL)a3;
- (void)setAdjustsImageWhenHighlighted:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFocusedBackgroundColor:(id)a3;
- (void)setFocusedTintColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setModifiesBackgroundColor:(BOOL)a3;
- (void)setNonFocusedBackgroundColor:(id)a3;
- (void)setNonFocusedTintColor:(id)a3;
- (void)setTitleColor:(id)a3 forState:(unint64_t)a4;
- (void)tappedButton:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation CarFocusableButton

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CarFocusableButton;
  [(MapsLargerHitTargetButton *)&v9 layoutSubviews];
  if (self->_wantsCircularBackgroundLayer)
  {
    [(CarFocusableButton *)self bounds];
    if (v3 != self->_lastKnownBackgroundLayerSize.width || v4 != self->_lastKnownBackgroundLayerSize.height)
    {
      self->_lastKnownBackgroundLayerSize.width = v3;
      self->_lastKnownBackgroundLayerSize.height = v4;
      [(CAShapeLayer *)self->_backgroundShapeLayer removeFromSuperlayer];
      backgroundShapeLayer = self->_backgroundShapeLayer;
      self->_backgroundShapeLayer = 0;

      v7 = [(CarFocusableButton *)self layer];
      v8 = [(CarFocusableButton *)self _backgroundShapeLayer];
      [v7 insertSublayer:v8 atIndex:0];
    }

    [(CarFocusableButton *)self bounds];
    [(CAShapeLayer *)self->_backgroundShapeLayer setFrame:?];
  }
}

- (void)_updateAppearance
{
  if (!self->_showsEllipticalFocusIndicator)
  {
    if (([(CarFocusableButton *)self isFocused]& 1) != 0)
    {
      [(CarFocusableButton *)self focusedTintColor];
    }

    else
    {
      [(CarFocusableButton *)self nonFocusedTintColor];
    }
    v12 = ;
    [(CarFocusableButton *)self setTintColor:v12];
    goto LABEL_18;
  }

  p_lastKnownFocusLayerSize = &self->_lastKnownFocusLayerSize;
  [(CarFocusableButton *)self bounds];
  height = self->_lastKnownFocusLayerSize.height;
  if (p_lastKnownFocusLayerSize->width != v6 || height != v4)
  {
    [(CarFocusableButton *)self bounds:p_lastKnownFocusLayerSize->width];
    p_lastKnownFocusLayerSize->width = v8;
    self->_lastKnownFocusLayerSize.height = v9;
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;
  }

  if ([(CarFocusableButton *)self isFocused])
  {
    v11 = [(CarFocusableButton *)self focusedBackgroundColor];
  }

  else
  {
    if (![(CarFocusableButton *)self isSelected])
    {
LABEL_15:
      [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
      goto LABEL_19;
    }

    v11 = +[UIColor labelColor];
  }

  v12 = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v13 = [(CarFocusableButton *)self _focusShapeLayer];
  [v13 setStrokeColor:{objc_msgSend(v12, "CGColor")}];

  +[CATransaction commit];
  v14 = [(CarFocusableButton *)self layer];
  v15 = [(CarFocusableButton *)self _focusShapeLayer];
  [v14 insertSublayer:v15 atIndex:0];

LABEL_18:
LABEL_19:
  if (self->_modifiesBackgroundColor)
  {
    if (([(CarFocusableButton *)self isFocused]& 1) != 0)
    {
      [(CarFocusableButton *)self focusedBackgroundColor];
    }

    else
    {
      [(CarFocusableButton *)self nonFocusedBackgroundColor];
    }
    v16 = ;
    [(CarFocusableButton *)self setBackgroundColor:v16];
  }

  if (self->_backgroundShapeLayer)
  {
    if (([(CarFocusableButton *)self isFocused]& 1) != 0)
    {
      [(CarFocusableButton *)self focusedBackgroundColor];
    }

    else
    {
      [(CarFocusableButton *)self nonFocusedBackgroundColor];
    }
    v18 = ;
    v17 = v18;
    -[CAShapeLayer setFillColor:](self->_backgroundShapeLayer, "setFillColor:", [v18 CGColor]);
  }
}

- (void)_setNeedsUpdateAppearance
{
  if (!self->_needsUpdateAppearance)
  {
    self->_needsUpdateAppearance = 1;
    objc_initWeak(&location, self);
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10008EF20;
    v2[3] = &unk_101661B98;
    objc_copyWeak(&v3, &location);
    dispatch_async(&_dispatch_main_q, v2);
    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

+ (id)cardHeaderButton
{
  v2 = [a1 button];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v2 imageView];
  [v3 setContentMode:1];

  LODWORD(v4) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v6];
  [v2 setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
  [v2 setModifiesBackgroundColor:0];
  [v2 setEllipticalFocusIndicatorisFilled:1];
  v2[93] = 1;

  return v2;
}

- (void)_commonInit
{
  v3 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"tappedButton:"];
  recognizer = self->_recognizer;
  self->_recognizer = v3;

  [(UILongPressGestureRecognizer *)self->_recognizer setMinimumPressDuration:0.0];
  [(UILongPressGestureRecognizer *)self->_recognizer setAllowedPressTypes:&off_1016ED910];
  v5 = +[UIColor _carSystemFocusLabelColor];
  focusedTintColor = self->_focusedTintColor;
  self->_focusedTintColor = v5;

  v7 = +[UIColor labelColor];
  nonFocusedTintColor = self->_nonFocusedTintColor;
  self->_nonFocusedTintColor = v7;

  v9 = +[UIColor _carSystemFocusColor];
  focusedBackgroundColor = self->_focusedBackgroundColor;
  self->_focusedBackgroundColor = v9;

  v11 = +[UIColor clearColor];
  nonFocusedBackgroundColor = self->_nonFocusedBackgroundColor;
  self->_nonFocusedBackgroundColor = v11;

  [(CarFocusableButton *)self setAdjustsImageWhenHighlighted:0];
  [(CarFocusableButton *)self setAdjustsImageWhenDisabled:0];
  [(CarFocusableButton *)self addGestureRecognizer:self->_recognizer];

  [(CarFocusableButton *)self _updateAppearance];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CarFocusableButton;
  [(CarFocusableButton *)&v3 tintColorDidChange];
  self->_generatedHighlightedColor = 0;
  self->_generatedDisabledColor = 0;
  [(CarFocusableButton *)self _updateColorSettings];
}

- (void)_updateColorSettings
{
  v3 = [(CarFocusableButton *)self tintColor];
  v18.receiver = self;
  v18.super_class = CarFocusableButton;
  [(CarFocusableButton *)&v18 setTitleColor:v3 forState:0];

  v16 = 0.0;
  v17 = 0.0;
  v4 = [(CarFocusableButton *)self tintColor];
  [v4 getWhite:&v17 alpha:&v16];

  v5 = [(CarFocusableButton *)self titleColorForState:2];
  if (!self->_customDisabledColor && !self->_generatedDisabledColor)
  {
    self->_generatedDisabledColor = 1;
    v6 = [UIColor colorWithWhite:v17 alpha:v16 * 0.349999994];

    v15.receiver = self;
    v15.super_class = CarFocusableButton;
    [(CarFocusableButton *)&v15 setTitleColor:v6 forState:2];
    v5 = v6;
  }

  v7 = [(CarFocusableButton *)self titleColorForState:1];
  if (!self->_customHighlightedColor && !self->_generatedHighlightedColor)
  {
    self->_generatedHighlightedColor = 1;
    v8 = [(CarFocusableButton *)self tintColor];
    v9 = [v8 colorWithAlphaComponent:0.200000003];

    v14.receiver = self;
    v14.super_class = CarFocusableButton;
    [(CarFocusableButton *)&v14 setTitleColor:v9 forState:1];
    v7 = v9;
  }

  if ([(CarFocusableButton *)self isHighlighted])
  {
    v10 = [(CarFocusableButton *)self imageView];
    v11 = v10;
    v12 = v7;
LABEL_12:
    [v10 setTintColor:v12];
    goto LABEL_13;
  }

  if (([(CarFocusableButton *)self isEnabled]& 1) == 0)
  {
    v10 = [(CarFocusableButton *)self imageView];
    v11 = v10;
    v12 = v5;
    goto LABEL_12;
  }

  v11 = [(CarFocusableButton *)self tintColor];
  v13 = [(CarFocusableButton *)self imageView];
  [v13 setTintColor:v11];

LABEL_13:
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarFocusableButton;
  [(CarFocusableButton *)&v4 didMoveToWindow];
  v3 = [(CarFocusableButton *)self window];

  if (v3)
  {
    [(CarFocusableButton *)self _setNeedsUpdateAppearance];
  }
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = CarFocusableButton;
  v3 = [(CarFocusableButton *)&v5 canBecomeFocused];
  if (v3)
  {
    v3 = [(CarFocusableButton *)self isEnabled];
    if (v3)
    {
      LOBYTE(v3) = [(CarFocusableButton *)self isHidden]^ 1;
    }
  }

  return v3;
}

+ (id)closeButton
{
  v2 = [a1 cardHeaderButton];
  [v2 setAccessibilityIdentifier:@"CloseButton"];
  v3 = +[UIColor _carSystemFocusLabelColor];
  v18[0] = v3;
  v4 = +[UIColor secondarySystemFillColor];
  v18[1] = v4;
  v5 = [NSArray arrayWithObjects:v18 count:2];
  v16 = [UIImage _mapsCar_systemImageNamed:@"multiply" pointSize:5 weight:v5 paletteColors:16.0];

  [v2 setImage:v16 forState:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CarPlay_Close" value:@"localized string not found" table:0];
  v17[0] = v7;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CarPlay_Dismiss" value:@"localized string not found" table:0];
  v17[1] = v9;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"CarPlay_Back" value:@"localized string not found" table:0];
  v17[2] = v11;
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"CarPlay_X" value:@"localized string not found" table:0];
  v17[3] = v13;
  v14 = [NSArray arrayWithObjects:v17 count:4];
  [v2 setAccessibilityUserInputLabels:v14];

  return v2;
}

+ (CarFocusableButton)buttonWithConfiguration:(id)a3 primaryAction:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CarFocusableButton;
  v4 = objc_msgSendSuper2(&v6, "buttonWithConfiguration:primaryAction:", a3, a4);
  [v4 _commonInit];

  return v4;
}

+ (CarFocusableButton)buttonWithType:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CarFocusableButton;
  v3 = objc_msgSendSuper2(&v5, "buttonWithType:", a3);
  [v3 _commonInit];

  return v3;
}

+ (id)backButton
{
  v2 = [a1 cardHeaderButton];
  [v2 setAccessibilityIdentifier:@"BackButton"];
  v3 = +[UIColor _carSystemFocusLabelColor];
  v18[0] = v3;
  v4 = +[UIColor secondarySystemFillColor];
  v18[1] = v4;
  v5 = [NSArray arrayWithObjects:v18 count:2];
  v6 = [UIImage _mapsCar_systemImageNamed:@"chevron.backward" pointSize:5 weight:v5 paletteColors:16.0];
  [v2 setImage:v6 forState:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CarPlay_Close" value:@"localized string not found" table:0];
  v17[0] = v8;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"CarPlay_Dismiss" value:@"localized string not found" table:0];
  v17[1] = v10;
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"CarPlay_Back" value:@"localized string not found" table:0];
  v17[2] = v12;
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"CarPlay_X" value:@"localized string not found" table:0];
  v17[3] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:4];
  [v2 setAccessibilityUserInputLabels:v15];

  return v2;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CarFocusableButton;
  [(CarFocusableButton *)&v11 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];
  v8 = v7;
  if (v7 == self)
  {

LABEL_5:
    v10 = [v6 nextFocusedItem];
    [(CarFocusableButton *)self focusDidChange:v10 == self];

    goto LABEL_6;
  }

  v9 = [v6 previouslyFocusedItem];

  if (v9 == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)tappedButton:(id)a3
{
  v5 = a3;
  if ([(CarFocusableButton *)self isEnabled])
  {
    if ([v5 state] == 1)
    {
      [(CarFocusableButton *)self setHighlighted:1];
    }

    else
    {
      v4 = [v5 state];
      [(CarFocusableButton *)self setHighlighted:0];
      if (v4 == 3)
      {
        [(CarFocusableButton *)self sendActionsForControlEvents:64];
      }
    }
  }
}

- (void)setTitleColor:(id)a3 forState:(unint64_t)a4
{
  if (a4 == 1)
  {
    v5 = &OBJC_IVAR___CarFocusableButton__generatedHighlightedColor;
    v6 = &OBJC_IVAR___CarFocusableButton__customHighlightedColor;
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v5 = &OBJC_IVAR___CarFocusableButton__generatedDisabledColor;
    v6 = &OBJC_IVAR___CarFocusableButton__customDisabledColor;
LABEL_5:
    *(&self->super.super.super.super.super.super.isa + *v6) = a3 != 0;
    *(&self->super.super.super.super.super.super.isa + *v5) = 0;
  }

  v7.receiver = self;
  v7.super_class = CarFocusableButton;
  [CarFocusableButton setTitleColor:"setTitleColor:forState:" forState:?];
  [(CarFocusableButton *)self _setNeedsUpdateAppearance];
}

- (id)_focusShapeLayer
{
  focusShapeLayer = self->_focusShapeLayer;
  if (!focusShapeLayer)
  {
    v4 = +[CAShapeLayer layer];
    v5 = self->_focusShapeLayer;
    self->_focusShapeLayer = v4;

    [(CarFocusableButton *)self bounds];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    v10 = CGRectGetWidth(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v11 = CGRectGetHeight(v21);
    if (vabdd_f64(v10, v11) > 2.22044605e-16)
    {
      height = fmax(v10, v11);
      [(CarFocusableButton *)self bounds];
      x = CGRectGetMidX(v22) - height * 0.5;
      [(CarFocusableButton *)self bounds];
      y = CGRectGetMidY(v23) - height * 0.5;
      width = height;
    }

    if (![(CarFocusableButton *)self ellipticalFocusIndicatorisFilled])
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v25 = CGRectInset(v24, -0.75, -0.75);
      x = v25.origin.x;
      y = v25.origin.y;
      width = v25.size.width;
      height = v25.size.height;
    }

    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v12 = CGPathCreateWithEllipseInRect(v26, 0);
    [(CAShapeLayer *)self->_focusShapeLayer setPath:v12];
    CGPathRelease(v12);
    v13 = [(CarFocusableButton *)self ellipticalFocusIndicatorisFilled];
    v14 = self->_focusShapeLayer;
    if (v13)
    {
      [(CAShapeLayer *)v14 setLineWidth:0.0];
      v15 = +[UIColor clearColor];
      -[CAShapeLayer setStrokeColor:](self->_focusShapeLayer, "setStrokeColor:", [v15 CGColor]);

      [(CarFocusableButton *)self focusedBackgroundColor];
    }

    else
    {
      [(CAShapeLayer *)v14 setLineWidth:1.5];
      v16 = [(CarFocusableButton *)self focusedBackgroundColor];
      -[CAShapeLayer setStrokeColor:](self->_focusShapeLayer, "setStrokeColor:", [v16 CGColor]);

      +[UIColor clearColor];
    }
    v17 = ;
    -[CAShapeLayer setFillColor:](self->_focusShapeLayer, "setFillColor:", [v17 CGColor]);

    focusShapeLayer = self->_focusShapeLayer;
  }

  return focusShapeLayer;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarFocusableButton *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = CarFocusableButton;
  [(CarFocusableButton *)&v6 setHighlighted:v3];
  if (v5 != [(CarFocusableButton *)self isHighlighted])
  {
    [(CarFocusableButton *)self _updateColorSettings];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarFocusableButton *)self isEnabled];
  v6.receiver = self;
  v6.super_class = CarFocusableButton;
  [(CarFocusableButton *)&v6 setEnabled:v3];
  if (v5 != [(CarFocusableButton *)self isEnabled])
  {
    [(CarFocusableButton *)self setNeedsFocusUpdate];
    [(CarFocusableButton *)self _updateColorSettings];
  }
}

- (void)setModifiesBackgroundColor:(BOOL)a3
{
  if (self->_modifiesBackgroundColor != a3)
  {
    self->_modifiesBackgroundColor = a3;
    [(CarFocusableButton *)self _setNeedsUpdateAppearance];
  }
}

- (void)setNonFocusedBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_nonFocusedBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_nonFocusedBackgroundColor, a3);
    [(CarFocusableButton *)self _setNeedsUpdateAppearance];
    v5 = v6;
  }
}

- (void)setFocusedBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_focusedBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_focusedBackgroundColor, a3);
    [(CarFocusableButton *)self _setNeedsUpdateAppearance];
    v5 = v6;
  }
}

- (void)setNonFocusedTintColor:(id)a3
{
  v5 = a3;
  if (self->_nonFocusedTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_nonFocusedTintColor, a3);
    [(CarFocusableButton *)self _setNeedsUpdateAppearance];
    v5 = v6;
  }
}

- (void)setFocusedTintColor:(id)a3
{
  v5 = a3;
  if (self->_focusedTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_focusedTintColor, a3);
    [(CarFocusableButton *)self _setNeedsUpdateAppearance];
    v5 = v6;
  }
}

- (void)setAdjustsImageWhenHighlighted:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CarFocusableButton;
  [(CarFocusableButton *)&v3 setAdjustsImageWhenHighlighted:0];
}

- (void)setAdjustsImageWhenDisabled:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CarFocusableButton;
  [(CarFocusableButton *)&v3 setAdjustsImageWhenDisabled:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CarFocusableButton;
  v4 = a3;
  [(CarFocusableButton *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(CarFocusableButton *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(CarFocusableButton *)self _setNeedsUpdateAppearance];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = CarFocusableButton;
  [(CarFocusableButton *)&v5 willMoveToSuperview:a3];
  [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
  focusShapeLayer = self->_focusShapeLayer;
  self->_focusShapeLayer = 0;
}

- (id)_backgroundShapeLayer
{
  backgroundShapeLayer = self->_backgroundShapeLayer;
  if (!backgroundShapeLayer)
  {
    v4 = +[CAShapeLayer layer];
    v5 = self->_backgroundShapeLayer;
    self->_backgroundShapeLayer = v4;

    [(CarFocusableButton *)self bounds];
    v6 = CGPathCreateWithEllipseInRect(v10, 0);
    [(CAShapeLayer *)self->_backgroundShapeLayer setPath:v6];
    CGPathRelease(v6);
    v7 = +[UIColor tertiarySystemFillColor];
    -[CAShapeLayer setFillColor:](self->_backgroundShapeLayer, "setFillColor:", [v7 CGColor]);

    backgroundShapeLayer = self->_backgroundShapeLayer;
  }

  return backgroundShapeLayer;
}

- (CarFocusableButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CarFocusableButton;
  v3 = [(CarFocusableButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarFocusableButton *)v3 _commonInit];
  }

  return v4;
}

@end