@interface AVVolumeSlider
- (AVVolumeSlider)initWithFrame:(CGRect)frame;
- (AVVolumeSlider)initWithFrame:(CGRect)frame thumbSize:(double)size;
- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)point;
- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)point;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)alignmentRectInsets;
- (id)createThumbView;
- (void)_commonInit;
- (void)_endTracking;
- (void)_updateLayoutItem;
- (void)cancelTrackingWithEvent:(id)event;
- (void)didMoveToWindow;
- (void)layoutAttributesDidChange;
- (void)layoutSubviews;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setExtrinsicContentSize:(CGSize)size;
- (void)setIncluded:(BOOL)included;
- (void)setRemoved:(BOOL)removed;
- (void)setValue:(float)value animated:(BOOL)animated;
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
  layoutAttributes = [(AVVolumeSlider *)self layoutAttributes];
  [(AVVolumeSlider *)self intrinsicContentSize];
  [layoutAttributes setMinimumSize:?];

  layoutAttributes2 = [(AVVolumeSlider *)self layoutAttributes];
  if ([(AVVolumeSlider *)self isIncluded])
  {
    v5 = [(AVVolumeSlider *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [layoutAttributes2 setIncluded:v5];

  layoutAttributes3 = [(AVVolumeSlider *)self layoutAttributes];
  [layoutAttributes3 setCollapsed:{-[AVVolumeSlider isCollapsed](self, "isCollapsed")}];
}

- (BOOL)_shouldTrackTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(AVVolumeSlider *)self scrubsWhenTappedAnywhere])
  {
    return 1;
  }

  thumbView = [(AVVolumeSlider *)self thumbView];
  [thumbView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  thumbView2 = [(AVVolumeSlider *)self thumbView];
  [(AVVolumeSlider *)self convertRect:thumbView2 fromView:v9, v11, v13, v15];
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
  _edgeFeedbackGenerator = [(AVVolumeSlider *)self _edgeFeedbackGenerator];
  [_edgeFeedbackGenerator userInteractionEnded];

  _modulationFeedbackGenerator = [(AVVolumeSlider *)self _modulationFeedbackGenerator];
  [_modulationFeedbackGenerator deactivate];

  [(AVVolumeSlider *)self setTracking:0];

  [(AVVolumeSlider *)self setHighlighted:0];
}

- (void)layoutAttributesDidChange
{
  layoutAttributes = [(AVVolumeSlider *)self layoutAttributes];
  -[AVVolumeSlider setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  if (animated)
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
    valueCopy = value;
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
    [(AVVolumeSlider *)&v8 setValue:*&value animated:?];
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

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  CGRectGetHeight(bounds);
  UIRoundToViewScale();
  v8 = v7;
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGRectInset(*&v9, 0.0, v8);
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v20 = bounds.size.width;
  rect = bounds.size.height;
  v19 = bounds.origin.y;
  v9 = bounds.origin.x;
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
  createThumbView = [(AVVolumeSlider *)&v7 createThumbView];
  [(AVVolumeSlider *)self setThumbView:createThumbView];

  thumbView = [(AVVolumeSlider *)self thumbView];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [thumbView setBackgroundColor:whiteColor];

  [(AVVolumeSlider *)self thumbView];
  return objc_claimAutoreleasedReturnValue();
}

- (void)cancelTrackingWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = AVVolumeSlider;
  [(AVVolumeSlider *)&v4 cancelTrackingWithEvent:event];
  [(AVVolumeSlider *)self _endTracking];
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  [(AVVolumeSlider *)self bounds];
  [(AVVolumeSlider *)self trackRectForBounds:?];
  Width = CGRectGetWidth(v29);
  [touchCopy locationInView:self];
  v8 = v7;
  [touchCopy previousLocationInView:self];
  v10 = v8 - v9;
  if ([(AVVolumeSlider *)self hasChangedLocationAtLeastOnce])
  {
    effectiveUserInterfaceLayoutDirection = [(AVVolumeSlider *)self effectiveUserInterfaceLayoutDirection];
    v12 = Width > 0.0;
    if (Width > 0.0 && v10 != 0.0)
    {
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v13 = -(v10 / Width);
      }

      else
      {
        v13 = v10 / Width;
      }

      [touchCopy locationInView:self];
      v15 = v14;
      [(AVVolumeSlider *)self bounds];
      [(AVVolumeSlider *)self trackRectForBounds:?];
      if (v15 >= CGRectGetMinX(v30) || (v16 = 0.0, v13 <= 0.0))
      {
        [touchCopy locationInView:self];
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
      _edgeFeedbackGenerator = [(AVVolumeSlider *)self _edgeFeedbackGenerator];
      _edgeFeedbackGenerator2 = [(AVVolumeSlider *)self _edgeFeedbackGenerator];
      [_edgeFeedbackGenerator2 distance];
      [_edgeFeedbackGenerator positionUpdated:v25 * v22];

      _modulationFeedbackGenerator = [(AVVolumeSlider *)self _modulationFeedbackGenerator];
      [_modulationFeedbackGenerator valueUpdated:v22];

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

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  [(AVVolumeSlider *)self setHasChangedLocationAtLeastOnce:0];
  [touchCopy locationInView:self];
  v7 = v6;
  v9 = v8;
  if ([touchCopy _isPointerTouch])
  {
    thumbView = [(AVVolumeSlider *)self thumbView];
    [thumbView frame];
    v16.x = v7;
    v16.y = v9;
    [(AVVolumeSlider *)self setScrubsWhenTappedAnywhere:!CGRectContainsPoint(v17, v16)];
  }

  else
  {
    [(AVVolumeSlider *)self setScrubsWhenTappedAnywhere:0];
  }

  [touchCopy locationInView:self];
  v11 = [(AVVolumeSlider *)self _shouldTrackTouchAtPoint:?];
  if (v11)
  {
    _edgeFeedbackGenerator = [(AVVolumeSlider *)self _edgeFeedbackGenerator];
    [_edgeFeedbackGenerator userInteractionStarted];

    _modulationFeedbackGenerator = [(AVVolumeSlider *)self _modulationFeedbackGenerator];
    [_modulationFeedbackGenerator activateWithCompletionBlock:0];

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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  LOBYTE(self) = [view isDescendantOfView:self];

  return self;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = AVVolumeSlider;
  [(AVVolumeSlider *)&v47 layoutSubviews];
  _minTrackView = [(AVVolumeSlider *)self _minTrackView];
  layer = [_minTrackView layer];
  [layer cornerRadius];
  if (v5 == 0.0)
  {
  }

  else
  {
    thumbView = [(AVVolumeSlider *)self thumbView];
    layer2 = [thumbView layer];
    [layer2 cornerRadius];
    v9 = v8;

    if (v9 != 0.0)
    {
      v10 = *MEMORY[0x1E69796E0];
      thumbView2 = [(AVVolumeSlider *)self thumbView];
      layer3 = [thumbView2 layer];
      [layer3 setCornerCurve:v10];

      thumbView3 = [(AVVolumeSlider *)self thumbView];
      [thumbView3 bounds];
      CGRectGetHeight(v48);
      UIFloorToViewScale();
      v15 = v14;
      thumbView4 = [(AVVolumeSlider *)self thumbView];
      layer4 = [thumbView4 layer];
      [layer4 setCornerRadius:v15];

      goto LABEL_12;
    }
  }

  _minTrackView2 = [(AVVolumeSlider *)self _minTrackView];
  layer5 = [_minTrackView2 layer];
  v20 = *MEMORY[0x1E69796E0];
  [layer5 setCornerCurve:*MEMORY[0x1E69796E0]];

  _minTrackView3 = [(AVVolumeSlider *)self _minTrackView];
  layer6 = [_minTrackView3 layer];
  [layer6 setCornerRadius:2.5];

  _maxTrackView = [(AVVolumeSlider *)self _maxTrackView];
  layer7 = [_maxTrackView layer];
  [layer7 setCornerCurve:v20];

  _maxTrackView2 = [(AVVolumeSlider *)self _maxTrackView];
  layer8 = [_maxTrackView2 layer];
  [layer8 setCornerRadius:2.5];

  effectiveUserInterfaceLayoutDirection = [(AVVolumeSlider *)self effectiveUserInterfaceLayoutDirection];
  _minTrackView4 = [(AVVolumeSlider *)self _minTrackView];
  layer9 = [_minTrackView4 layer];
  v30 = layer9;
  if (effectiveUserInterfaceLayoutDirection)
  {
    v31 = 10;
  }

  else
  {
    v31 = 5;
  }

  if (effectiveUserInterfaceLayoutDirection)
  {
    v32 = 5;
  }

  else
  {
    v32 = 10;
  }

  [layer9 setMaskedCorners:v31];

  _maxTrackView3 = [(AVVolumeSlider *)self _maxTrackView];
  layer10 = [_maxTrackView3 layer];
  [layer10 setMaskedCorners:v32];

  thumbView5 = [(AVVolumeSlider *)self thumbView];
  layer11 = [thumbView5 layer];
  [layer11 setCornerCurve:v20];

  thumbView6 = [(AVVolumeSlider *)self thumbView];
  [thumbView6 bounds];
  CGRectGetHeight(v49);
  UIFloorToViewScale();
  v39 = v38;
  thumbView7 = [(AVVolumeSlider *)self thumbView];
  layer12 = [thumbView7 layer];
  [layer12 setCornerRadius:v39];

  thumbView8 = [(AVVolumeSlider *)self thumbView];
  [AVBackdropView configureSlider:self thumbView:thumbView8 loadedTrackView:0];

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
  thumbView9 = [(AVVolumeSlider *)self thumbView];
  if ([(AVVolumeSlider *)self isEnabled])
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.0;
  }

  [thumbView9 setAlpha:v46];
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
  isIncluded = [(AVVolumeSlider *)self isIncluded];
  [(AVVolumeSlider *)self extrinsicContentSize];
  if (!isIncluded)
  {
    v4 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (([(AVVolumeSlider *)self isTracking]& 1) != 0)
  {
    return 1;
  }

  return [(AVVolumeSlider *)self _shouldTrackTouchAtPoint:x, y];
}

- (void)setExtrinsicContentSize:(CGSize)size
{
  if (size.width != self->_extrinsicContentSize.width || size.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = size;
    [(AVVolumeSlider *)self invalidateIntrinsicContentSize];

    [(AVVolumeSlider *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    self->_removed = removed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVVolumeSlider *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
    [(AVVolumeSlider *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
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
  accessibilityIdentifier = [(AVVolumeSlider *)self accessibilityIdentifier];
  [(AVLayoutItemAttributes *)v6 setAccessibilityIdentifier:accessibilityIdentifier];

  avkit_flatWhiteResizableTemplateImage = [MEMORY[0x1E69DCAB8] avkit_flatWhiteResizableTemplateImage];
  v8 = [(AVVolumeSlider *)self minimumTrackImageForState:0];

  if (v8 != avkit_flatWhiteResizableTemplateImage)
  {
    [(AVVolumeSlider *)self setMinimumTrackImage:avkit_flatWhiteResizableTemplateImage forState:0];
    [(AVVolumeSlider *)self setMaximumTrackImage:avkit_flatWhiteResizableTemplateImage forState:0];
    [(AVVolumeSlider *)self setThumbImage:avkit_flatWhiteResizableTemplateImage forState:0];
    [(AVVolumeSlider *)self setSemanticContentAttribute:0];
  }
}

- (AVVolumeSlider)initWithFrame:(CGRect)frame thumbSize:(double)size
{
  v8.receiver = self;
  v8.super_class = AVVolumeSlider;
  v5 = [(AVVolumeSlider *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_thumbSize = size;
    [(AVVolumeSlider *)v5 _commonInit];
  }

  return v6;
}

- (AVVolumeSlider)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AVVolumeSlider;
  v3 = [(AVVolumeSlider *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_thumbSize = 9.0;
    [(AVVolumeSlider *)v3 _commonInit];
  }

  return v4;
}

@end