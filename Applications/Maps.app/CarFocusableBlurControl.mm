@interface CarFocusableBlurControl
- (CarFocusableBlurControl)init;
- (CarFocusableBlurControl)initWithFrame:(CGRect)frame;
- (id)backgroundColor;
- (id)contentView;
- (void)_commonInit;
- (void)_prepareBlurViewIfNeeded;
- (void)_updateShadow;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setCastsShadow:(BOOL)shadow;
- (void)setHidesBlur:(BOOL)blur;
- (void)setRoundedCornerRadius:(double)radius;
- (void)setRoundedCorners:(unint64_t)corners;
- (void)traitCollectionDidChange:(id)change;
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
    needsContinuousRoundedCorners = [(CarFocusableBlurControl *)self needsContinuousRoundedCorners];
    [(CarDynamicBlurView *)self->_blurView _setCornerRadius:needsContinuousRoundedCorners continuous:roundedCorners & 0xF maskedCorners:self->_roundedCornerRadius];
    roundedCornerRadius = self->_roundedCornerRadius;
    layer = [(CarFocusableBlurControl *)self layer];
    [layer setCornerRadius:roundedCornerRadius];

    v8 = &kCACornerCurveContinuous;
    if (!needsContinuousRoundedCorners)
    {
      v8 = &kCACornerCurveCircular;
    }

    v9 = *v8;
    layer2 = [(CarFocusableBlurControl *)self layer];
    [layer2 setCornerCurve:v9];

    layer3 = [(CarFocusableBlurControl *)self layer];
    [layer3 setMaskedCorners:roundedCorners & 0xF];

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
  contentView = [(CarDynamicBlurView *)self->_blurView contentView];
  backgroundColor = [contentView backgroundColor];

  return backgroundColor;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarFocusableBlurControl;
  [(CarFocusableBlurControl *)&v4 didMoveToWindow];
  window = [(CarFocusableBlurControl *)self window];

  if (window)
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
    layer = [(CarFocusableBlurControl *)self layer];
    [layer setShadowRadius:0.0];

    layer2 = [(CarFocusableBlurControl *)self layer];
    [layer2 setShadowOpacity:0.0];
  }
}

- (void)setCastsShadow:(BOOL)shadow
{
  if (self->_castsShadow != shadow)
  {
    self->_castsShadow = shadow;
    [(CarFocusableBlurControl *)self _updateShadow];
  }
}

- (void)setHidesBlur:(BOOL)blur
{
  if (self->_hidesBlur != blur)
  {
    self->_hidesBlur = blur;
    [(CarDynamicBlurView *)self->_blurView setAlpha:!blur];
  }
}

- (void)setRoundedCornerRadius:(double)radius
{
  if (self->_roundedCornerRadius != radius)
  {
    self->_roundedCornerRadius = radius;
    [(CarFocusableBlurControl *)self setNeedsLayout];
  }
}

- (void)setRoundedCorners:(unint64_t)corners
{
  if (self->_roundedCorners != corners)
  {
    self->_roundedCorners = corners;
    [(CarFocusableBlurControl *)self setNeedsLayout];
  }
}

- (void)setBackgroundColor:(id)color
{
  blurView = self->_blurView;
  colorCopy = color;
  contentView = [(CarDynamicBlurView *)blurView contentView];
  [contentView setBackgroundColor:colorCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CarFocusableBlurControl;
  changeCopy = change;
  [(CarFocusableControl *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CarFocusableBlurControl *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
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
  layer = [(CarFocusableBlurControl *)self layer];
  [layer setMasksToBounds:!castsShadow];

  layer2 = [(CarFocusableBlurControl *)self layer];
  [layer2 setShadowPathIsBounds:1];

  [(CarFocusableBlurControl *)self setRoundedCorners:-1];
}

- (void)_prepareBlurViewIfNeeded
{
  if (!self->_blurView)
  {
    v3 = [(CarFocusableBlurControl *)self _mapsCar_injectBlurView:2];
    blurView = self->_blurView;
    self->_blurView = v3;

    wantsCornerMasking = [(CarDynamicBlurView *)self->_blurView wantsCornerMasking];
    layer = [(CarDynamicBlurView *)self->_blurView layer];
    [layer setMasksToBounds:wantsCornerMasking];
  }
}

- (id)contentView
{
  [(CarFocusableBlurControl *)self _prepareBlurViewIfNeeded];
  blurView = self->_blurView;

  return [(CarDynamicBlurView *)blurView contentView];
}

- (CarFocusableBlurControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CarFocusableBlurControl;
  v3 = [(CarFocusableControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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