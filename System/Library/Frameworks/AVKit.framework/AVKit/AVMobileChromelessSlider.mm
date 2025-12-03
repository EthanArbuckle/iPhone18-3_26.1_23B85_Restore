@interface AVMobileChromelessSlider
- (AVMobileChromelessSlider)init;
- (AVMobileChromelessSliderDelegate)delegate;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)frameForSliderMark:(id)mark;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_frameForSliderMark:(void *)mark;
- (void)_updateAccessibilityValue;
- (void)_updateBarTintStateAlpha;
- (void)_updateBarViewFrames;
- (void)_updateSliderBarMaterials;
- (void)_updateSliderMarkViewColors;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)cancelTrackingWithEvent:(id)event;
- (void)didMoveToWindow;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setBarHeight:(double)height;
- (void)setEnabled:(BOOL)enabled;
- (void)setMaximumValue:(float)value;
- (void)setMinimumValue:(float)value;
- (void)setSliderMarks:(id)marks;
- (void)setTintState:(unint64_t)state;
- (void)setTotalValue:(float)value;
- (void)setValue:(float)maximumValue;
@end

@implementation AVMobileChromelessSlider

- (AVMobileChromelessSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAccessibilityValue
{
  *&v2 = (self->_value - self->_minimumValue) / (self->_maximumValue - self->_minimumValue);
  v4 = MEMORY[0x1E696ADA0];
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:3];

  [(AVMobileChromelessSlider *)self setAccessibilityValue:v6];
}

- (void)accessibilityDecrement
{
  [(AVMobileChromelessSlider *)self value];
  v4 = v3;
  v5 = self->_maximumValue - self->_minimumValue;
  [(AVMobileChromelessSlider *)self value];
  v7 = v6 + v5 * -0.05;
  if (v4 != v7)
  {
    [(AVMobileChromelessSlider *)self setValue:?];

    [(AVMobileChromelessSlider *)self sendActionsForControlEvents:4096];
  }
}

- (void)accessibilityIncrement
{
  [(AVMobileChromelessSlider *)self value];
  v4 = v3;
  v5 = self->_maximumValue - self->_minimumValue;
  [(AVMobileChromelessSlider *)self value];
  v7 = v6 + v5 * 0.05;
  if (v4 != v7)
  {
    [(AVMobileChromelessSlider *)self setValue:?];

    [(AVMobileChromelessSlider *)self sendActionsForControlEvents:4096];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(AVMobileChromelessSlider *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessSlider;
    [(AVMobileChromelessSlider *)&v5 setEnabled:enabledCopy];
    [(AVMobileChromelessSlider *)&self->super.super.super.super.isa _updateSliderBarMaterials];
  }
}

- (void)_updateSliderBarMaterials
{
  if (self)
  {
    v6 = self[64];
    v2 = self[65];
    if ([self isEnabled])
    {
      v3 = self[62];

      v4 = self[63];
      v5 = v3;
      v2 = v4;
    }

    else
    {
      v5 = v6;
    }

    v7 = v5;
    [self[58] setEffect:v5];
    [self[59] setEffect:v2];
  }
}

- (void)cancelTrackingWithEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = AVMobileChromelessSlider;
  [(AVMobileChromelessSlider *)&v7 cancelTrackingWithEvent:event];
  delegate = [(AVMobileChromelessSlider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVMobileChromelessSlider *)self delegate];
    [delegate2 sliderDidEndTracking:self];
  }

  if (self)
  {
    [(UIPointerInteraction *)self->_sliderPointerInteraction invalidate];
  }
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [touchCopy locationInView:self];
  v9 = v8;
  [(AVMobileChromelessSlider *)self bounds];
  v11 = v9 / fmax(v10, 1.0);
  v12 = v11 - self->_trackingTouchStartNormalizedX;
  effectiveUserInterfaceLayoutDirection = [(AVMobileChromelessSlider *)self effectiveUserInterfaceLayoutDirection];
  *&v14 = -v12;
  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    *&v14 = v12;
  }

  *&v14 = self->_minimumValue + ((self->_trackingStartNormalizedValue + *&v14) * (self->_maximumValue - self->_minimumValue));
  [(AVMobileChromelessSlider *)self setValue:v14];
  [(AVMobileChromelessSlider *)self sendActionsForControlEvents:4096];
  delegate = [(AVMobileChromelessSlider *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(AVMobileChromelessSlider *)self delegate];
    [delegate2 sliderWillEndTracking:self];
  }

  [(UIPointerInteraction *)self->_sliderPointerInteraction invalidate];
  v18.receiver = self;
  v18.super_class = AVMobileChromelessSlider;
  [(AVMobileChromelessSlider *)&v18 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [touchCopy locationInView:self];
  v9 = v8;
  [(AVMobileChromelessSlider *)self bounds];
  v11 = v9 / fmax(v10, 1.0);
  v12 = v11 - self->_trackingTouchStartNormalizedX;
  effectiveUserInterfaceLayoutDirection = [(AVMobileChromelessSlider *)self effectiveUserInterfaceLayoutDirection];
  *&v14 = -v12;
  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    *&v14 = v12;
  }

  *&v14 = self->_minimumValue + ((self->_trackingStartNormalizedValue + *&v14) * (self->_maximumValue - self->_minimumValue));
  [(AVMobileChromelessSlider *)self setValue:v14];
  [(AVMobileChromelessSlider *)self sendActionsForControlEvents:4096];
  v17.receiver = self;
  v17.super_class = AVMobileChromelessSlider;
  v15 = [(AVMobileChromelessSlider *)&v17 continueTrackingWithTouch:touchCopy withEvent:eventCopy];

  return v15;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  [(AVMobileChromelessSlider *)self bounds];
  v7 = fmax(v6, 1.0);
  [touchCopy locationInView:self];
  v9 = v8;

  v10 = v9 / v7;
  self->_trackingTouchStartNormalizedX = v10;
  self->_trackingStartNormalizedValue = (self->_value - self->_minimumValue) / (self->_maximumValue - self->_minimumValue);
  delegate = [(AVMobileChromelessSlider *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(AVMobileChromelessSlider *)self delegate];
    [delegate2 sliderDidBeginTracking:self];
  }

  [(UIPointerInteraction *)self->_sliderPointerInteraction invalidate];
  return 1;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [(UIView *)self->_contentView frame:interaction];
  v5 = MEMORY[0x1E69DCDC0];

  return [v5 regionWithRect:0 identifier:?];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = MEMORY[0x1E69DD070];
  interactionCopy = interaction;
  v6 = [v4 alloc];
  view = [interactionCopy view];

  v8 = [v6 initWithView:view];
  v9 = [MEMORY[0x1E69DCDA8] effectWithPreview:v8];
  v10 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:0];

  return v10;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(AVMobileChromelessSlider *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = AVMobileChromelessSlider;
  [(AVMobileChromelessSlider *)&v25 layoutSubviews];
  effectiveUserInterfaceLayoutDirection = [(AVMobileChromelessSlider *)self effectiveUserInterfaceLayoutDirection];
  contentView = self->_contentView;
  [(AVMobileChromelessSlider *)self bounds];
  [(UIView *)contentView avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:?];
  [(AVMobileChromelessSlider *)self _updateBarViewFrames];
  layer = [(UIView *)self->_contentView layer];
  [layer setCornerRadius:self->_barHeight * 0.5];

  if ([(NSArray *)self->_sliderMarks count])
  {
    v6 = [(NSArray *)self->_sliderMarks count];
    if (v6 != [(NSMutableArray *)self->_sliderMarkViews count])
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: Slider mark count does not match slider mark view count", buf, 2u);
      }
    }

    v8 = [(NSArray *)self->_sliderMarks count];
    v9 = [(NSMutableArray *)self->_sliderMarkViews count];
    if (v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v10 >= 1)
    {
      for (i = 0; i != v10; ++i)
      {
        v12 = [(NSArray *)self->_sliderMarks objectAtIndex:i];
        v13 = [(NSMutableArray *)self->_sliderMarkViews objectAtIndex:i];
        [(AVMobileChromelessSlider *)self _frameForSliderMark:v12];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [v13 setFrame:?];
        delegate = [(AVMobileChromelessSlider *)self delegate];
        v23 = objc_opt_respondsToSelector();

        if (v23)
        {
          delegate2 = [(AVMobileChromelessSlider *)self delegate];
          [delegate2 slider:self didUpdateFrame:v12 forSliderMark:{v15, v17, v19, v21}];
        }
      }
    }
  }
}

- (void)_updateBarViewFrames
{
  if (result)
  {
    v1 = result;
    [result bounds];
    v3 = v2 * ((*(v1 + 137) - *(v1 + 134)) / (*(v1 + 135) - *(v1 + 134)));
    v4 = v2 - v3;
    v5 = *(v1 + 69);
    v7 = (v6 - v5) * 0.5;
    v8 = 5.0 - v3;
    if (5.0 - v3 < 0.0)
    {
      v8 = 0.0;
    }

    v9 = 5.0 - v4;
    if (5.0 - v4 < 0.0)
    {
      v9 = 0.0;
    }

    v10 = -v8;
    v11 = v3 + v8;
    v12 = v4 + v9;
    effectiveUserInterfaceLayoutDirection = [v1 effectiveUserInterfaceLayoutDirection];
    [*(v1 + 58) avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{v10, v7, v11, v5}];
    v14 = *(v1 + 59);

    return [v14 avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{v3, v7, v12, v5}];
  }

  return result;
}

- (void)_frameForSliderMark:(void *)mark
{
  if (mark)
  {
    v3 = a2;
    [mark bounds];
    v4 = v3;
    [mark bounds];
    markType = [v4 markType];
    if (markType == 2 || !markType)
    {
      [v4 endValue];
      [v4 startValue];
    }

    [v4 startValue];
    [v4 markType];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  barHeight = self->_barHeight;
  result.height = barHeight;
  result.width = v2;
  return result;
}

- (CGRect)hitRect
{
  v10.receiver = self;
  v10.super_class = AVMobileChromelessSlider;
  [(AVMobileChromelessSlider *)&v10 hitRect];
  v3 = v2 + -20.0;
  v5 = v4 + -20.0;
  v7 = v6 + 40.0;
  v9 = v8 + 40.0;
  result.size.height = v9;
  result.size.width = v7;
  result.origin.y = v5;
  result.origin.x = v3;
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  LOBYTE(self) = [view isDescendantOfView:self];

  return self;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVMobileChromelessSlider;
  [(AVMobileChromelessSlider *)&v3 didMoveToWindow];
  [(AVMobileChromelessSlider *)self _updateBarTintStateAlpha];
  [(AVMobileChromelessSlider *)&self->super.super.super.super.isa _updateSliderBarMaterials];
  [(AVMobileChromelessSlider *)self _updateSliderMarkViewColors];
}

- (void)_updateSliderMarkViewColors
{
  if (self)
  {
    v2 = [*(self + 560) count];
    if (v2 != [*(self + 488) count])
    {
      v3 = _AVLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Error: Slider mark count does not match slider mark view count", v17, 2u);
      }
    }

    v4 = [*(self + 560) count];
    v5 = [*(self + 488) count];
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = [*(self + 560) objectAtIndex:i];
        v9 = [*(self + 488) objectAtIndex:i];
        unfilledColor = [v8 unfilledColor];
        v11 = *(self + 548);
        [v8 startValue];
        if (v11 >= v12)
        {
          filledColor = [v8 filledColor];

          unfilledColor = filledColor;
        }

        v14 = unfilledColor;
        objc_opt_self();
        objc_opt_self();
        v18 = 0.0;
        [v14 getRed:0 green:0 blue:0 alpha:&v18];
        v15 = [v14 colorWithAlphaComponent:v18];

        backgroundColor = [v9 backgroundColor];

        if (backgroundColor != v15)
        {
          [v9 setMarkColor:v15];
        }
      }
    }
  }
}

- (CGRect)frameForSliderMark:(id)mark
{
  [(AVMobileChromelessSlider *)self _frameForSliderMark:mark];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setValue:(float)maximumValue
{
  if (maximumValue >= self->_maximumValue)
  {
    maximumValue = self->_maximumValue;
  }

  if (self->_minimumValue >= maximumValue)
  {
    maximumValue = self->_minimumValue;
  }

  if (self->_value != maximumValue)
  {
    self->_value = maximumValue;
    [(AVMobileChromelessSlider *)self _updateBarViewFrames];
    [(AVMobileChromelessSlider *)self _updateSliderMarkViewColors];

    [(AVMobileChromelessSlider *)self _updateAccessibilityValue];
  }
}

- (void)_updateBarTintStateAlpha
{
  v9 = *MEMORY[0x1E69E9840];
  tintState = [(AVMobileChromelessSlider *)self tintState];
  objc_opt_self();
  if (tintState >= 3)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = tintState;
      _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Error: Unrecognized slider tint state %ld", &v7, 0xCu);
    }

    v4 = 1.0;
  }

  else
  {
    v4 = dbl_18B6EC600[tintState];
  }

  [(UIVisualEffectView *)self->_filledBarView setAlpha:v4];
  unfilledBarView = self->_unfilledBarView;

  [(UIVisualEffectView *)unfilledBarView setAlpha:v4];
}

- (void)setTotalValue:(float)value
{
  if (vabds_f32(self->_totalValue, value) >= 0.00000011921)
  {
    self->_totalValue = value;
    [(AVMobileChromelessSlider *)self setNeedsLayout];
  }
}

- (void)setTintState:(unint64_t)state
{
  if (self->_tintState != state)
  {
    self->_tintState = state;
    [(AVMobileChromelessSlider *)self _updateBarTintStateAlpha];
  }
}

- (void)setSliderMarks:(id)marks
{
  marksCopy = marks;
  if (self->_sliderMarks != marksCopy)
  {
    v24 = marksCopy;
    objc_storeStrong(&self->_sliderMarks, marks);
    v6 = [(NSMutableArray *)self->_sliderMarkViews count];
    if (v6 != [(NSArray *)self->_sliderMarks count])
    {
      v7 = *MEMORY[0x1E69796E8];
      do
      {
        v8 = [(NSMutableArray *)self->_sliderMarkViews count];
        v9 = [(NSArray *)self->_sliderMarks count];
        sliderMarkViews = self->_sliderMarkViews;
        if (v8 <= v9)
        {
          v12 = [(NSMutableArray *)sliderMarkViews count];
          if (v12 >= [(NSArray *)self->_sliderMarks count])
          {
            break;
          }

          lastObject = objc_alloc_init(AVMobileSliderMarkView);
          v13 = [(NSArray *)self->_sliderMarks objectAtIndex:[(NSMutableArray *)self->_sliderMarkViews count]];
          markType = [v13 markType];

          v15 = self->_barHeight + -1.0;
          if (v15 < 1.0)
          {
            v15 = 1.0;
          }

          v16 = v15 * 0.5;
          if (markType == 1)
          {
            v17 = 1.75;
          }

          else
          {
            v17 = v16;
          }

          [(AVMobileSliderMarkView *)lastObject setAutoresizingMask:0];
          [(AVMobileSliderMarkView *)lastObject setUserInteractionEnabled:0];
          layer = [(AVMobileSliderMarkView *)lastObject layer];
          [layer setMasksToBounds:1];

          layer2 = [(AVMobileSliderMarkView *)lastObject layer];
          [layer2 setCornerRadius:v17];

          layer3 = [(AVMobileSliderMarkView *)lastObject layer];
          [layer3 setCornerCurve:v7];

          v21 = [(NSArray *)self->_sliderMarks objectAtIndexedSubscript:[(NSMutableArray *)self->_sliderMarkViews count]];
          markType2 = [v21 markType];

          if (markType2 == 2)
          {
            [(UIView *)self->_contentView insertSubview:lastObject belowSubview:self->_filledBarView];
          }

          else
          {
            [(AVMobileChromelessSlider *)self addSubview:lastObject];
          }

          [(NSMutableArray *)self->_sliderMarkViews addObject:lastObject];
        }

        else
        {
          lastObject = [(NSMutableArray *)sliderMarkViews lastObject];
          [(AVMobileSliderMarkView *)lastObject removeFromSuperview];
          [(NSMutableArray *)self->_sliderMarkViews removeLastObject];
        }

        v23 = [(NSMutableArray *)self->_sliderMarkViews count];
      }

      while (v23 != [(NSArray *)self->_sliderMarks count]);
    }

    [(AVMobileChromelessSlider *)self _updateSliderMarkViewColors];
    [(AVMobileChromelessSlider *)self setNeedsLayout];
    marksCopy = v24;
  }
}

- (void)setMaximumValue:(float)value
{
  if (self->_maximumValue != value && self->_minimumValue < value)
  {
    self->_maximumValue = value;
    if (self->_value > value)
    {
      [(AVMobileChromelessSlider *)self setValue:?];
    }
  }
}

- (void)setMinimumValue:(float)value
{
  if (self->_minimumValue != value && self->_maximumValue > value)
  {
    self->_minimumValue = value;
    if (self->_value > value)
    {
      [(AVMobileChromelessSlider *)self setValue:?];
    }
  }
}

- (void)setBarHeight:(double)height
{
  if (self->_barHeight != height)
  {
    self->_barHeight = height;
    [(AVMobileChromelessSlider *)self invalidateIntrinsicContentSize];
    superview = [(AVMobileChromelessSlider *)self superview];
    [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

    [(AVMobileChromelessSlider *)self setNeedsLayout];
    sliderPointerInteraction = self->_sliderPointerInteraction;

    [(UIPointerInteraction *)sliderPointerInteraction invalidate];
  }
}

- (AVMobileChromelessSlider)init
{
  v23.receiver = self;
  v23.super_class = AVMobileChromelessSlider;
  v2 = [(AVMobileChromelessSlider *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:14];
    enabledFilledBarViewEffect = v2->_enabledFilledBarViewEffect;
    v2->_enabledFilledBarViewEffect = v3;

    v5 = [MEMORY[0x1E69DC730] effectWithStyle:11];
    enabledUnfilledBarViewEffect = v2->_enabledUnfilledBarViewEffect;
    v2->_enabledUnfilledBarViewEffect = v5;

    v7 = [MEMORY[0x1E69DC730] effectWithStyle:11];
    disabledFilledBarViewEffect = v2->_disabledFilledBarViewEffect;
    v2->_disabledFilledBarViewEffect = v7;

    v9 = [MEMORY[0x1E69DC730] effectWithStyle:16];
    disabledUnfilledBarViewEffect = v2->_disabledUnfilledBarViewEffect;
    v2->_disabledUnfilledBarViewEffect = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v2->_contentView;
    v2->_contentView = v11;

    [(UIView *)v2->_contentView setAutoresizingMask:0];
    [(UIView *)v2->_contentView setUserInteractionEnabled:0];
    [(UIView *)v2->_contentView setClipsToBounds:1];
    [(AVMobileChromelessSlider *)v2 addSubview:v2->_contentView];
    v13 = objc_alloc_init(MEMORY[0x1E69DD298]);
    filledBarView = v2->_filledBarView;
    v2->_filledBarView = v13;

    [(UIVisualEffectView *)v2->_filledBarView setAutoresizingMask:0];
    [(UIVisualEffectView *)v2->_filledBarView setUserInteractionEnabled:0];
    [(UIView *)v2->_contentView addSubview:v2->_filledBarView];
    v15 = objc_alloc_init(MEMORY[0x1E69DD298]);
    unfilledBarView = v2->_unfilledBarView;
    v2->_unfilledBarView = v15;

    [(UIVisualEffectView *)v2->_unfilledBarView setAutoresizingMask:0];
    [(UIVisualEffectView *)v2->_unfilledBarView setUserInteractionEnabled:0];
    [(UIView *)v2->_contentView insertSubview:v2->_unfilledBarView belowSubview:v2->_filledBarView];
    v17 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v2];
    sliderPointerInteraction = v2->_sliderPointerInteraction;
    v2->_sliderPointerInteraction = v17;

    [(AVMobileChromelessSlider *)v2 addInteraction:v2->_sliderPointerInteraction];
    v2->_barHeight = 10.0;
    v2->_value = 0.0;
    v2->_minimumValue = 0.0;
    v2->_maximumValue = 1.0;
    v2->_totalValue = 1.0;
    sliderMarks = v2->_sliderMarks;
    v2->_sliderMarks = MEMORY[0x1E695E0F0];

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sliderMarkViews = v2->_sliderMarkViews;
    v2->_sliderMarkViews = v20;

    v2->_tintState = 1;
    [(AVMobileChromelessSlider *)v2 setIsAccessibilityElement:1];
    [(AVMobileChromelessSlider *)v2 setAccessibilityTraits:*MEMORY[0x1E69DD9A8]];
    [(AVMobileChromelessSlider *)v2 _updateAccessibilityValue];
  }

  return v2;
}

@end