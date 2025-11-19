@interface AVMobileChromelessFluidSlider
- (AVContentIntersectingDelegate)contentIntersectingDelegate;
- (AVMobileChromelessFluidSlider)init;
- (AVMobileChromelessFluidSliderDelegate)delegate;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)contentIntersection;
- (CGRect)frameForSliderMark:(id)a3;
- (CGRect)hitRect;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (NSDirectionalEdgeInsets)directionalHitRectInsets;
- (double)_frameForSliderMark:(uint64_t)a1;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (uint64_t)_updateSliderStyle;
- (void)_notifyDelegateAboutSpeedRateChangeToRate:(void *)a1;
- (void)_setUpSliderConfigurationIfNeeded;
- (void)_sliderFluidInteractionDidEnd:(id)a3;
- (void)_sliderFluidInteractionWillBegin:(id)a3 withLocation:(CGPoint)a4;
- (void)_sliderFluidInteractionWillContinue:(id)a3 withLocation:(CGPoint)a4;
- (void)_sliderFluidInteractionWillEnd:(id)a3;
- (void)_sliderFluidInteractionWillRubberband:(id)a3 insets:(UIEdgeInsets)a4;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_updateBarTintStateAlpha;
- (void)_updateBarVisualEffectsIfNeeded;
- (void)_updateSliderBarMaterials;
- (void)_updateSliderMarkViewColors;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBarHeight:(double)a3;
- (void)setBarWidth:(double)a3;
- (void)setContentIntersection:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFilledBarVisualEffect:(id)a3;
- (void)setFineScrubbingStyle:(unint64_t)a3;
- (void)setMaximumValueView:(id)a3;
- (void)setPrefersSliderTrackHidden:(BOOL)a3;
- (void)setSliderMarks:(id)a3;
- (void)setSnappingValues:(id)a3;
- (void)setStretchLimit:(double)a3;
- (void)setTintState:(unint64_t)a3;
- (void)setTotalValue:(float)a3;
- (void)setUnfilledBarVisualEffect:(id)a3;
- (void)setUsesVolumeStyle:(BOOL)a3;
- (void)setVariableSpeedScrubbingOffsetMultiplier:(double)a3;
- (void)updateForContentIntersection;
@end

@implementation AVMobileChromelessFluidSlider

- (NSDirectionalEdgeInsets)directionalHitRectInsets
{
  top = self->_directionalHitRectInsets.top;
  leading = self->_directionalHitRectInsets.leading;
  bottom = self->_directionalHitRectInsets.bottom;
  trailing = self->_directionalHitRectInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (AVMobileChromelessFluidSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)contentIntersection
{
  x = self->_contentIntersection.origin.x;
  y = self->_contentIntersection.origin.y;
  width = self->_contentIntersection.size.width;
  height = self->_contentIntersection.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AVContentIntersectingDelegate)contentIntersectingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentIntersectingDelegate);

  return WeakRetained;
}

- (void)updateForContentIntersection
{
  if (self)
  {
    [(AVMobileChromelessFluidSlider *)self bounds];
    v5 = (COERCE__INT64(fabs(v3 * v4)) - 0x10000000000000) >> 53;
    v6 = COERCE__INT64(v3 * v4) < 0 || v5 > 0x3FE;
    v7 = v6 && (COERCE__INT64(v3 * v4) - 1) > 0xFFFFFFFFFFFFELL;
    v8 = !v7 && self->_contentIntersection.size.height * self->_contentIntersection.size.width / (v3 * v4) > 0.8;
    if (self->_isOverVideo != v8)
    {
      self->_isOverVideo = v8;
      v9 = [(AVMobileChromelessFluidSlider *)self contentIntersectingDelegate];
      if (v9)
      {
        v10 = v9;
        [v9 viewIsOverVideoDidChange:self];
        v9 = v10;
      }
    }
  }
}

- (void)setContentIntersection:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentIntersection = &self->_contentIntersection;
  if (!CGRectEqualToRect(a3, self->_contentIntersection))
  {
    p_contentIntersection->origin.x = x;
    p_contentIntersection->origin.y = y;
    p_contentIntersection->size.width = width;
    p_contentIntersection->size.height = height;

    [(AVMobileChromelessFluidSlider *)self updateForContentIntersection];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVMobileChromelessFluidSlider *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessFluidSlider;
    [(AVMobileChromelessFluidSlider *)&v5 setEnabled:v3];
    [(AVMobileChromelessFluidSlider *)&self->super.super.super.super.super.isa _updateSliderBarMaterials];
  }
}

- (void)_updateSliderBarMaterials
{
  if (a1)
  {
    v5 = a1[67];
    v2 = a1[68];
    if ([a1 isEnabled])
    {
      v3 = a1[77];

      v4 = a1[83];
      v5 = v3;
      v2 = v4;
    }

    [a1[71] setMaximumTrackEffect:v2];
    [a1[71] setMinimumTrackEffect:v5];
    [a1 _setSliderConfiguration:a1[71]];
  }
}

- (void)_sliderFluidInteractionWillRubberband:(id)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = [(AVMobileChromelessFluidSlider *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(AVMobileChromelessFluidSlider *)self delegate];
    [v11 slider:self didExtendWithInsets:{top, left, bottom, right}];
  }
}

- (void)_sliderFluidInteractionDidEnd:(id)a3
{
  v4 = [(AVMobileChromelessFluidSlider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVMobileChromelessFluidSlider *)self delegate];
    [v6 sliderDidEndTracking:self];
  }

  [(AVMobileChromelessFluidSlider *)self _sliderSpeedMultiplier];
  if (*&v7 != 1.0)
  {
    LODWORD(v7) = 1.0;
    [(AVMobileChromelessFluidSlider *)self _setSliderSpeedMultiplier:v7];

    [(AVMobileChromelessFluidSlider *)self _notifyDelegateAboutSpeedRateChangeToRate:?];
  }
}

- (void)_notifyDelegateAboutSpeedRateChangeToRate:(void *)a1
{
  if (a1)
  {
    v4 = [a1 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [a1 delegate];
      [v6 slider:a1 didChangeScrubbingRate:a2];
    }
  }
}

- (void)_sliderFluidInteractionWillEnd:(id)a3
{
  v4 = [(AVMobileChromelessFluidSlider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVMobileChromelessFluidSlider *)self delegate];
    [v6 sliderWillEndTracking:self];
  }

  if (self)
  {
    sliderPointerInteraction = self->_sliderPointerInteraction;

    [(UIPointerInteraction *)sliderPointerInteraction invalidate];
  }
}

- (void)_sliderFluidInteractionWillContinue:(id)a3 withLocation:(CGPoint)a4
{
  y = a4.y;
  if ([(AVMobileChromelessFluidSlider *)self fineScrubbingStyle:a3])
  {
    [(AVMobileChromelessFluidSlider *)self center];
    v7 = y - v6;
    v8 = [(AVMobileChromelessFluidSlider *)self fineScrubbingStyle];
    v9 = [(AVMobileChromelessFluidSlider *)self fineScrubbingStyle];
    if (((v8 & 2) != 0 || v7 <= 0.0) && ((v9 & 1) != 0 || v7 >= 0.0))
    {
      v10 = fabs(v7);
      variableSpeedScrubbingOffsetMultiplier = self->_variableSpeedScrubbingOffsetMultiplier;
      v12 = variableSpeedScrubbingOffsetMultiplier * 196.0;
      v13 = vabds_f32(v10, v12);
      if (v10 <= v12 || v13 < 0.00000011921)
      {
        v15 = variableSpeedScrubbingOffsetMultiplier * 140.0;
        v16 = vabds_f32(v10, v15);
        if (v10 <= v15 || v16 < 0.00000011921)
        {
          v18 = variableSpeedScrubbingOffsetMultiplier * 84.0;
          v19 = v10 > v18;
          v20 = vabds_f32(v10, v18) >= 0.00000011921;
          v21 = v19 && v20 ? 0.5 : 1.0;
          v22 = v19 && v20 ? 2 : 0;
        }

        else
        {
          v21 = 0.25;
          v22 = 1;
        }
      }

      else
      {
        v21 = 0.125;
        v22 = 3;
      }

      [(AVMobileChromelessFluidSlider *)self _sliderSpeedMultiplier];
      if (*&v23 != v21)
      {
        *&v23 = v21;
        [(AVMobileChromelessFluidSlider *)self _setSliderSpeedMultiplier:v23];
        [(UISelectionFeedbackGenerator *)self->_speedChangeFeedbackGenerator selectionChanged];

        [(AVMobileChromelessFluidSlider *)self _notifyDelegateAboutSpeedRateChangeToRate:v22];
      }
    }
  }
}

- (void)_sliderFluidInteractionWillBegin:(id)a3 withLocation:(CGPoint)a4
{
  v5 = [(AVMobileChromelessFluidSlider *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVMobileChromelessFluidSlider *)self delegate];
    [v7 sliderDidBeginTracking:self];
  }

  if (self)
  {
    [(UIPointerInteraction *)self->_sliderPointerInteraction invalidate];
  }

  v8 = [(AVMobileChromelessFluidSlider *)self fineScrubbingStyle];
  speedChangeFeedbackGenerator = self->_speedChangeFeedbackGenerator;
  if (speedChangeFeedbackGenerator)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {

    [(UISelectionFeedbackGenerator *)speedChangeFeedbackGenerator prepare];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  [(AVView *)self->_contentView frame:a3];
  v5 = MEMORY[0x1E69DCDC0];

  return [v5 regionWithRect:0 identifier:?];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = MEMORY[0x1E69DD070];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 view];

  v8 = [v6 initWithView:v7];
  v9 = [MEMORY[0x1E69DCDA8] effectWithPreview:v8];
  [v9 setPreferredTintMode:0];
  v10 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:0];

  return v10;
}

- (void)_traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileChromelessFluidSlider *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(AVMobileChromelessFluidSlider *)self _updateBarVisualEffectsIfNeeded];

    [(AVMobileChromelessFluidSlider *)&self->super.super.super.super.super.isa _updateSliderBarMaterials];
  }
}

- (void)_updateBarVisualEffectsIfNeeded
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 traitCollection];
    v3 = [v2 userInterfaceStyle];

    if (v3 == 1)
    {
      if ((*(a1 + 577) & 1) == 0)
      {
        v4 = MEMORY[0x1E69DD290];
        v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v6 = [v4 effectCompositingColor:v5];
        v21[0] = v6;
        v7 = [MEMORY[0x1E69DC730] effectWithStyle:13];
        v21[1] = v7;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
        v9 = [v4 effectCombiningEffects:v8];
        v10 = *(a1 + 616);
        *(a1 + 616) = v9;
      }

      if ((*(a1 + 578) & 1) == 0)
      {
        v11 = MEMORY[0x1E69DD290];
        v12 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
        v13 = [v11 effectCompositingColor:v12];
        v20[0] = v13;
        v14 = [MEMORY[0x1E69DC730] effectWithStyle:13];
        v20[1] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
        v16 = [v11 effectCombiningEffects:v15];
        v17 = *(a1 + 664);
        *(a1 + 664) = v16;
      }
    }

    else
    {
      if ((*(a1 + 577) & 1) == 0)
      {
        v18 = [MEMORY[0x1E69DC730] effectWithStyle:14];
        v19 = *(a1 + 616);
        *(a1 + 616) = v18;
      }

      if ((*(a1 + 578) & 1) == 0)
      {
        *(a1 + 664) = [MEMORY[0x1E69DC730] effectWithStyle:11];

        MEMORY[0x1EEE66BB8]();
      }
    }
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(AVMobileChromelessFluidSlider *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = AVMobileChromelessFluidSlider;
  [(AVMobileChromelessFluidSlider *)&v23 layoutSubviews];
  v3 = [(AVMobileChromelessFluidSlider *)self effectiveUserInterfaceLayoutDirection];
  contentView = self->_contentView;
  [(AVMobileChromelessFluidSlider *)self bounds];
  [(UIView *)contentView avkit_setFrame:v3 inLayoutDirection:?];
  if ([(NSArray *)self->_sliderMarks count])
  {
    v5 = [(NSArray *)self->_sliderMarks count];
    if (v5 != [(NSMutableArray *)self->_sliderMarkViews count])
    {
      v6 = _AVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Error: Slider mark count does not match slider mark view count", buf, 2u);
      }
    }

    v7 = [(NSArray *)self->_sliderMarks count];
    v8 = [(NSMutableArray *)self->_sliderMarkViews count];
    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [(NSArray *)self->_sliderMarks objectAtIndex:i];
        v12 = [(NSMutableArray *)self->_sliderMarkViews objectAtIndex:i];
        v13 = [(AVMobileChromelessFluidSlider *)self _frameForSliderMark:v11];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [v12 setFrame:?];
        v20 = [(AVMobileChromelessFluidSlider *)self delegate];
        v21 = objc_opt_respondsToSelector();

        if (v21)
        {
          v22 = [(AVMobileChromelessFluidSlider *)self delegate];
          [v22 slider:self didUpdateFrame:v11 forSliderMark:{v13, v15, v17, v19}];
        }
      }
    }
  }
}

- (double)_frameForSliderMark:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [a1 bounds];
    v5 = v4;
    v6 = v3;
    [a1 bounds];
    v8 = v7;
    v9 = [v6 markType];
    if (v9 == 2)
    {
      [v6 endValue];
      v20 = v19;
      [v6 startValue];
      v22 = v20 - v21;
      [a1 maximumValue];
      v24 = v23;
      [a1 minimumValue];
      v10 = fmax(v8 * (v22 / (v24 - v25)), 10.0);
    }

    else if (v9 == 1)
    {
      v10 = 3.5;
    }

    else
    {
      v10 = 0.0;
      if (!v9)
      {
        [v6 endValue];
        v12 = v11;
        [v6 startValue];
        v14 = v12 - v13;
        [a1 maximumValue];
        v16 = v15;
        [a1 minimumValue];
        v18 = v8 * (v14 / (v16 - v17));
        if (v18 >= 5.5)
        {
          v10 = v18;
        }

        else
        {
          v10 = 5.5;
        }
      }
    }

    [v6 startValue];
    v27 = v26;
    if (*(a1 + 576) == 1)
    {
      v28 = *(a1 + 584);
    }

    else
    {
      [a1 maximumValue];
      v28 = v29;
    }

    [a1 minimumValue];
    v31 = v27 - v30;
    [a1 minimumValue];
    v33 = (v31 / (v28 - v32));
    if ([v6 markType] == 2)
    {
      v34 = v5 * v33;
    }

    else
    {
      v34 = v10 * -0.5 + v33 * v5;
    }
  }

  else
  {
    v34 = 0.0;
  }

  return v34;
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
  v20.receiver = self;
  v20.super_class = AVMobileChromelessFluidSlider;
  [(AVMobileChromelessFluidSlider *)&v20 hitRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  top = self->_directionalHitRectInsets.top;
  leading = self->_directionalHitRectInsets.leading;
  bottom = self->_directionalHitRectInsets.bottom;
  trailing = self->_directionalHitRectInsets.trailing;
  if ([(AVMobileChromelessFluidSlider *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v15 = trailing;
  }

  else
  {
    v15 = leading;
  }

  v16 = v4 + v15 + -20.0;
  v17 = v6 + top + -20.0;
  v18 = v8 - (leading + trailing) + 40.0;
  v19 = v10 - (top + bottom) + 40.0;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
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
  v6[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = AVMobileChromelessFluidSlider;
  [(AVMobileChromelessFluidSlider *)&v5 didMoveToWindow];
  [(AVMobileChromelessFluidSlider *)self _updateBarTintStateAlpha];
  [(AVMobileChromelessFluidSlider *)self _updateBarVisualEffectsIfNeeded];
  [(AVMobileChromelessFluidSlider *)&self->super.super.super.super.super.isa _updateSliderBarMaterials];
  [(AVMobileChromelessFluidSlider *)&self->super.super.super.super.super.isa _updateSliderMarkViewColors];
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [(AVMobileChromelessFluidSlider *)self registerForTraitChanges:v3 withHandler:&__block_literal_global_365];
}

- (void)_updateBarTintStateAlpha
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [result tintState];
    objc_opt_self();
    if (v2 >= 3)
    {
      v4 = _AVLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 134217984;
        v6 = v2;
        _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Error: Unrecognized slider tint state %ld", &v5, 0xCu);
      }

      v3 = 1.0;
    }

    else
    {
      v3 = dbl_18B6EC600[v2];
    }

    return [v1 setAlpha:v3];
  }

  return result;
}

- (void)_updateSliderMarkViewColors
{
  if (a1)
  {
    v2 = [a1[80] count];
    if (v2 != [a1[66] count])
    {
      v3 = _AVLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Error: Slider mark count does not match slider mark view count", v18, 2u);
      }
    }

    v4 = [a1[80] count];
    v5 = [a1[66] count];
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
        v8 = [a1[80] objectAtIndex:i];
        v9 = [a1[66] objectAtIndex:i];
        v10 = [v8 unfilledColor];
        [a1 value];
        v12 = v11;
        [v8 startValue];
        if (v12 >= v13)
        {
          v14 = [v8 filledColor];

          v10 = v14;
        }

        v15 = v10;
        objc_opt_self();
        objc_opt_self();
        v19 = 0.0;
        [v15 getRed:0 green:0 blue:0 alpha:&v19];
        v16 = [v15 colorWithAlphaComponent:v19];

        v17 = [v9 backgroundColor];

        if (v17 != v16)
        {
          [v9 setMarkColor:v16];
        }
      }
    }
  }
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  [(AVMobileChromelessFluidSlider *)self bounds:a3.origin.x];
  v6 = v5;
  v8 = v7;
  if (fabs(self->_barWidth + 1.0) >= 2.22044605e-16)
  {
    barWidth = self->_barWidth;
  }

  else
  {
    barWidth = v4;
  }

  barHeight = self->_barHeight;
  if ([(AVMobileChromelessFluidSlider *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v11 = [(AVView *)self->_contentView superview];
    [v11 bounds];
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v11;
      [v14 contentInset];
      v16 = v15;
      v18 = v17;
      [v14 bounds];
      v20 = v19 - (v16 + v18);
      [v14 contentSize];
      v22 = v21;

      v13 = v20 + fmax(v22 - v20, 0.0);
    }

    v6 = v13 - v6 - barWidth;
  }

  v23 = v6;
  v24 = v8;
  v25 = barWidth;
  v26 = barHeight;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)setVariableSpeedScrubbingOffsetMultiplier:(double)a3
{
  if (self->_variableSpeedScrubbingOffsetMultiplier != a3)
  {
    self->_variableSpeedScrubbingOffsetMultiplier = a3;
  }
}

- (void)setMaximumValueView:(id)a3
{
  [(_UISliderFluidTickConfiguration *)self->_fluidSliderConfiguration setMaximumValueView:a3];
  fluidSliderConfiguration = self->_fluidSliderConfiguration;

  [(AVMobileChromelessFluidSlider *)self _setSliderConfiguration:fluidSliderConfiguration];
}

- (CGRect)frameForSliderMark:(id)a3
{
  v3 = [(AVMobileChromelessFluidSlider *)self _frameForSliderMark:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setUsesVolumeStyle:(BOOL)a3
{
  if (self->_usesVolumeStyle != a3)
  {
    self->_usesVolumeStyle = a3;
    [(AVMobileChromelessFluidSlider *)self _updateSliderStyle];
  }
}

- (uint64_t)_updateSliderStyle
{
  if (result)
  {
    v1 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (v1[581])
      {
        v2 = 111;
      }

      else
      {
        v2 = 110;
      }

      return [v1 _setSliderStyle:v2];
    }
  }

  return result;
}

- (void)setUnfilledBarVisualEffect:(id)a3
{
  v5 = a3;
  self->_hasSetUnFilledBarVisualEffect = 1;
  if (self->_unfilledBarVisualEffect != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_unfilledBarVisualEffect, a3);
    [(AVMobileChromelessFluidSlider *)&self->super.super.super.super.super.isa _updateSliderBarMaterials];
    v5 = v6;
  }
}

- (void)setTotalValue:(float)a3
{
  v18 = v9;
  v19 = v8;
  v20 = v7;
  v21 = v3;
  if (vabds_f32(self->_totalValue, a3) >= 0.00000011921)
  {
    self->_totalValue = a3;
    [(AVMobileChromelessFluidSlider *)self maximumValue];
    v14 = v13;
    [(AVMobileChromelessFluidSlider *)self maximumValue];
    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      *&v17 = v16 - (a3 - v14);
      [(AVMobileChromelessFluidSlider *)self _setMaximumEnabledValue:v17];
    }

    [(AVMobileChromelessFluidSlider *)self setNeedsLayout:v10];
    self->_totalValueSet = 1;
  }
}

- (void)setTintState:(unint64_t)a3
{
  if (self->_tintState != a3)
  {
    self->_tintState = a3;
    [(AVMobileChromelessFluidSlider *)self _updateBarTintStateAlpha];
  }
}

- (void)setStretchLimit:(double)a3
{
  if (self->_stretchLimit != a3)
  {
    self->_stretchLimit = a3;
    [(_UISliderFluidTickConfiguration *)self->_fluidSliderConfiguration setStretchLimit:?];
    fluidSliderConfiguration = self->_fluidSliderConfiguration;

    [(AVMobileChromelessFluidSlider *)self _setSliderConfiguration:fluidSliderConfiguration];
  }
}

- (void)setSliderMarks:(id)a3
{
  v5 = a3;
  if (self->_sliderMarks != v5)
  {
    v22 = v5;
    objc_storeStrong(&self->_sliderMarks, a3);
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

          v11 = objc_alloc_init(AVMobileFluidSliderMarkView);
          v13 = [(NSArray *)self->_sliderMarks objectAtIndex:[(NSMutableArray *)self->_sliderMarkViews count]];
          v14 = [v13 markType];

          v15 = self->_barHeight + -1.0;
          if (v15 < 1.0)
          {
            v15 = 1.0;
          }

          v16 = v15 * 0.5;
          if (v14 == 1)
          {
            v17 = 1.75;
          }

          else
          {
            v17 = v16;
          }

          [(AVMobileFluidSliderMarkView *)v11 setAutoresizingMask:0];
          [(AVMobileFluidSliderMarkView *)v11 setUserInteractionEnabled:0];
          v18 = [(AVMobileFluidSliderMarkView *)v11 layer];
          [v18 setMasksToBounds:1];

          v19 = [(AVMobileFluidSliderMarkView *)v11 layer];
          [v19 setCornerRadius:v17];

          v20 = [(AVMobileFluidSliderMarkView *)v11 layer];
          [v20 setCornerCurve:v7];

          [(AVMobileChromelessFluidSlider *)self addSubview:v11];
          [(NSMutableArray *)self->_sliderMarkViews addObject:v11];
        }

        else
        {
          v11 = [(NSMutableArray *)sliderMarkViews lastObject];
          [(AVMobileFluidSliderMarkView *)v11 removeFromSuperview];
          [(NSMutableArray *)self->_sliderMarkViews removeLastObject];
        }

        v21 = [(NSMutableArray *)self->_sliderMarkViews count];
      }

      while (v21 != [(NSArray *)self->_sliderMarks count]);
    }

    [(AVMobileChromelessFluidSlider *)&self->super.super.super.super.super.isa _updateSliderMarkViewColors];
    [(AVMobileChromelessFluidSlider *)self setNeedsLayout];
    v5 = v22;
  }
}

- (void)setSnappingValues:(id)a3
{
  v5 = a3;
  if (self->_snappingValues != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_snappingValues, a3);
    [(AVMobileChromelessFluidSlider *)self _setUpSliderConfigurationIfNeeded];
    v5 = v6;
  }
}

- (void)_setUpSliderConfigurationIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = [a1 snappingValues];
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v22 + 1) + 8 * i) floatValue];
          v9 = v8;
          if (*(a1 + 576) == 1)
          {
            v10 = *(a1 + 584);
          }

          else
          {
            [a1 maximumValue];
            v10 = v11;
          }

          [a1 minimumValue];
          v13 = v9 - v12;
          [a1 minimumValue];
          v15 = v13 / (v10 - v14);
          v16 = objc_alloc(MEMORY[0x1E69DD728]);
          *&v17 = v15;
          v18 = [v16 initWithPosition:0 title:0 image:v17];
          [v2 addObject:v18];
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
    }

    v19 = [objc_alloc(MEMORY[0x1E69DD720]) initWithTicks:v2 behavior:2];
    v20 = *(a1 + 568);
    *(a1 + 568) = v19;

    [*(a1 + 568) setTickStyle:0x7FFFFFFFFFFFFFFFLL];
    LODWORD(v21) = 1008981770;
    [*(a1 + 568) setSnappingDistance:v21];
    [*(a1 + 568) setDelegate:a1];
    [*(a1 + 568) setExpansionFactor:1.0];
    [*(a1 + 568) setStretchLimit:17.0];
    [*(a1 + 568) setMaximumTrackEffect:*(a1 + 664)];
    [*(a1 + 568) setMinimumTrackEffect:*(a1 + 616)];
    [a1 _setSliderConfiguration:*(a1 + 568)];
  }
}

- (void)setPrefersSliderTrackHidden:(BOOL)a3
{
  if (self->_prefersSliderTrackHidden != a3)
  {
    self->_prefersSliderTrackHidden = a3;
    [(AVMobileChromelessFluidSlider *)self _setFluidTrackHidden:?];

    [(AVMobileChromelessFluidSlider *)self setNeedsLayout];
  }
}

- (void)setFineScrubbingStyle:(unint64_t)a3
{
  if (self->_fineScrubbingStyle != a3)
  {
    self->_fineScrubbingStyle = a3;
    if ([(AVMobileChromelessFluidSlider *)self fineScrubbingStyle])
    {
      if (!self->_speedChangeFeedbackGenerator)
      {
        self->_speedChangeFeedbackGenerator = objc_alloc_init(MEMORY[0x1E69DCF40]);

        MEMORY[0x1EEE66BB8]();
      }
    }
  }
}

- (void)setFilledBarVisualEffect:(id)a3
{
  v5 = a3;
  self->_hasSetFilledBarVisualEffect = 1;
  if (self->_filledBarVisualEffect != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_filledBarVisualEffect, a3);
    [(AVMobileChromelessFluidSlider *)&self->super.super.super.super.super.isa _updateSliderBarMaterials];
    v5 = v6;
  }
}

- (void)setBarWidth:(double)a3
{
  if (self->_barWidth != a3)
  {
    self->_barWidth = a3;
    [(AVMobileChromelessFluidSlider *)self setNeedsLayout];
    sliderPointerInteraction = self->_sliderPointerInteraction;

    [(UIPointerInteraction *)sliderPointerInteraction invalidate];
  }
}

- (void)setBarHeight:(double)a3
{
  if (self->_barHeight != a3)
  {
    self->_barHeight = a3;
    [(AVMobileChromelessFluidSlider *)self invalidateIntrinsicContentSize];
    v5 = [(AVMobileChromelessFluidSlider *)self superview];
    [v5 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

    [(AVMobileChromelessFluidSlider *)self setNeedsLayout];
    sliderPointerInteraction = self->_sliderPointerInteraction;

    [(UIPointerInteraction *)sliderPointerInteraction invalidate];
  }
}

- (AVMobileChromelessFluidSlider)init
{
  v16.receiver = self;
  v16.super_class = AVMobileChromelessFluidSlider;
  v2 = [(AVMobileChromelessFluidSlider *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:11];
    disabledFilledBarViewEffect = v2->_disabledFilledBarViewEffect;
    v2->_disabledFilledBarViewEffect = v3;

    v5 = [MEMORY[0x1E69DC730] effectWithStyle:16];
    disabledUnfilledBarViewEffect = v2->_disabledUnfilledBarViewEffect;
    v2->_disabledUnfilledBarViewEffect = v5;

    v7 = objc_alloc_init(AVView);
    contentView = v2->_contentView;
    v2->_contentView = v7;

    [(AVView *)v2->_contentView setAutoresizingMask:0];
    [(AVView *)v2->_contentView setClipsToBounds:1];
    [(AVView *)v2->_contentView setIgnoresTouches:1];
    [(AVMobileChromelessFluidSlider *)v2 insertSubview:v2->_contentView atIndex:0];
    [(AVMobileChromelessFluidSlider *)v2 _setUpSliderConfigurationIfNeeded];
    v9 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v2];
    sliderPointerInteraction = v2->_sliderPointerInteraction;
    v2->_sliderPointerInteraction = v9;

    [(AVMobileChromelessFluidSlider *)v2 addInteraction:v2->_sliderPointerInteraction];
    v2->_fineScrubbingStyle = 0;
    v11 = *(MEMORY[0x1E69DC5C0] + 16);
    *&v2->_directionalHitRectInsets.top = *MEMORY[0x1E69DC5C0];
    *&v2->_directionalHitRectInsets.bottom = v11;
    v2->_barHeight = 15.0;
    v2->_barWidth = -1.0;
    v2->_totalValue = 1.0;
    v2->_stretchLimit = 17.0;
    sliderMarks = v2->_sliderMarks;
    v2->_sliderMarks = MEMORY[0x1E695E0F0];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sliderMarkViews = v2->_sliderMarkViews;
    v2->_sliderMarkViews = v13;

    v2->_tintState = 1;
    v2->_totalValueSet = 0;
    v2->_variableSpeedScrubbingOffsetMultiplier = 1.0;
    [(AVMobileChromelessFluidSlider *)v2 _updateSliderStyle];
  }

  return v2;
}

@end