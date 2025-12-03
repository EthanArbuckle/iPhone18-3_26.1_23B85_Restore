@interface AVBackgroundView
- (AVBackgroundView)initWithFrame:(CGRect)frame;
- (BOOL)_isContainedInOverlappingBackgroundView;
- (void)_ensureOrRemoveLayoutView;
- (void)_updateBackdropShape;
- (void)addSubview:(id)subview applyingMaterialStyle:(int64_t)style tintEffectStyle:(int64_t)effectStyle;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAutomaticallyDrawsRoundedCorners:(BOOL)corners;
- (void)setCircular:(BOOL)circular;
- (void)setPrefersLowQualityEffects:(BOOL)effects;
@end

@implementation AVBackgroundView

- (BOOL)_isContainedInOverlappingBackgroundView
{
  superview = [(AVBackgroundView *)self superview];
  if (!superview)
  {
    return 0;
  }

  superview2 = superview;
  do
  {
    v4 = superview2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = superview2;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    superview2 = [superview2 superview];

    v7 = v6 != 0;
  }

  while (superview2 && !v6);

  return v7;
}

- (void)_ensureOrRemoveLayoutView
{
  _isContainedInOverlappingBackgroundView = [(AVBackgroundView *)self _isContainedInOverlappingBackgroundView];
  layoutView = [(AVBackgroundView *)self layoutView];
  v5 = layoutView;
  if (_isContainedInOverlappingBackgroundView)
  {
    [layoutView removeFromSuperview];

    [(AVBackgroundView *)self setLayoutView:0];
  }

  else
  {

    if (!v5)
    {
      v6 = [AVLayoutView alloc];
      [(AVBackgroundView *)self bounds];
      v7 = [(AVLayoutView *)v6 initWithFrame:?];
      [(AVBackgroundView *)self setLayoutView:v7];

      [(AVBackgroundView *)self _updateBackdropShape];
      layoutView2 = [(AVBackgroundView *)self layoutView];
      [layoutView2 setPrefersLowQualityEffects:{-[AVBackgroundView prefersLowQualityEffects](self, "prefersLowQualityEffects")}];

      layoutView3 = [(AVBackgroundView *)self layoutView];
      [(AVBackgroundView *)self insertSubview:layoutView3 atIndex:0];
    }

    layoutView4 = [(AVBackgroundView *)self layoutView];
    [(AVBackgroundView *)self sendSubviewToBack:layoutView4];

    layoutView5 = [(AVBackgroundView *)self layoutView];
    [(AVBackgroundView *)self bounds];
    [layoutView5 setFrame:?];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVBackgroundView;
  [(AVBackgroundView *)&v3 didMoveToWindow];
  [(AVBackgroundView *)self _ensureOrRemoveLayoutView];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = AVBackgroundView;
  [(AVBackgroundView *)&v3 didMoveToSuperview];
  [(AVBackgroundView *)self _ensureOrRemoveLayoutView];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVBackgroundView;
  [(AVBackgroundView *)&v3 layoutSubviews];
  [(AVBackgroundView *)self _ensureOrRemoveLayoutView];
}

- (void)_updateBackdropShape
{
  if ([(AVBackgroundView *)self isCircular])
  {
    v3 = 1;
  }

  else if ([(AVBackgroundView *)self automaticallyDrawsRoundedCorners])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  layoutView = [(AVBackgroundView *)self layoutView];
  [layoutView setShapeStyle:v3];
}

- (void)setPrefersLowQualityEffects:(BOOL)effects
{
  if (self->_prefersLowQualityEffects != effects)
  {
    effectsCopy = effects;
    self->_prefersLowQualityEffects = effects;
    layoutView = [(AVBackgroundView *)self layoutView];
    [layoutView setPrefersLowQualityEffects:effectsCopy];
  }
}

- (void)setCircular:(BOOL)circular
{
  if (self->_circular != circular)
  {
    self->_circular = circular;
    [(AVBackgroundView *)self _updateBackdropShape];
  }
}

- (void)setAutomaticallyDrawsRoundedCorners:(BOOL)corners
{
  if (self->_automaticallyDrawsRoundedCorners != corners)
  {
    self->_automaticallyDrawsRoundedCorners = corners;
    [(AVBackgroundView *)self _updateBackdropShape];
  }
}

- (void)addSubview:(id)subview applyingMaterialStyle:(int64_t)style tintEffectStyle:(int64_t)effectStyle
{
  subviewCopy = subview;
  if (subviewCopy)
  {
    v12 = subviewCopy;
    [(AVBackgroundView *)self _ensureOrRemoveLayoutView];
    if (effectStyle == 1)
    {
      [AVBackdropView applySecondaryGlyphTintToView:v12];
    }

    else if (!effectStyle)
    {
      [AVBackdropView applyPrimaryGlyphTintToView:v12];
    }

    [(AVBackgroundView *)self addSubview:v12];
    subviewCopy = v12;
    if (style == 1)
    {
      v9 = +[AVBackdropView secondaryMaterialOverlayView];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(AVBackgroundView *)self addSubview:v9];
      v10 = MEMORY[0x1E696ACD8];
      v11 = [v9 avkit_constraintsFromCenterAndDimensionAnchorsToCenterAndDimensionAnchorsOfItem:v12];
      [v10 activateConstraints:v11];

      subviewCopy = v12;
    }
  }
}

- (AVBackgroundView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = AVBackgroundView;
  v3 = [(AVBackgroundView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_automaticallyDrawsRoundedCorners = 1;
    layer = [(AVBackgroundView *)v3 layer];
    [layer setAllowsGroupBlending:0];
  }

  return v4;
}

@end