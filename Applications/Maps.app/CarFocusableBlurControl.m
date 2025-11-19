@interface CarFocusableBlurControl
- (CarFocusableBlurControl)init;
- (CarFocusableBlurControl)initWithFrame:(CGRect)a3;
- (id)backgroundColor;
- (id)contentView;
- (void)_commonInit;
- (void)_prepareBlurViewIfNeeded;
- (void)_updateShadow;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setCastsShadow:(BOOL)a3;
- (void)setHidesBlur:(BOOL)a3;
- (void)setRoundedCornerRadius:(double)a3;
- (void)setRoundedCorners:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CarFocusableBlurControl

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CarFocusableBlurControl;
  [(CarFocusableControl *)&v16 layoutSubviews];
  [(CarFocusableBlurControl *)self bounds];
  v3 = CGRectEqualToRect(v17, self->_lastBounds);
  roundedCorners = self->_roundedCorners;
  if (!v3 || roundedCorners != self->_lastRoundedCorners || self->_roundedCornerRadius != self->_lastRoundedCornerRadius)
  {
    v5 = [(CarFocusableBlurControl *)self needsContinuousRoundedCorners];
    [(CarDynamicBlurView *)self->_blurView _setCornerRadius:v5 continuous:roundedCorners & 0xF maskedCorners:self->_roundedCornerRadius];
    roundedCornerRadius = self->_roundedCornerRadius;
    v7 = [(CarFocusableBlurControl *)self layer];
    [v7 setCornerRadius:roundedCornerRadius];

    v8 = &kCACornerCurveContinuous;
    if (!v5)
    {
      v8 = &kCACornerCurveCircular;
    }

    v9 = *v8;
    v10 = [(CarFocusableBlurControl *)self layer];
    [v10 setCornerCurve:v9];

    v11 = [(CarFocusableBlurControl *)self layer];
    [v11 setMaskedCorners:roundedCorners & 0xF];

    [(CarFocusableBlurControl *)self bounds];
    self->_lastBounds.origin.x = v12;
    self->_lastBounds.origin.y = v13;
    self->_lastRoundedCorners = self->_roundedCorners;
    self->_lastBounds.size.width = v14;
    self->_lastBounds.size.height = v15;
    self->_lastRoundedCornerRadius = self->_roundedCornerRadius;
  }
}

- (id)backgroundColor
{
  v2 = [(CarDynamicBlurView *)self->_blurView contentView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarFocusableBlurControl;
  [(CarFocusableBlurControl *)&v4 didMoveToWindow];
  v3 = [(CarFocusableBlurControl *)self window];

  if (v3)
  {
    [(CarFocusableBlurControl *)self _updateShadow];
  }
}

- (void)_updateShadow
{
  if (self->_castsShadow && [(CarDynamicBlurView *)self->_blurView wantsCornerMasking])
  {

    [(CarFocusableBlurControl *)self _mapsCar_updateShadow];
  }

  else
  {
    v3 = [(CarFocusableBlurControl *)self layer];
    [v3 setShadowRadius:0.0];

    v4 = [(CarFocusableBlurControl *)self layer];
    [v4 setShadowOpacity:0.0];
  }
}

- (void)setCastsShadow:(BOOL)a3
{
  if (self->_castsShadow != a3)
  {
    self->_castsShadow = a3;
    [(CarFocusableBlurControl *)self _updateShadow];
  }
}

- (void)setHidesBlur:(BOOL)a3
{
  if (self->_hidesBlur != a3)
  {
    self->_hidesBlur = a3;
    [(CarDynamicBlurView *)self->_blurView setAlpha:!a3];
  }
}

- (void)setRoundedCornerRadius:(double)a3
{
  if (self->_roundedCornerRadius != a3)
  {
    self->_roundedCornerRadius = a3;
    [(CarFocusableBlurControl *)self setNeedsLayout];
  }
}

- (void)setRoundedCorners:(unint64_t)a3
{
  if (self->_roundedCorners != a3)
  {
    self->_roundedCorners = a3;
    [(CarFocusableBlurControl *)self setNeedsLayout];
  }
}

- (void)setBackgroundColor:(id)a3
{
  blurView = self->_blurView;
  v4 = a3;
  v5 = [(CarDynamicBlurView *)blurView contentView];
  [v5 setBackgroundColor:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CarFocusableBlurControl;
  v4 = a3;
  [(CarFocusableControl *)&v8 traitCollectionDidChange:v4];
  v5 = [(CarFocusableBlurControl *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(CarFocusableBlurControl *)self _updateShadow];
  }
}

- (void)_commonInit
{
  self->_castsShadow = GEOConfigGetBOOL();
  [(CarFocusableBlurControl *)self _prepareBlurViewIfNeeded];
  [(CarFocusableBlurControl *)self setClipsToBounds:!self->_castsShadow];
  castsShadow = self->_castsShadow;
  v4 = [(CarFocusableBlurControl *)self layer];
  [v4 setMasksToBounds:!castsShadow];

  v5 = [(CarFocusableBlurControl *)self layer];
  [v5 setShadowPathIsBounds:1];

  [(CarFocusableBlurControl *)self setRoundedCorners:-1];
}

- (void)_prepareBlurViewIfNeeded
{
  if (!self->_blurView)
  {
    v3 = [(CarFocusableBlurControl *)self _mapsCar_injectBlurView:2];
    blurView = self->_blurView;
    self->_blurView = v3;

    v5 = [(CarDynamicBlurView *)self->_blurView wantsCornerMasking];
    v6 = [(CarDynamicBlurView *)self->_blurView layer];
    [v6 setMasksToBounds:v5];
  }
}

- (id)contentView
{
  [(CarFocusableBlurControl *)self _prepareBlurViewIfNeeded];
  blurView = self->_blurView;

  return [(CarDynamicBlurView *)blurView contentView];
}

- (CarFocusableBlurControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CarFocusableBlurControl;
  v3 = [(CarFocusableControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarFocusableBlurControl *)v3 _commonInit];
  }

  return v4;
}

- (CarFocusableBlurControl)init
{
  v5.receiver = self;
  v5.super_class = CarFocusableBlurControl;
  v2 = [(CarFocusableBlurControl *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CarFocusableBlurControl *)v2 _commonInit];
  }

  return v3;
}

@end