@interface AVVolumeSlider
- (AVVolumeSlider)initWithFrame:(CGRect)a3;
- (AVVolumeSlider)initWithFrame:(CGRect)a3 thumbSize:(double)a4;
- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)a3;
- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)a3;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)alignmentRectInsets;
- (id)createThumbView;
- (void)_commonInit;
- (void)_endTracking;
- (void)_updateLayoutItem;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)didMoveToWindow;
- (void)layoutAttributesDidChange;
- (void)layoutSubviews;
- (void)setCollapsed:(BOOL)a3;
- (void)setExtrinsicContentSize:(CGSize)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setRemoved:(BOOL)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
@end

@implementation AVVolumeSlider

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
  v3 = [(AVVolumeSlider *)self layoutAttributes];
  [(AVVolumeSlider *)self intrinsicContentSize];
  [v3 setMinimumSize:?];

  v4 = [(AVVolumeSlider *)self layoutAttributes];
  if ([(AVVolumeSlider *)self isIncluded])
  {
    v5 = [(AVVolumeSlider *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setIncluded:v5];

  v6 = [(AVVolumeSlider *)self layoutAttributes];
  [v6 setCollapsed:{-[AVVolumeSlider isCollapsed](self, "isCollapsed")}];
}

- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AVVolumeSlider *)self scrubsWhenTappedAnywhere])
  {
    return 1;
  }

  v7 = [(AVVolumeSlider *)self thumbView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(AVVolumeSlider *)self thumbView];
  [(AVVolumeSlider *)self convertRect:v16 fromView:v9, v11, v13, v15];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v28.origin.x = v18;
  v28.origin.y = v20;
  v28.size.width = v22;
  v28.size.height = v24;
  v29 = CGRectInset(v28, -16.0, -16.0);
  v25 = x;
  v26 = y;

  return CGRectContainsPoint(v29, *&v25);
}

- (void)_endTracking
{
  v3 = [(AVVolumeSlider *)self _edgeFeedbackGenerator];
  [v3 userInteractionEnded];

  v4 = [(AVVolumeSlider *)self _modulationFeedbackGenerator];
  [v4 deactivate];

  [(AVVolumeSlider *)self setTracking:0];

  [(AVVolumeSlider *)self setHighlighted:0];
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVVolumeSlider *)self layoutAttributes];
  -[AVVolumeSlider setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  if (a4)
  {
    [(AVVolumeSlider *)self setAnimatingVolumeChange:1];
    objc_initWeak(&location, self);
    v6 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:0.75];
    v7 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v6 timingParameters:0.35];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__AVVolumeSlider_setValue_animated___block_invoke;
    v10[3] = &unk_1E7207C28;
    objc_copyWeak(&v11, &location);
    v12 = a3;
    [v7 addAnimations:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__AVVolumeSlider_setValue_animated___block_invoke_2;
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
    v8.super_class = AVVolumeSlider;
    [(AVVolumeSlider *)&v8 setValue:*&a3 animated:?];
  }
}

void __36__AVVolumeSlider_setValue_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(v3) = *(a1 + 40);
  [WeakRetained setValue:v3];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 layoutIfNeeded];
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGRectGetHeight(a3);
  UIRoundToViewScale();
  v8 = v7;
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, 0.0, v8);
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v20 = a3.size.width;
  rect = a3.size.height;
  v19 = a3.origin.y;
  v9 = a3.origin.x;
  if ([(AVVolumeSlider *)self isEnabled])
  {
    [(AVVolumeSlider *)self thumbSize];
  }

  else
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v11 = CGRectGetHeight(v22);
  }

  v12 = v11;
  v13 = v11;
  if ([(AVVolumeSlider *)self isTracking])
  {
    v23.origin.x = v9;
    v23.origin.y = v19;
    v23.size.width = v20;
    v23.size.height = rect;
    v14 = CGRectGetHeight(v23);
    if (v12 >= v14)
    {
      v13 = v14;
    }

    else
    {
      v13 = v12;
    }
  }

  [(AVVolumeSlider *)self effectiveUserInterfaceLayoutDirection];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGRectGetMidY(v26);
  UIPointRoundToViewScale();
  v17 = v13;
  v18 = v13;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)createThumbView
{
  v7.receiver = self;
  v7.super_class = AVVolumeSlider;
  v3 = [(AVVolumeSlider *)&v7 createThumbView];
  [(AVVolumeSlider *)self setThumbView:v3];

  v4 = [(AVVolumeSlider *)self thumbView];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 setBackgroundColor:v5];

  [(AVVolumeSlider *)self thumbView];
  return objc_claimAutoreleasedReturnValue();
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVVolumeSlider;
  [(AVVolumeSlider *)&v4 cancelTrackingWithEvent:a3];
  [(AVVolumeSlider *)self _endTracking];
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(AVVolumeSlider *)self bounds];
  [(AVVolumeSlider *)self trackRectForBounds:?];
  Width = CGRectGetWidth(v29);
  [v5 locationInView:self];
  v8 = v7;
  [v5 previousLocationInView:self];
  v10 = v8 - v9;
  if ([(AVVolumeSlider *)self hasChangedLocationAtLeastOnce])
  {
    v11 = [(AVVolumeSlider *)self effectiveUserInterfaceLayoutDirection];
    v12 = Width > 0.0;
    if (Width > 0.0 && v10 != 0.0)
    {
      if (v11 == 1)
      {
        v13 = -(v10 / Width);
      }

      else
      {
        v13 = v10 / Width;
      }

      [v5 locationInView:self];
      v15 = v14;
      [(AVVolumeSlider *)self bounds];
      [(AVVolumeSlider *)self trackRectForBounds:?];
      if (v15 >= CGRectGetMinX(v30) || (v16 = 0.0, v13 <= 0.0))
      {
        [v5 locationInView:self];
        v18 = v17;
        [(AVVolumeSlider *)self bounds];
        [(AVVolumeSlider *)self trackRectForBounds:?];
        MaxX = CGRectGetMaxX(v31);
        if (v13 >= 0.0 || v18 <= MaxX)
        {
          v16 = 1.0;
        }

        else
        {
          v16 = 0.0;
        }
      }

      [(AVVolumeSlider *)self value];
      v22 = fmin(fmax(v21 + v13 * v16, 0.0), 1.0);
      v23 = [(AVVolumeSlider *)self _edgeFeedbackGenerator];
      v24 = [(AVVolumeSlider *)self _edgeFeedbackGenerator];
      [v24 distance];
      [v23 positionUpdated:v25 * v22];

      v26 = [(AVVolumeSlider *)self _modulationFeedbackGenerator];
      [v26 valueUpdated:v22];

      *&v27 = v22;
      [(AVVolumeSlider *)self setValue:0 animated:v27];
      [(AVVolumeSlider *)self sendActionsForControlEvents:4096];
      v12 = 1;
      [(AVVolumeSlider *)self setHighlighted:1];
    }
  }

  else
  {
    [(AVVolumeSlider *)self setHasChangedLocationAtLeastOnce:v10 != 0.0];
    v12 = 1;
  }

  return v12;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(AVVolumeSlider *)self setHasChangedLocationAtLeastOnce:0];
  [v5 locationInView:self];
  v7 = v6;
  v9 = v8;
  if ([v5 _isPointerTouch])
  {
    v10 = [(AVVolumeSlider *)self thumbView];
    [v10 frame];
    v16.x = v7;
    v16.y = v9;
    [(AVVolumeSlider *)self setScrubsWhenTappedAnywhere:!CGRectContainsPoint(v17, v16)];
  }

  else
  {
    [(AVVolumeSlider *)self setScrubsWhenTappedAnywhere:0];
  }

  [v5 locationInView:self];
  v11 = [(AVVolumeSlider *)self _shouldTrackTouchAtPoint:?];
  if (v11)
  {
    v12 = [(AVVolumeSlider *)self _edgeFeedbackGenerator];
    [v12 userInteractionStarted];

    v13 = [(AVVolumeSlider *)self _modulationFeedbackGenerator];
    [v13 activateWithCompletionBlock:0];

    if ([(AVVolumeSlider *)self scrubsWhenTappedAnywhere])
    {
      [(AVVolumeSlider *)self bounds];
      [(AVVolumeSlider *)self trackRectForBounds:?];
      v14 = fmin(fmax(v7 / CGRectGetWidth(v18), 0.0), 1.0);
      *&v14 = v14;
      [(AVVolumeSlider *)self setValue:0 animated:v14];
      [(AVVolumeSlider *)self sendActionsForControlEvents:4096];
    }
  }

  return v11;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(AVVolumeSlider *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)hitRect
{
  v15.receiver = self;
  v15.super_class = AVVolumeSlider;
  [(AVVolumeSlider *)&v15 hitRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AVVolumeSlider *)self effectiveUserInterfaceLayoutDirection];
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

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = AVVolumeSlider;
  [(AVVolumeSlider *)&v47 layoutSubviews];
  v3 = [(AVVolumeSlider *)self _minTrackView];
  v4 = [v3 layer];
  [v4 cornerRadius];
  if (v5 == 0.0)
  {
  }

  else
  {
    v6 = [(AVVolumeSlider *)self thumbView];
    v7 = [v6 layer];
    [v7 cornerRadius];
    v9 = v8;

    if (v9 != 0.0)
    {
      v10 = *MEMORY[0x1E69796E0];
      v11 = [(AVVolumeSlider *)self thumbView];
      v12 = [v11 layer];
      [v12 setCornerCurve:v10];

      v13 = [(AVVolumeSlider *)self thumbView];
      [v13 bounds];
      CGRectGetHeight(v48);
      UIFloorToViewScale();
      v15 = v14;
      v16 = [(AVVolumeSlider *)self thumbView];
      v17 = [v16 layer];
      [v17 setCornerRadius:v15];

      goto LABEL_12;
    }
  }

  v18 = [(AVVolumeSlider *)self _minTrackView];
  v19 = [v18 layer];
  v20 = *MEMORY[0x1E69796E0];
  [v19 setCornerCurve:*MEMORY[0x1E69796E0]];

  v21 = [(AVVolumeSlider *)self _minTrackView];
  v22 = [v21 layer];
  [v22 setCornerRadius:2.5];

  v23 = [(AVVolumeSlider *)self _maxTrackView];
  v24 = [v23 layer];
  [v24 setCornerCurve:v20];

  v25 = [(AVVolumeSlider *)self _maxTrackView];
  v26 = [v25 layer];
  [v26 setCornerRadius:2.5];

  v27 = [(AVVolumeSlider *)self effectiveUserInterfaceLayoutDirection];
  v28 = [(AVVolumeSlider *)self _minTrackView];
  v29 = [v28 layer];
  v30 = v29;
  if (v27)
  {
    v31 = 10;
  }

  else
  {
    v31 = 5;
  }

  if (v27)
  {
    v32 = 5;
  }

  else
  {
    v32 = 10;
  }

  [v29 setMaskedCorners:v31];

  v33 = [(AVVolumeSlider *)self _maxTrackView];
  v34 = [v33 layer];
  [v34 setMaskedCorners:v32];

  v35 = [(AVVolumeSlider *)self thumbView];
  v36 = [v35 layer];
  [v36 setCornerCurve:v20];

  v37 = [(AVVolumeSlider *)self thumbView];
  [v37 bounds];
  CGRectGetHeight(v49);
  UIFloorToViewScale();
  v39 = v38;
  v40 = [(AVVolumeSlider *)self thumbView];
  v41 = [v40 layer];
  [v41 setCornerRadius:v39];

  v42 = [(AVVolumeSlider *)self thumbView];
  [AVBackdropView configureSlider:self thumbView:v42 loadedTrackView:0];

  [(UIView *)self avkit_makeSubtreeDisallowGroupBlending];
LABEL_12:
  if ([(AVVolumeSlider *)self isEnabled])
  {
    v43 = 1.0;
  }

  else
  {
    v43 = 0.5;
  }

  if ([(AVVolumeSlider *)self isCollapsedOrExcluded])
  {
    v44 = 0.0;
  }

  else
  {
    v44 = v43;
  }

  [(AVVolumeSlider *)self setAlpha:v44];
  v45 = [(AVVolumeSlider *)self thumbView];
  if ([(AVVolumeSlider *)self isEnabled])
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.0;
  }

  [v45 setAlpha:v46];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVVolumeSlider;
  [(AVVolumeSlider *)&v3 didMoveToWindow];
  [(AVVolumeSlider *)self setNeedsLayout];
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
  v3 = [(AVVolumeSlider *)self isIncluded];
  [(AVVolumeSlider *)self extrinsicContentSize];
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
  if (([(AVVolumeSlider *)self isTracking]& 1) != 0)
  {
    return 1;
  }

  return [(AVVolumeSlider *)self _shouldTrackTouchAtPoint:x, y];
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  if (a3.width != self->_extrinsicContentSize.width || a3.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = a3;
    [(AVVolumeSlider *)self invalidateIntrinsicContentSize];

    [(AVVolumeSlider *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)a3
{
  if (self->_removed != a3)
  {
    self->_removed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVVolumeSlider *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(AVVolumeSlider *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(AVVolumeSlider *)self _updateLayoutItem];
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVVolumeSlider *)self invalidateIntrinsicContentSize];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVVolumeSlider *)self isCollapsed]|| ![(AVVolumeSlider *)self isIncluded])
  {
    return 1;
  }

  return [(AVVolumeSlider *)self isRemoved];
}

- (void)_commonInit
{
  self->_included = 1;
  self->_scrubsWhenTappedAnywhere = 0;
  v3 = objc_alloc_init(AVLayoutItemAttributes);
  layoutAttributes = self->_layoutAttributes;
  self->_layoutAttributes = v3;

  v5 = self->_layoutAttributes;
  [(AVVolumeSlider *)self intrinsicContentSize];
  [(AVLayoutItemAttributes *)v5 setMinimumSize:?];
  [(AVLayoutItemAttributes *)self->_layoutAttributes setCollapsed:[(AVVolumeSlider *)self isCollapsed]];
  [(AVLayoutItemAttributes *)self->_layoutAttributes setIncluded:[(AVVolumeSlider *)self isIncluded]];
  [(AVLayoutItemAttributes *)self->_layoutAttributes setHasFlexibleContentSize:0];
  v6 = self->_layoutAttributes;
  v7 = [(AVVolumeSlider *)self accessibilityIdentifier];
  [(AVLayoutItemAttributes *)v6 setAccessibilityIdentifier:v7];

  v9 = [MEMORY[0x1E69DCAB8] avkit_flatWhiteResizableTemplateImage];
  v8 = [(AVVolumeSlider *)self minimumTrackImageForState:0];

  if (v8 != v9)
  {
    [(AVVolumeSlider *)self setMinimumTrackImage:v9 forState:0];
    [(AVVolumeSlider *)self setMaximumTrackImage:v9 forState:0];
    [(AVVolumeSlider *)self setThumbImage:v9 forState:0];
    [(AVVolumeSlider *)self setSemanticContentAttribute:0];
  }
}

- (AVVolumeSlider)initWithFrame:(CGRect)a3 thumbSize:(double)a4
{
  v8.receiver = self;
  v8.super_class = AVVolumeSlider;
  v5 = [(AVVolumeSlider *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_thumbSize = a4;
    [(AVVolumeSlider *)v5 _commonInit];
  }

  return v6;
}

- (AVVolumeSlider)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AVVolumeSlider;
  v3 = [(AVVolumeSlider *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_thumbSize = 9.0;
    [(AVVolumeSlider *)v3 _commonInit];
  }

  return v4;
}

@end