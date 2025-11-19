@interface AVButton
+ (id)buttonWithAccessibilityIdentifier:(id)a3 accessibilityLabel:(id)a4 isFirstGeneration:(BOOL)a5;
+ (id)buttonWithAccessibilityIdentifier:(id)a3 isFirstGeneration:(BOOL)a4;
+ (id)customHighlightedAnimationButtonWithAccessibilityIdentifier:(id)a3;
- (AVContentIntersectingDelegate)contentIntersectingDelegate;
- (BOOL)_hasAnyTitle;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)contentIntersection;
- (CGRect)hitRect;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (NSDirectionalEdgeInsets)hitRectInsets;
- (NSString)debugDescription;
- (NSTimer)longPressTimer;
- (UIViewPropertyAnimator)highlightAnimator;
- (double)_imageViewAlpha;
- (double)_preferredLayoutSize;
- (double)baselineOffsetFromBottom;
- (id)_preferredFont;
- (id)accessibilityLabel;
- (void)_handleUserInteractionGestureRecognizer:(id)a3;
- (void)_resetTrackedState;
- (void)_updateBackgroundEffectViewIsHidden;
- (void)_updateEdgeInsets;
- (void)_updateImageIfNeeded;
- (void)_updateLayoutItem;
- (void)_updateTintColorIfNeeded;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)interruptActiveInteractions;
- (void)layoutAttributesDidChange;
- (void)layoutSubviews;
- (void)setActiveImageName:(id)a3;
- (void)setAlternateImageName:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCollapsed:(BOOL)a3;
- (void)setContentIntersection:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setExtrinsicContentSize:(CGSize)a3;
- (void)setForce:(double)a3;
- (void)setHasAlternateAppearance:(BOOL)a3;
- (void)setHasFullScreenAppearance:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setImageName:(id)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setMicaPackage:(id)a3;
- (void)setMultipleTouchesEndsTracking:(BOOL)a3;
- (void)setRemoved:(BOOL)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
- (void)setUsesBackgroundEffectViewForTextOnlyButtons:(BOOL)a3;
- (void)setWasLongPressed:(BOOL)a3;
- (void)updateForContentIntersection;
- (void)willMoveToWindow:(id)a3;
@end

@implementation AVButton

- (NSTimer)longPressTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_longPressTimer);

  return WeakRetained;
}

- (UIViewPropertyAnimator)highlightAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightAnimator);

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

- (CGSize)extrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_handleUserInteractionGestureRecognizer:(id)a3
{
  v4 = a3;
  if (-[AVButton multipleTouchesEndsTracking](self, "multipleTouchesEndsTracking") && [v4 numberOfTouches] >= 2)
  {
    [(AVButton *)self setEnabled:0];
    [(AVButton *)self setEnabled:1];
  }
}

- (NSString)debugDescription
{
  v9.receiver = self;
  v9.super_class = AVButton;
  v3 = [(AVButton *)&v9 debugDescription];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(AVButton *)self accessibilityIdentifier];
  v6 = [v4 stringWithFormat:@" %@", v5];
  v7 = [v3 stringByAppendingString:v6];

  return v7;
}

- (void)interruptActiveInteractions
{
  v2 = [(AVButton *)self contextMenuInteraction];
  [v2 dismissMenu];
}

- (void)updateForContentIntersection
{
  if (self)
  {
    [(AVButton *)self bounds];
    v5 = (COERCE__INT64(fabs(v3 * v4)) - 0x10000000000000) >> 53;
    v6 = COERCE__INT64(v3 * v4) < 0 || v5 > 0x3FE;
    v7 = v6 && (COERCE__INT64(v3 * v4) - 1) > 0xFFFFFFFFFFFFELL;
    v8 = !v7 && self->_contentIntersection.size.height * self->_contentIntersection.size.width / (v3 * v4) > 0.8;
    if (self->_isOverVideo != v8)
    {
      self->_isOverVideo = v8;
      v9 = [(AVButton *)self contentIntersectingDelegate];
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

    [(AVButton *)self updateForContentIntersection];
  }
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVButton *)self layoutAttributes];
  -[AVButton setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVButton;
  [(AVButton *)&v5 layoutSubviews];
  v3 = [(AVButton *)self backgroundEffectView];
  if (v3)
  {
    if ([(AVButton *)self hasFullScreenAppearance])
    {
      v4 = 12.0;
    }

    else
    {
      v4 = 8.0;
    }

    [(AVButton *)self bounds];
    v7 = CGRectInset(v6, 0.0, v4);
    [v3 setFrame:{v7.origin.x, v7.origin.y, v7.size.width, v7.size.height}];
  }
}

- (CGSize)intrinsicContentSize
{
  if ([(AVButton *)self isFirstGeneration])
  {
    if (![(AVButton *)self _hasAnyTitle])
    {
LABEL_8:
      v4 = [(AVButton *)self _preferredLayoutSize];
      goto LABEL_11;
    }

    v3 = [(AVButton *)self imageForState:0];
    if (v3)
    {

      goto LABEL_8;
    }

    v6 = [(AVButton *)self micaPackage];

    if (v6)
    {
      goto LABEL_8;
    }

    [(AVButton *)&v7 intrinsicContentSize:self];
  }

  else
  {
    [(AVButton *)&v8 intrinsicContentSize:v7.receiver];
  }

LABEL_11:
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)_hasAnyTitle
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 titleForState:0];
    if ([v2 length])
    {
      v1 = 1;
    }

    else
    {
      v3 = [v1 attributedTitleForState:0];
      v1 = [v3 length] != 0;
    }
  }

  return v1;
}

- (double)_preferredLayoutSize
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 extrinsicContentSize];
  v3 = v2;
  if (v4 > 0.0 && v2 <= 0.0)
  {
    if ([a1 hasFullScreenAppearance])
    {
      [a1 fullscreenAlternateImagePadding];
    }

    else
    {
      [a1 alternateImagePadding];
    }

    v6 = v5;
    if (![a1 hasAlternateAppearance])
    {
      v6 = 0.0;
    }

    v7 = [a1 imageForState:0];
    [v7 size];
    v3 = v6 + v8;
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(AVButton *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)hitRect
{
  v24.receiver = self;
  v24.super_class = AVButton;
  [(AVButton *)&v24 hitRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AVButton *)self hitRectInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([(AVButton *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v20 = v4 + v19;
  v21 = v6 + v12;
  v22 = v8 - (v18 + v14);
  v23 = v10 - (v12 + v16);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = AVButton;
  [(AVButton *)&v19 setBounds:?];
  v4 = [(AVButton *)self micaPackage];
  v5 = [v4 rootLayer];
  if (v5)
  {
    v6 = v5;
    UIRectGetCenter();
    v8 = v7;
    v10 = v9;
    v11 = [(AVButton *)self micaPackage];
    v12 = [v11 rootLayer];
    [v12 position];
    v14 = v13;
    v16 = v15;

    if (v8 != v14 || v10 != v16)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v17 = [(AVButton *)self micaPackage];
      v18 = [v17 rootLayer];
      [(AVButton *)self bounds];
      UIRectGetCenter();
      [v18 setPosition:?];

      [MEMORY[0x1E6979518] commit];
    }
  }

  else
  {
  }
}

- (id)accessibilityLabel
{
  v3 = self->_accessibilityLabelOverride;
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = AVButton;
    v3 = [(AVButton *)&v5 accessibilityLabel];
  }

  return v3;
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AVButton *)self titleForState:a4];
  v12.receiver = self;
  v12.super_class = AVButton;
  [(AVButton *)&v12 setTitle:v6 forState:a4];
  LOBYTE(a4) = [v7 isEqualToString:v6];

  if ((a4 & 1) == 0)
  {
    [(AVButton *)self _updateBackgroundEffectViewIsHidden];
    [(AVButton *)self _updateEdgeInsets];
    [(AVButton *)self _updateLayoutItem];
    [(AVButton *)self invalidateIntrinsicContentSize];
    v8 = [(AVButton *)self superview];
    [v8 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }

  if (v6 && !v7)
  {
    v9 = [(AVButton *)self layer];
    [v9 setCompositingFilter:0];

    v10 = [(AVButton *)self tintEffectStyle];
    v11 = [(AVButton *)self titleLabel];
    if (v10)
    {
      [AVBackdropView applySecondaryGlyphTintToView:v11];
    }

    else
    {
      [AVBackdropView applyPrimaryGlyphTintToView:v11];
    }
  }
}

- (void)_updateBackgroundEffectViewIsHidden
{
  if (a1)
  {
    if ([(AVButton *)a1 _hasAnyTitle])
    {
      v2 = [a1 imageForState:0];
      if (v2)
      {
        v3 = 1;
      }

      else
      {
        v4 = [a1 micaPackage];
        if (v4)
        {
          v3 = 1;
        }

        else
        {
          v3 = [a1 usesBackgroundEffectViewForTextOnlyButtons] ^ 1;
        }
      }
    }

    else
    {
      v3 = 1;
    }

    v5 = [a1 backgroundEffectView];
    [v5 setHidden:v3];
  }
}

- (void)_updateEdgeInsets
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = [result isFirstGeneration];
  if (!result)
  {
    return result;
  }

  v2 = [v1 usesBackgroundEffectViewForTextOnlyButtons];
  v3 = [v1 usesBackgroundEffectViewForTextOnlyButtons];
  v4 = [v1 imageForState:0];
  if (v4)
  {
  }

  else
  {
    if (v3)
    {
      v5 = 14.0;
    }

    else
    {
      v5 = 16.0;
    }

    if (v2)
    {
      v6 = 4.0;
    }

    else
    {
      v6 = 16.0;
    }

    v7 = [v1 micaPackage];

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v5 = 0.0;
  v6 = 0.0;
LABEL_14:

  return [v1 setContentEdgeInsets:{v5, v6, v5, v6}];
}

- (void)_updateLayoutItem
{
  if (a1)
  {
    v2 = [a1 layoutAttributes];
    [a1 intrinsicContentSize];
    [v2 setMinimumSize:?];

    v3 = [a1 layoutAttributes];
    if ([a1 isIncluded])
    {
      v4 = [a1 isRemoved] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    [v3 setIncluded:v4];

    v5 = [a1 layoutAttributes];
    [v5 setCollapsed:{objc_msgSend(a1, "isCollapsed")}];
  }
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AVButton *)self _preferredLayoutSize];
  v9 = v8;
  if (v6)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v10 = [(AVButton *)self micaPackage];
    v11 = [v10 rootLayer];
    [v11 setHidden:1];

    if ([(AVButton *)self usesCustomBlendingEffects])
    {
      if ([(AVButton *)self isFirstGeneration])
      {
        v12 = [(AVButton *)self layer];
        v13 = [v12 compositingFilter];

        if (!v13)
        {
          v14 = [(AVButton *)self layer];
          [v14 setCompositingFilter:*MEMORY[0x1E6979CF8]];

          v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:-[AVButton _imageViewAlpha](self)];
          [(AVButton *)self setTintColor:v15];
        }
      }
    }

    v26.receiver = self;
    v26.super_class = AVButton;
    [(AVButton *)&v26 setImage:v6 forState:a4];
    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = AVButton;
    [(AVButton *)&v25 setImage:0 forState:a4];
    [(AVButton *)self _updateTintColorIfNeeded];
  }

  v16 = [(AVButton *)self isFirstGeneration];
  if (v7 != [(AVButton *)self _preferredLayoutSize]|| v9 != v17 || !v16)
  {
    [(AVButton *)self invalidateIntrinsicContentSize];
    v18 = [(AVButton *)self superview];
    [v18 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }

  [(AVButton *)self setContentEdgeInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(AVButton *)self _updateBackgroundEffectViewIsHidden];
  [(AVButton *)self _updateEdgeInsets];
  [(AVButton *)self _updateLayoutItem];
  if (!v6)
  {
    v19 = [(AVButton *)self micaPackage];
    v20 = [v19 rootLayer];
    v21 = [v20 isHidden];

    if (v21)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v22 = [(AVButton *)self layer];
      [v22 setCompositingFilter:0];

      v23 = [(AVButton *)self micaPackage];
      v24 = [v23 rootLayer];
      [v24 setHidden:0];

      [MEMORY[0x1E6979518] commit];
    }
  }
}

- (double)_imageViewAlpha
{
  if (!a1)
  {
    return 0.0;
  }

  if ([a1 tintEffectStyle])
  {
    v2 = 0.55;
  }

  else
  {
    v2 = 0.75;
  }

  if (![a1 usesCustomBlendingEffects])
  {
    v2 = 1.0;
  }

  v3 = [a1 micaPackage];
  if (v3)
  {
    [a1 micaSnapshotAlpha];
    v2 = v4;
  }

  return v2;
}

- (void)_updateTintColorIfNeeded
{
  if (a1 && [a1 usesCustomBlendingEffects] && objc_msgSend(a1, "isFirstGeneration"))
  {
    v2 = [a1 imageName];
    if (v2)
    {
    }

    else
    {
      v3 = [a1 imageForState:0];

      if (!v3)
      {
        return;
      }
    }

    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:-[AVButton _imageViewAlpha](a1)];
    [a1 setTintColor:v4];
  }
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVButton;
  [(AVButton *)&v5 cancelTrackingWithEvent:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVButton_cancelTrackingWithEvent___block_invoke;
  block[3] = &unk_1E720A090;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_resetTrackedState
{
  if (result)
  {
    v1 = result;
    v2 = [result longPressTimer];
    [v2 invalidate];

    [v1 setHorizontalTranslationOfLongPress:0.0];
    [v1 setPreviousHorizontalPositionOfLongPress:0];
    [v1 setForce:0.0];
    [v1 setWasLongPressed:0];
    [v1 setMaximumForceSinceTrackingBegan:0.0];

    return [v1 setWasForcePressTriggered:0];
  }

  return result;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = AVButton;
  [(AVButton *)&v6 endTrackingWithTouch:a3 withEvent:a4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVButton_endTrackingWithTouch_withEvent___block_invoke;
  block[3] = &unk_1E720A090;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v30.receiver = self;
  v30.super_class = AVButton;
  v7 = [(AVButton *)&v30 continueTrackingWithTouch:v6 withEvent:a4];
  if (v7)
  {
    [(AVButton *)self maximumForceSinceTrackingBegan];
    v9 = v8;
    [(AVButton *)self forceThreshold];
    v11 = v10;
    [(AVButton *)self maximumForceSinceTrackingBegan];
    v13 = v12;
    [v6 force];
    if (v13 >= v14)
    {
      v14 = v13;
    }

    [(AVButton *)self setMaximumForceSinceTrackingBegan:v14];
    Current = CFAbsoluteTimeGetCurrent();
    [(AVButton *)self trackingStartTime];
    v17 = v16;
    [(AVButton *)self maximumForceSinceTrackingBegan];
    v19 = v18;
    [(AVButton *)self forceThreshold];
    if (v19 >= v20)
    {
      v20 = Current - v17;
      if (Current - v17 > 0.12)
      {
        if ([(AVButton *)self treatsForcePressAsLongPress])
        {
          [(AVButton *)self setWasLongPressed:1];
        }

        else
        {
          [(AVButton *)self setWasLongPressed:0];
          v21 = [(AVButton *)self longPressTimer];
          [v21 invalidate];

          [v6 force];
          [(AVButton *)self setForce:?];
          if (v9 < v11)
          {
            [(AVButton *)self setWasForcePressTriggered:1];
            [(AVButton *)self sendActionsForControlEvents:0x1000000];
          }
        }
      }
    }

    if ([(AVButton *)self wasLongPressed])
    {
      v22 = [(AVButton *)self previousHorizontalPositionOfLongPress];

      if (v22)
      {
        v23 = [(AVButton *)self previousHorizontalPositionOfLongPress];
        [v23 doubleValue];
        v25 = v24;

        [v6 locationInView:self];
        [(AVButton *)self setHorizontalTranslationOfLongPress:v26 - v25];
      }

      v27 = MEMORY[0x1E696AD98];
      [v6 locationInView:self];
      v28 = [v27 numberWithDouble:?];
      [(AVButton *)self setPreviousHorizontalPositionOfLongPress:v28];
    }
  }

  return v7;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = AVButton;
  v8 = [(AVButton *)&v19 beginTrackingWithTouch:v6 withEvent:v7];
  if (v8)
  {
    [(AVButton *)self setTrackingStartTime:CFAbsoluteTimeGetCurrent()];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E695DFF0];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __45__AVButton_beginTrackingWithTouch_withEvent___block_invoke;
    v16 = &unk_1E7209DA8;
    objc_copyWeak(&v17, &location);
    v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:&v13 block:0.5];
    [(AVButton *)self setLongPressTimer:v10, v13, v14, v15, v16];
    v11 = [(AVButton *)self longPressTimer];
    [v11 setTolerance:0.05];

    [v6 force];
    [(AVButton *)self setForce:?];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __45__AVButton_beginTrackingWithTouch_withEvent___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setWasLongPressed:{objc_msgSend(v5, "isValid")}];
    if ([WeakRetained isTracking])
    {
      v4 = [WeakRetained disablesHighlightWhenLongPressed] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    [WeakRetained setHighlighted:v4];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(AVButton *)self wasLongPressed])
  {
    v3 = v3 & ~[(AVButton *)self disablesHighlightWhenLongPressed];
  }

  v9.receiver = self;
  v9.super_class = AVButton;
  if (v3 != [(AVButton *)&v9 isHighlighted])
  {
    v8.receiver = self;
    v8.super_class = AVButton;
    [(AVButton *)&v8 setHighlighted:v3];
    if (!self->_disablesHighlightAnimation)
    {
      v5 = [(AVButton *)self highlightAnimator];
      if ([v5 isRunning] && objc_msgSend(v5, "isInterruptible"))
      {
        [v5 stopAnimation:0];
        [v5 finishAnimationAtPosition:2];
      }

      if ([v5 isRunning])
      {
        v6 = v5;
      }

      else
      {
        objc_initWeak(&location, self);
        v7 = objc_alloc(MEMORY[0x1E69DD278]);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __38__AVButton__performHighlightAnimation__block_invoke;
        v10[3] = &unk_1E7209EA8;
        objc_copyWeak(&v11, &location);
        v6 = [v7 initWithDuration:3 curve:v10 animations:0.1];

        [v6 startAnimation];
        [(AVButton *)self setHighlightAnimator:v6];
        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __38__AVButton__performHighlightAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    memset(&v7, 0, sizeof(v7));
    if ([WeakRetained isHighlighted])
    {
      CGAffineTransformMakeScale(&v7, 0.75, 0.75);
    }

    else
    {
      v3 = *(MEMORY[0x1E695EFD0] + 16);
      *&v7.a = *MEMORY[0x1E695EFD0];
      *&v7.c = v3;
      *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    if ([v2 appliesTransformToImageViewWhenHighlighted])
    {
      v4 = [v2 imageView];
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

      v5 = [v2 imageView];
      v6 = v7;
      [v5 setTransform:&v6];
    }

    else
    {
      v6 = v7;
      [v2 setTransform:&v6];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AVButton;
  [(AVButton *)&v6 setEnabled:?];
  if ([(AVButton *)self isTracking]&& !a3)
  {
    [(AVButton *)self setTracking:0];
    [(AVButton *)self setHighlighted:0];
    [(AVButton *)self sendActionsForControlEvents:256];
    [(AVButton *)self setForce:0.0];
    if ([(AVButton *)self wasLongPressed])
    {
      [(AVButton *)self sendActionsForControlEvents:0x800000];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__AVButton_setEnabled___block_invoke;
    block[3] = &unk_1E720A090;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (double)baselineOffsetFromBottom
{
  v3 = [(AVButton *)self imageForState:0];
  [v3 size];
  if (!v3 || ((v5 = v4, v6 = v4, v7 = fabsf(v6), v6 > 0.0) ? (v8 = v7 < 0.00000011921) : (v8 = 1), v8 || [(AVButton *)self _hasAnyTitle]|| ([(AVButton *)self intrinsicContentSize], v9 <= v5)))
  {
    v12 = NAN;
  }

  else
  {
    v10 = v9;
    [v3 baselineOffsetFromBottom];
    v12 = (v10 - v5) * 0.5 + v11;
  }

  return v12;
}

- (void)setUsesBackgroundEffectViewForTextOnlyButtons:(BOOL)a3
{
  if (self->_usesBackgroundEffectViewForTextOnlyButtons != a3)
  {
    v4 = a3;
    self->_usesBackgroundEffectViewForTextOnlyButtons = a3;
    v6 = [(AVButton *)self backgroundEffectView];

    if (!v6 && v4)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
      [(AVButton *)self setBackgroundEffectView:v7];

      v8 = [(AVButton *)self backgroundEffectView];
      [(AVButton *)self insertSubview:v8 atIndex:0];

      v9 = [(AVButton *)self backgroundEffectView];
      [v9 setUserInteractionEnabled:0];

      v10 = [(AVButton *)self backgroundEffectView];
      v11 = MEMORY[0x1E69DD290];
      v12 = [MEMORY[0x1E69DC888] whiteColor];
      v13 = [v11 effectCompositingColor:v12 withMode:24 alpha:0.1];
      [v10 setEffect:v13];

      v14 = [(AVButton *)self backgroundEffectView];
      [v14 _setContinuousCornerRadius:6.0];
    }

    v15 = [(AVButton *)self backgroundEffectView];
    [v15 setHidden:!v4];

    [(AVButton *)self _updateEdgeInsets];
  }
}

- (void)setMultipleTouchesEndsTracking:(BOOL)a3
{
  if (self->_multipleTouchesEndsTracking != a3)
  {
    self->_multipleTouchesEndsTracking = a3;
    if (a3)
    {
      v4 = [[AVUserInteractionObserverGestureRecognizer alloc] initWithTarget:self action:sel__handleUserInteractionGestureRecognizer_];
      [(AVButton *)self setUserInteractionGestureRecognizer:v4];

      v6 = [(AVButton *)self userInteractionGestureRecognizer];
      [(AVButton *)self addGestureRecognizer:v6];
    }

    else
    {
      v5 = [(AVButton *)self userInteractionGestureRecognizer];
      [(AVButton *)self removeGestureRecognizer:v5];

      [(AVButton *)self setUserInteractionGestureRecognizer:0];
    }
  }
}

- (NSDirectionalEdgeInsets)hitRectInsets
{
  top = self->_hitRectInsets.top;
  leading = self->_hitRectInsets.leading;
  bottom = self->_hitRectInsets.bottom;
  trailing = self->_hitRectInsets.trailing;
  if ([(AVButton *)self clampsHitRectInsetsWhenContainedInScrollableView]&& [(UIView *)self avkit_isDescendantOfViewPassingTest:&__block_literal_global_32142])
  {
    trailing = -32.0;
    bottom = -32.0;
    leading = -32.0;
    top = -32.0;
  }

  v7 = top;
  v8 = leading;
  v9 = bottom;
  v10 = trailing;
  result.trailing = v10;
  result.bottom = v9;
  result.leading = v8;
  result.top = v7;
  return result;
}

BOOL __25__AVButton_hitRectInsets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if ([v4 alwaysBounceVertical])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 alwaysBounceHorizontal];
  }

  [v4 contentSize];
  v7 = v6;
  [v4 contentInset];
  v9 = v8;
  [v4 contentInset];
  v11 = v10;
  [v4 contentSize];
  v13 = v12;
  [v4 contentInset];
  v15 = v14;
  [v4 contentInset];
  if ((v5 & 1) != 0 || (v17 = v16, [v4 bounds], v7 - v9 - v11 > CGRectGetWidth(v20)))
  {
    v18 = 1;
  }

  else
  {
    [v4 bounds];
    v18 = v13 - v15 - v17 > CGRectGetHeight(v21);
  }

  return v18;
}

- (void)setMicaPackage:(id)a3
{
  v5 = a3;
  micaPackage = self->_micaPackage;
  if (micaPackage != v5)
  {
    v29 = v5;
    v7 = [(AVMicaPackage *)micaPackage rootLayer];
    [v7 removeFromSuperlayer];

    objc_storeStrong(&self->_micaPackage, a3);
    v8 = [(AVMicaPackage *)v29 rootLayer];
    v9 = [(AVButton *)self imageForState:0];
    [v8 setHidden:v9 != 0];

    v10 = [(AVMicaPackage *)v29 rootLayer];
    LOBYTE(v9) = [v10 isHidden];

    if ((v9 & 1) == 0)
    {
      v11 = [(AVButton *)self layer];
      [v11 setCompositingFilter:0];
    }

    if (v29)
    {
      v12 = [(AVButton *)self layer];
      v13 = [(AVMicaPackage *)v29 rootLayer];
      [v12 addSublayer:v13];
    }

    v14 = [(AVButton *)self micaPackage];
    v15 = [v14 rootLayer];
    if (v15)
    {
      v16 = v15;
      [(AVButton *)self bounds];
      UIRectGetCenter();
      v18 = v17;
      v20 = v19;
      v21 = [(AVButton *)self micaPackage];
      v22 = [v21 rootLayer];
      [v22 position];
      v24 = v23;
      v26 = v25;

      if (v18 != v24 || v20 != v26)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        v27 = [(AVButton *)self micaPackage];
        v28 = [v27 rootLayer];
        [(AVButton *)self bounds];
        UIRectGetCenter();
        [v28 setPosition:?];

        [MEMORY[0x1E6979518] commit];
      }
    }

    else
    {
    }

    [(AVButton *)self _updateEdgeInsets];
    [(AVButton *)self _updateLayoutItem];
    v5 = v29;
  }

  MEMORY[0x1EEE66BB8](micaPackage, v5);
}

- (void)setForce:(double)a3
{
  if (self->_force != a3)
  {
    self->_force = a3;
    if (![(AVButton *)self treatsForcePressAsLongPress])
    {

      [(AVButton *)self sendActionsForControlEvents:0x2000000];
    }
  }
}

- (void)setWasLongPressed:(BOOL)a3
{
  if (self->_wasLongPressed != a3)
  {
    self->_wasLongPressed = a3;
    if (a3)
    {
      v3 = 0x400000;
    }

    else
    {
      v3 = 0x800000;
    }

    [(AVButton *)self sendActionsForControlEvents:v3];
  }
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  if (a3.width != self->_extrinsicContentSize.width || a3.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = a3;
    if ([(AVButton *)self isFirstGeneration])
    {
      [(AVButton *)self invalidateIntrinsicContentSize];
      v6 = [(AVButton *)self superview];
      [v6 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
    }

    [(AVButton *)self _updateLayoutItem];
  }
}

- (void)setActiveImageName:(id)a3
{
  v4 = a3;
  if ([(NSString *)self->_activeImageName isEqualToString:v4])
  {
    v5 = [(AVButton *)self activeFont];
    v6 = [(AVButton *)self _preferredFont];
    if ([v5 isEqual:v6])
    {

      goto LABEL_20;
    }

    if (v4)
    {

      goto LABEL_9;
    }

    activeImageName = self->_activeImageName;

    if (!activeImageName)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v4)
    {
LABEL_9:
      if (!self->_activeImageName)
      {
        if ([(AVButton *)self tintEffectStyle])
        {
          [AVBackdropView applySecondaryGlyphTintToView:self];
        }

        else
        {
          [AVBackdropView applyPrimaryGlyphTintToView:self];
        }
      }

      v8 = 0;
      goto LABEL_16;
    }

    if (!self->_activeImageName)
    {
      goto LABEL_20;
    }
  }

  v8 = 1;
LABEL_16:
  v9 = [v4 copy];
  v10 = self->_activeImageName;
  self->_activeImageName = v9;

  v11 = [(AVButton *)self _preferredFont];
  activeFont = self->_activeFont;
  self->_activeFont = v11;

  if (v8 & 1) != 0 || ([v4 isEqualToString:@"AVMobileImageNameNoImage"])
  {
    [(AVButton *)self setImage:0 forState:0];
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69DCAB8];
    v14 = [(AVButton *)self activeFont];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __31__AVButton_setActiveImageName___block_invoke;
    v15[3] = &unk_1E7209D60;
    objc_copyWeak(&v17, &location);
    v16 = v4;
    [v13 avkit_imageWithSymbolNamed:v16 font:v14 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

LABEL_20:
}

- (id)_preferredFont
{
  v1 = a1;
  if (a1)
  {
    if ([a1 hasAlternateAppearance])
    {
      [v1 alternateFullScreenFont];
    }

    else
    {
      [v1 fullScreenFont];
    }
    v2 = ;
    if ([v1 hasFullScreenAppearance])
    {
      v3 = v2;
    }

    else
    {
      v3 = [v1 inlineFont];
    }

    v1 = v3;
  }

  return v1;
}

void __31__AVButton_setActiveImageName___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained activeImageName];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setImage:v13 forState:0];

    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 isFirstGeneration];

    if ((v8 & 1) == 0)
    {
      v9 = objc_loadWeakRetained((a1 + 40));
      [v9 invalidateIntrinsicContentSize];

      v10 = objc_loadWeakRetained((a1 + 40));
      v11 = [v10 superview];
      v12 = objc_loadWeakRetained((a1 + 40));
      [v11 avkit_intrinsicContentSizeOfSubviewWasInvalidated:v12];
    }
  }
}

- (void)setAlternateImageName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_alternateImageName isEqualToString:?])
  {
    v4 = [v6 copy];
    alternateImageName = self->_alternateImageName;
    self->_alternateImageName = v4;

    [(AVButton *)self _updateImageIfNeeded];
  }
}

- (void)_updateImageIfNeeded
{
  if (a1)
  {
    if ([a1 hasAlternateAppearance])
    {
      [a1 alternateImageName];
    }

    else
    {
      [a1 imageName];
    }
    v2 = ;
    [a1 setActiveImageName:v2];
  }
}

- (void)setImageName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_imageName isEqualToString:?])
  {
    v4 = [v6 copy];
    imageName = self->_imageName;
    self->_imageName = v4;

    [(AVButton *)self _updateImageIfNeeded];
  }
}

- (void)setHasAlternateAppearance:(BOOL)a3
{
  if (self->_hasAlternateAppearance != a3)
  {
    self->_hasAlternateAppearance = a3;
    [(AVButton *)self _updateImageIfNeeded];
  }
}

- (void)setHasFullScreenAppearance:(BOOL)a3
{
  if (self->_hasFullScreenAppearance != a3)
  {
    self->_hasFullScreenAppearance = a3;
    [(AVButton *)self _updateImageIfNeeded];

    [(AVButton *)self _updateEdgeInsets];
  }
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVButton;
  [(AVButton *)&v5 willMoveToWindow:?];
  if (a3)
  {
    [(AVButton *)self _updateImageIfNeeded];
  }
}

- (void)setRemoved:(BOOL)a3
{
  if (self->_removed != a3)
  {
    self->_removed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVButton *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVButton *)self _updateLayoutItem];
  }
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVButton *)self _updateLayoutItem];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVButton *)self isCollapsed]|| ![(AVButton *)self isIncluded])
  {
    return 1;
  }

  return [(AVButton *)self isRemoved];
}

+ (id)buttonWithAccessibilityIdentifier:(id)a3 accessibilityLabel:(id)a4 isFirstGeneration:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() buttonWithType:0];
  [v9 setFirstGeneration:v5];
  v10 = +[AVKitGlobalSettings shared];
  [v10 thirdGenerationControlsEnabled];
  [v9 setUsesCustomBlendingEffects:0];

  if (!v5)
  {
    [v9 setPointerInteractionEnabled:1];
  }

  [v9 _setVisualEffectViewEnabled:0 backgroundColor:0];
  LODWORD(v11) = 1148846080;
  [v9 setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v14];
  [v9 setIncluded:1];
  [v9 setAccessibilityIdentifier:v8];

  [v9 setHitRectInsets:{-16.0, -16.0, -16.0, -16.0}];
  [v9 setForceThreshold:2.0];
  [v9 setTintEffectStyle:1];
  [v9 setAdjustsImageWhenHighlighted:0];
  [v9 setMicaSnapshotAlpha:1.0];
  v15 = *MEMORY[0x1E69DB970];
  v16 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB970]];
  [v9 setFullScreenFont:v16];

  v17 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC0] weight:v15];
  [v9 setAlternateFullScreenFont:v17];

  v18 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDD00] weight:v15];
  [v9 setInlineFont:v18];

  v19 = *(v9 + 744);
  *(v9 + 744) = v7;
  v20 = v7;

  v21 = objc_alloc_init(AVLayoutItemAttributes);
  v22 = *(v9 + 784);
  *(v9 + 784) = v21;

  v23 = *(v9 + 784);
  [v9 intrinsicContentSize];
  [v23 setMinimumSize:?];
  [*(v9 + 784) setCollapsed:{objc_msgSend(v9, "isCollapsed")}];
  [*(v9 + 784) setIncluded:{objc_msgSend(v9, "isIncluded")}];
  [*(v9 + 784) setHasFlexibleContentSize:0];
  v24 = *(v9 + 784);
  v25 = [v9 accessibilityIdentifier];
  [v24 setAccessibilityIdentifier:v25];

  return v9;
}

+ (id)buttonWithAccessibilityIdentifier:(id)a3 isFirstGeneration:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [objc_opt_class() buttonWithAccessibilityIdentifier:v5 accessibilityLabel:0 isFirstGeneration:v4];

  return v6;
}

+ (id)customHighlightedAnimationButtonWithAccessibilityIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() buttonWithAccessibilityIdentifier:v3 isFirstGeneration:0];

  v4[752] = 1;

  return v4;
}

@end