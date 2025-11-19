@interface AVGlassVolumeSlider
- (AVGlassVolumeSlider)initWithFrame:(CGRect)a3;
- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)a3;
- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)a3;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_commonInit;
- (void)_endTracking;
- (void)_updateLayoutItem;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)didMoveToWindow;
- (void)layoutAttributesDidChange;
- (void)setCollapsed:(BOOL)a3;
- (void)setExtrinsicContentSize:(CGSize)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setRemoved:(BOOL)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
@end

@implementation AVGlassVolumeSlider

- (CGSize)extrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateLayoutItem
{
  v3 = [(AVGlassVolumeSlider *)self layoutAttributes];
  [(AVGlassVolumeSlider *)self intrinsicContentSize];
  [v3 setMinimumSize:?];

  v4 = [(AVGlassVolumeSlider *)self layoutAttributes];
  if ([(AVGlassVolumeSlider *)self isIncluded])
  {
    v5 = [(AVGlassVolumeSlider *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setIncluded:v5];

  v6 = [(AVGlassVolumeSlider *)self layoutAttributes];
  [v6 setCollapsed:{-[AVGlassVolumeSlider isCollapsed](self, "isCollapsed")}];
}

- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AVGlassVolumeSlider *)self scrubsWhenTappedAnywhere])
  {
    return 1;
  }

  [(AVGlassVolumeSlider *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(AVGlassVolumeSlider *)self bounds];
  v16 = v15;
  v18 = v17;
  v27 = x;
  v28 = y;
  v20 = v19;
  v22 = v21;
  [(AVGlassVolumeSlider *)self value];
  LODWORD(v26) = v23;
  [(AVGlassVolumeSlider *)self thumbRectForBounds:v8 trackRect:v10 value:v12, v14, v16, v18, v20, v22, v26];
  v31 = CGRectInset(v30, -16.0, -16.0);
  v24 = v27;
  v25 = v28;

  return CGRectContainsPoint(v31, *&v24);
}

- (void)_endTracking
{
  [(AVGlassVolumeSlider *)self setTracking:0];

  [(AVGlassVolumeSlider *)self setHighlighted:0];
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVGlassVolumeSlider *)self layoutAttributes];
  -[AVGlassVolumeSlider setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  if (a4)
  {
    [(AVGlassVolumeSlider *)self setAnimatingVolumeChange:1];
    objc_initWeak(&location, self);
    v6 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:0.75];
    v7 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v6 timingParameters:0.35];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__AVGlassVolumeSlider_setValue_animated___block_invoke;
    v10[3] = &unk_1E7207C28;
    objc_copyWeak(&v11, &location);
    v12 = a3;
    [v7 addAnimations:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__AVGlassVolumeSlider_setValue_animated___block_invoke_2;
    v9[3] = &unk_1E7208F00;
    v9[4] = self;
    [v7 addCompletion:v9];
    [v7 startAnimation];
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVGlassVolumeSlider;
    [(AVGlassVolumeSlider *)&v8 setValue:*&a3 animated:?];
  }
}

void __41__AVGlassVolumeSlider_setValue_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(v3) = *(a1 + 40);
  [WeakRetained setValue:v3];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 layoutIfNeeded];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVGlassVolumeSlider;
  [(AVGlassVolumeSlider *)&v4 cancelTrackingWithEvent:a3];
  [(AVGlassVolumeSlider *)self _endTracking];
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(AVGlassVolumeSlider *)self bounds];
  [(AVGlassVolumeSlider *)self trackRectForBounds:?];
  Width = CGRectGetWidth(v23);
  [v5 locationInView:self];
  v8 = v7;
  [v5 previousLocationInView:self];
  v10 = v9;
  v11 = [(AVGlassVolumeSlider *)self effectiveUserInterfaceLayoutDirection];
  if (Width > 0.0 && v8 - v10 != 0.0)
  {
    if (v11 == 1)
    {
      v12 = -((v8 - v10) / Width);
    }

    else
    {
      v12 = (v8 - v10) / Width;
    }

    [v5 locationInView:self];
    v14 = v13;
    [(AVGlassVolumeSlider *)self bounds];
    [(AVGlassVolumeSlider *)self trackRectForBounds:?];
    if (v14 >= CGRectGetMinX(v24) || (v15 = 0.0, v12 <= 0.0))
    {
      [v5 locationInView:self];
      v17 = v16;
      [(AVGlassVolumeSlider *)self bounds];
      [(AVGlassVolumeSlider *)self trackRectForBounds:?];
      MaxX = CGRectGetMaxX(v25);
      if (v12 >= 0.0 || v17 <= MaxX)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }
    }

    [(AVGlassVolumeSlider *)self value];
    v21 = fmin(fmax(v20 + v12 * v15, 0.0), 1.0);
    *&v21 = v21;
    [(AVGlassVolumeSlider *)self setValue:0 animated:v21];
    [(AVGlassVolumeSlider *)self sendActionsForControlEvents:4096];
    [(AVGlassVolumeSlider *)self setHighlighted:1];
  }

  return Width > 0.0;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(AVGlassVolumeSlider *)self setHasChangedLocationAtLeastOnce:0];
  [v5 locationInView:self];
  v7 = v6;
  [v5 locationInView:self];
  v9 = v8;
  v11 = v10;

  v12 = [(AVGlassVolumeSlider *)self _shouldTrackTouchAtPoint:v9, v11];
  if (v12 && [(AVGlassVolumeSlider *)self scrubsWhenTappedAnywhere])
  {
    [(AVGlassVolumeSlider *)self bounds];
    [(AVGlassVolumeSlider *)self trackRectForBounds:?];
    v13 = fmin(fmax(v7 / CGRectGetWidth(v15), 0.0), 1.0);
    *&v13 = v13;
    [(AVGlassVolumeSlider *)self setValue:0 animated:v13];
    [(AVGlassVolumeSlider *)self sendActionsForControlEvents:4096];
  }

  return v12;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(AVGlassVolumeSlider *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)hitRect
{
  v15.receiver = self;
  v15.super_class = AVGlassVolumeSlider;
  [(AVGlassVolumeSlider *)&v15 hitRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AVGlassVolumeSlider *)self effectiveUserInterfaceLayoutDirection];
  v11 = v4 + -16.0;
  v12 = v6 + -16.0;
  v13 = v8 + 32.0;
  v14 = v10 + 32.0;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [a3 view];
  LOBYTE(self) = [v4 isDescendantOfView:self];

  return self;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVGlassVolumeSlider;
  [(AVGlassVolumeSlider *)&v3 didMoveToWindow];
  [(AVGlassVolumeSlider *)self setNeedsLayout];
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(AVGlassVolumeSlider *)self isIncluded];
  [(AVGlassVolumeSlider *)self extrinsicContentSize];
  if (!v3)
  {
    v4 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (([(AVGlassVolumeSlider *)self isTracking]& 1) != 0)
  {
    return 1;
  }

  return [(AVGlassVolumeSlider *)self _shouldTrackTouchAtPoint:x, y];
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  if (a3.width != self->_extrinsicContentSize.width || a3.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = a3;
    [(AVGlassVolumeSlider *)self invalidateIntrinsicContentSize];

    [(AVGlassVolumeSlider *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)a3
{
  if (self->_removed != a3)
  {
    self->_removed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVGlassVolumeSlider *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(AVGlassVolumeSlider *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(AVGlassVolumeSlider *)self _updateLayoutItem];
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVGlassVolumeSlider *)self invalidateIntrinsicContentSize];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVGlassVolumeSlider *)self isCollapsed]|| ![(AVGlassVolumeSlider *)self isIncluded])
  {
    return 1;
  }

  return [(AVGlassVolumeSlider *)self isRemoved];
}

- (void)_commonInit
{
  self->_included = 1;
  self->_scrubsWhenTappedAnywhere = 1;
  v3 = objc_alloc_init(AVLayoutItemAttributes);
  layoutAttributes = self->_layoutAttributes;
  self->_layoutAttributes = v3;

  v5 = self->_layoutAttributes;
  [(AVGlassVolumeSlider *)self intrinsicContentSize];
  [(AVLayoutItemAttributes *)v5 setMinimumSize:?];
  [(AVLayoutItemAttributes *)self->_layoutAttributes setCollapsed:[(AVGlassVolumeSlider *)self isCollapsed]];
  [(AVLayoutItemAttributes *)self->_layoutAttributes setIncluded:[(AVGlassVolumeSlider *)self isIncluded]];
  [(AVLayoutItemAttributes *)self->_layoutAttributes setHasFlexibleContentSize:0];
  v6 = self->_layoutAttributes;
  v7 = [(AVGlassVolumeSlider *)self accessibilityIdentifier];
  [(AVLayoutItemAttributes *)v6 setAccessibilityIdentifier:v7];
}

- (AVGlassVolumeSlider)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AVGlassVolumeSlider;
  v3 = [(AVGlassVolumeSlider *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVGlassVolumeSlider *)v3 _commonInit];
  }

  return v4;
}

@end