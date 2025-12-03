@interface AVButton
+ (id)buttonWithAccessibilityIdentifier:(id)identifier accessibilityLabel:(id)label isFirstGeneration:(BOOL)generation;
+ (id)buttonWithAccessibilityIdentifier:(id)identifier isFirstGeneration:(BOOL)generation;
+ (id)customHighlightedAnimationButtonWithAccessibilityIdentifier:(id)identifier;
- (AVContentIntersectingDelegate)contentIntersectingDelegate;
- (BOOL)_hasAnyTitle;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
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
- (void)_handleUserInteractionGestureRecognizer:(id)recognizer;
- (void)_resetTrackedState;
- (void)_updateBackgroundEffectViewIsHidden;
- (void)_updateEdgeInsets;
- (void)_updateImageIfNeeded;
- (void)_updateLayoutItem;
- (void)_updateTintColorIfNeeded;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)interruptActiveInteractions;
- (void)layoutAttributesDidChange;
- (void)layoutSubviews;
- (void)setActiveImageName:(id)name;
- (void)setAlternateImageName:(id)name;
- (void)setBounds:(CGRect)bounds;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setContentIntersection:(CGRect)intersection;
- (void)setEnabled:(BOOL)enabled;
- (void)setExtrinsicContentSize:(CGSize)size;
- (void)setForce:(double)force;
- (void)setHasAlternateAppearance:(BOOL)appearance;
- (void)setHasFullScreenAppearance:(BOOL)appearance;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setImageName:(id)name;
- (void)setIncluded:(BOOL)included;
- (void)setMicaPackage:(id)package;
- (void)setMultipleTouchesEndsTracking:(BOOL)tracking;
- (void)setRemoved:(BOOL)removed;
- (void)setTitle:(id)title forState:(unint64_t)state;
- (void)setUsesBackgroundEffectViewForTextOnlyButtons:(BOOL)buttons;
- (void)setWasLongPressed:(BOOL)pressed;
- (void)updateForContentIntersection;
- (void)willMoveToWindow:(id)window;
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

- (void)_handleUserInteractionGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (-[AVButton multipleTouchesEndsTracking](self, "multipleTouchesEndsTracking") && [recognizerCopy numberOfTouches] >= 2)
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
  accessibilityIdentifier = [(AVButton *)self accessibilityIdentifier];
  v6 = [v4 stringWithFormat:@" %@", accessibilityIdentifier];
  v7 = [v3 stringByAppendingString:v6];

  return v7;
}

- (void)interruptActiveInteractions
{
  contextMenuInteraction = [(AVButton *)self contextMenuInteraction];
  [contextMenuInteraction dismissMenu];
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
      contentIntersectingDelegate = [(AVButton *)self contentIntersectingDelegate];
      if (contentIntersectingDelegate)
      {
        v10 = contentIntersectingDelegate;
        [contentIntersectingDelegate viewIsOverVideoDidChange:self];
        contentIntersectingDelegate = v10;
      }
    }
  }
}

- (void)setContentIntersection:(CGRect)intersection
{
  height = intersection.size.height;
  width = intersection.size.width;
  y = intersection.origin.y;
  x = intersection.origin.x;
  p_contentIntersection = &self->_contentIntersection;
  if (!CGRectEqualToRect(intersection, self->_contentIntersection))
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
  layoutAttributes = [(AVButton *)self layoutAttributes];
  -[AVButton setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVButton;
  [(AVButton *)&v5 layoutSubviews];
  backgroundEffectView = [(AVButton *)self backgroundEffectView];
  if (backgroundEffectView)
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
    [backgroundEffectView setFrame:{v7.origin.x, v7.origin.y, v7.size.width, v7.size.height}];
  }
}

- (CGSize)intrinsicContentSize
{
  if ([(AVButton *)self isFirstGeneration])
  {
    if (![(AVButton *)self _hasAnyTitle])
    {
LABEL_8:
      _preferredLayoutSize = [(AVButton *)self _preferredLayoutSize];
      goto LABEL_11;
    }

    v3 = [(AVButton *)self imageForState:0];
    if (v3)
    {

      goto LABEL_8;
    }

    micaPackage = [(AVButton *)self micaPackage];

    if (micaPackage)
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
  result.width = _preferredLayoutSize;
  return result;
}

- (BOOL)_hasAnyTitle
{
  selfCopy = self;
  if (self)
  {
    v2 = [self titleForState:0];
    if ([v2 length])
    {
      selfCopy = 1;
    }

    else
    {
      v3 = [selfCopy attributedTitleForState:0];
      selfCopy = [v3 length] != 0;
    }
  }

  return selfCopy;
}

- (double)_preferredLayoutSize
{
  if (!self)
  {
    return 0.0;
  }

  [self extrinsicContentSize];
  v3 = v2;
  if (v4 > 0.0 && v2 <= 0.0)
  {
    if ([self hasFullScreenAppearance])
    {
      [self fullscreenAlternateImagePadding];
    }

    else
    {
      [self alternateImagePadding];
    }

    v6 = v5;
    if (![self hasAlternateAppearance])
    {
      v6 = 0.0;
    }

    v7 = [self imageForState:0];
    [v7 size];
    v3 = v6 + v8;
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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

- (void)setBounds:(CGRect)bounds
{
  v19.receiver = self;
  v19.super_class = AVButton;
  [(AVButton *)&v19 setBounds:?];
  micaPackage = [(AVButton *)self micaPackage];
  rootLayer = [micaPackage rootLayer];
  if (rootLayer)
  {
    v6 = rootLayer;
    UIRectGetCenter();
    v8 = v7;
    v10 = v9;
    micaPackage2 = [(AVButton *)self micaPackage];
    rootLayer2 = [micaPackage2 rootLayer];
    [rootLayer2 position];
    v14 = v13;
    v16 = v15;

    if (v8 != v14 || v10 != v16)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      micaPackage3 = [(AVButton *)self micaPackage];
      rootLayer3 = [micaPackage3 rootLayer];
      [(AVButton *)self bounds];
      UIRectGetCenter();
      [rootLayer3 setPosition:?];

      [MEMORY[0x1E6979518] commit];
    }
  }

  else
  {
  }
}

- (id)accessibilityLabel
{
  accessibilityLabel = self->_accessibilityLabelOverride;
  if (!accessibilityLabel)
  {
    v5.receiver = self;
    v5.super_class = AVButton;
    accessibilityLabel = [(AVButton *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  titleCopy = title;
  v7 = [(AVButton *)self titleForState:state];
  v12.receiver = self;
  v12.super_class = AVButton;
  [(AVButton *)&v12 setTitle:titleCopy forState:state];
  LOBYTE(state) = [v7 isEqualToString:titleCopy];

  if ((state & 1) == 0)
  {
    [(AVButton *)self _updateBackgroundEffectViewIsHidden];
    [(AVButton *)self _updateEdgeInsets];
    [(AVButton *)self _updateLayoutItem];
    [(AVButton *)self invalidateIntrinsicContentSize];
    superview = [(AVButton *)self superview];
    [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }

  if (titleCopy && !v7)
  {
    layer = [(AVButton *)self layer];
    [layer setCompositingFilter:0];

    tintEffectStyle = [(AVButton *)self tintEffectStyle];
    titleLabel = [(AVButton *)self titleLabel];
    if (tintEffectStyle)
    {
      [AVBackdropView applySecondaryGlyphTintToView:titleLabel];
    }

    else
    {
      [AVBackdropView applyPrimaryGlyphTintToView:titleLabel];
    }
  }
}

- (void)_updateBackgroundEffectViewIsHidden
{
  if (self)
  {
    if ([(AVButton *)self _hasAnyTitle])
    {
      v2 = [self imageForState:0];
      if (v2)
      {
        v3 = 1;
      }

      else
      {
        micaPackage = [self micaPackage];
        if (micaPackage)
        {
          v3 = 1;
        }

        else
        {
          v3 = [self usesBackgroundEffectViewForTextOnlyButtons] ^ 1;
        }
      }
    }

    else
    {
      v3 = 1;
    }

    backgroundEffectView = [self backgroundEffectView];
    [backgroundEffectView setHidden:v3];
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

  usesBackgroundEffectViewForTextOnlyButtons = [v1 usesBackgroundEffectViewForTextOnlyButtons];
  usesBackgroundEffectViewForTextOnlyButtons2 = [v1 usesBackgroundEffectViewForTextOnlyButtons];
  v4 = [v1 imageForState:0];
  if (v4)
  {
  }

  else
  {
    if (usesBackgroundEffectViewForTextOnlyButtons2)
    {
      v5 = 14.0;
    }

    else
    {
      v5 = 16.0;
    }

    if (usesBackgroundEffectViewForTextOnlyButtons)
    {
      v6 = 4.0;
    }

    else
    {
      v6 = 16.0;
    }

    micaPackage = [v1 micaPackage];

    if (!micaPackage)
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
  if (self)
  {
    layoutAttributes = [self layoutAttributes];
    [self intrinsicContentSize];
    [layoutAttributes setMinimumSize:?];

    layoutAttributes2 = [self layoutAttributes];
    if ([self isIncluded])
    {
      v4 = [self isRemoved] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    [layoutAttributes2 setIncluded:v4];

    layoutAttributes3 = [self layoutAttributes];
    [layoutAttributes3 setCollapsed:{objc_msgSend(self, "isCollapsed")}];
  }
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  _preferredLayoutSize = [(AVButton *)self _preferredLayoutSize];
  v9 = v8;
  if (imageCopy)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    micaPackage = [(AVButton *)self micaPackage];
    rootLayer = [micaPackage rootLayer];
    [rootLayer setHidden:1];

    if ([(AVButton *)self usesCustomBlendingEffects])
    {
      if ([(AVButton *)self isFirstGeneration])
      {
        layer = [(AVButton *)self layer];
        compositingFilter = [layer compositingFilter];

        if (!compositingFilter)
        {
          layer2 = [(AVButton *)self layer];
          [layer2 setCompositingFilter:*MEMORY[0x1E6979CF8]];

          v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:-[AVButton _imageViewAlpha](self)];
          [(AVButton *)self setTintColor:v15];
        }
      }
    }

    v26.receiver = self;
    v26.super_class = AVButton;
    [(AVButton *)&v26 setImage:imageCopy forState:state];
    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = AVButton;
    [(AVButton *)&v25 setImage:0 forState:state];
    [(AVButton *)self _updateTintColorIfNeeded];
  }

  isFirstGeneration = [(AVButton *)self isFirstGeneration];
  if (_preferredLayoutSize != [(AVButton *)self _preferredLayoutSize]|| v9 != v17 || !isFirstGeneration)
  {
    [(AVButton *)self invalidateIntrinsicContentSize];
    superview = [(AVButton *)self superview];
    [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }

  [(AVButton *)self setContentEdgeInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(AVButton *)self _updateBackgroundEffectViewIsHidden];
  [(AVButton *)self _updateEdgeInsets];
  [(AVButton *)self _updateLayoutItem];
  if (!imageCopy)
  {
    micaPackage2 = [(AVButton *)self micaPackage];
    rootLayer2 = [micaPackage2 rootLayer];
    isHidden = [rootLayer2 isHidden];

    if (isHidden)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      layer3 = [(AVButton *)self layer];
      [layer3 setCompositingFilter:0];

      micaPackage3 = [(AVButton *)self micaPackage];
      rootLayer3 = [micaPackage3 rootLayer];
      [rootLayer3 setHidden:0];

      [MEMORY[0x1E6979518] commit];
    }
  }
}

- (double)_imageViewAlpha
{
  if (!self)
  {
    return 0.0;
  }

  if ([self tintEffectStyle])
  {
    v2 = 0.55;
  }

  else
  {
    v2 = 0.75;
  }

  if (![self usesCustomBlendingEffects])
  {
    v2 = 1.0;
  }

  micaPackage = [self micaPackage];
  if (micaPackage)
  {
    [self micaSnapshotAlpha];
    v2 = v4;
  }

  return v2;
}

- (void)_updateTintColorIfNeeded
{
  if (self && [self usesCustomBlendingEffects] && objc_msgSend(self, "isFirstGeneration"))
  {
    imageName = [self imageName];
    if (imageName)
    {
    }

    else
    {
      v3 = [self imageForState:0];

      if (!v3)
      {
        return;
      }
    }

    v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:-[AVButton _imageViewAlpha](self)];
    [self setTintColor:v4];
  }
}

- (void)cancelTrackingWithEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = AVButton;
  [(AVButton *)&v5 cancelTrackingWithEvent:event];
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
    longPressTimer = [result longPressTimer];
    [longPressTimer invalidate];

    [v1 setHorizontalTranslationOfLongPress:0.0];
    [v1 setPreviousHorizontalPositionOfLongPress:0];
    [v1 setForce:0.0];
    [v1 setWasLongPressed:0];
    [v1 setMaximumForceSinceTrackingBegan:0.0];

    return [v1 setWasForcePressTriggered:0];
  }

  return result;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = AVButton;
  [(AVButton *)&v6 endTrackingWithTouch:touch withEvent:event];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVButton_endTrackingWithTouch_withEvent___block_invoke;
  block[3] = &unk_1E720A090;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  v30.receiver = self;
  v30.super_class = AVButton;
  v7 = [(AVButton *)&v30 continueTrackingWithTouch:touchCopy withEvent:event];
  if (v7)
  {
    [(AVButton *)self maximumForceSinceTrackingBegan];
    v9 = v8;
    [(AVButton *)self forceThreshold];
    v11 = v10;
    [(AVButton *)self maximumForceSinceTrackingBegan];
    v13 = v12;
    [touchCopy force];
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
          longPressTimer = [(AVButton *)self longPressTimer];
          [longPressTimer invalidate];

          [touchCopy force];
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
      previousHorizontalPositionOfLongPress = [(AVButton *)self previousHorizontalPositionOfLongPress];

      if (previousHorizontalPositionOfLongPress)
      {
        previousHorizontalPositionOfLongPress2 = [(AVButton *)self previousHorizontalPositionOfLongPress];
        [previousHorizontalPositionOfLongPress2 doubleValue];
        v25 = v24;

        [touchCopy locationInView:self];
        [(AVButton *)self setHorizontalTranslationOfLongPress:v26 - v25];
      }

      v27 = MEMORY[0x1E696AD98];
      [touchCopy locationInView:self];
      v28 = [v27 numberWithDouble:?];
      [(AVButton *)self setPreviousHorizontalPositionOfLongPress:v28];
    }
  }

  return v7;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  v19.receiver = self;
  v19.super_class = AVButton;
  v8 = [(AVButton *)&v19 beginTrackingWithTouch:touchCopy withEvent:eventCopy];
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
    longPressTimer = [(AVButton *)self longPressTimer];
    [longPressTimer setTolerance:0.05];

    [touchCopy force];
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(AVButton *)self wasLongPressed])
  {
    highlightedCopy = highlightedCopy & ~[(AVButton *)self disablesHighlightWhenLongPressed];
  }

  v9.receiver = self;
  v9.super_class = AVButton;
  if (highlightedCopy != [(AVButton *)&v9 isHighlighted])
  {
    v8.receiver = self;
    v8.super_class = AVButton;
    [(AVButton *)&v8 setHighlighted:highlightedCopy];
    if (!self->_disablesHighlightAnimation)
    {
      highlightAnimator = [(AVButton *)self highlightAnimator];
      if ([highlightAnimator isRunning] && objc_msgSend(highlightAnimator, "isInterruptible"))
      {
        [highlightAnimator stopAnimation:0];
        [highlightAnimator finishAnimationAtPosition:2];
      }

      if ([highlightAnimator isRunning])
      {
        v6 = highlightAnimator;
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

- (void)setEnabled:(BOOL)enabled
{
  v6.receiver = self;
  v6.super_class = AVButton;
  [(AVButton *)&v6 setEnabled:?];
  if ([(AVButton *)self isTracking]&& !enabled)
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

- (void)setUsesBackgroundEffectViewForTextOnlyButtons:(BOOL)buttons
{
  if (self->_usesBackgroundEffectViewForTextOnlyButtons != buttons)
  {
    buttonsCopy = buttons;
    self->_usesBackgroundEffectViewForTextOnlyButtons = buttons;
    backgroundEffectView = [(AVButton *)self backgroundEffectView];

    if (!backgroundEffectView && buttonsCopy)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
      [(AVButton *)self setBackgroundEffectView:v7];

      backgroundEffectView2 = [(AVButton *)self backgroundEffectView];
      [(AVButton *)self insertSubview:backgroundEffectView2 atIndex:0];

      backgroundEffectView3 = [(AVButton *)self backgroundEffectView];
      [backgroundEffectView3 setUserInteractionEnabled:0];

      backgroundEffectView4 = [(AVButton *)self backgroundEffectView];
      v11 = MEMORY[0x1E69DD290];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v13 = [v11 effectCompositingColor:whiteColor withMode:24 alpha:0.1];
      [backgroundEffectView4 setEffect:v13];

      backgroundEffectView5 = [(AVButton *)self backgroundEffectView];
      [backgroundEffectView5 _setContinuousCornerRadius:6.0];
    }

    backgroundEffectView6 = [(AVButton *)self backgroundEffectView];
    [backgroundEffectView6 setHidden:!buttonsCopy];

    [(AVButton *)self _updateEdgeInsets];
  }
}

- (void)setMultipleTouchesEndsTracking:(BOOL)tracking
{
  if (self->_multipleTouchesEndsTracking != tracking)
  {
    self->_multipleTouchesEndsTracking = tracking;
    if (tracking)
    {
      v4 = [[AVUserInteractionObserverGestureRecognizer alloc] initWithTarget:self action:sel__handleUserInteractionGestureRecognizer_];
      [(AVButton *)self setUserInteractionGestureRecognizer:v4];

      userInteractionGestureRecognizer = [(AVButton *)self userInteractionGestureRecognizer];
      [(AVButton *)self addGestureRecognizer:userInteractionGestureRecognizer];
    }

    else
    {
      userInteractionGestureRecognizer2 = [(AVButton *)self userInteractionGestureRecognizer];
      [(AVButton *)self removeGestureRecognizer:userInteractionGestureRecognizer2];

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

- (void)setMicaPackage:(id)package
{
  packageCopy = package;
  micaPackage = self->_micaPackage;
  if (micaPackage != packageCopy)
  {
    v29 = packageCopy;
    rootLayer = [(AVMicaPackage *)micaPackage rootLayer];
    [rootLayer removeFromSuperlayer];

    objc_storeStrong(&self->_micaPackage, package);
    rootLayer2 = [(AVMicaPackage *)v29 rootLayer];
    v9 = [(AVButton *)self imageForState:0];
    [rootLayer2 setHidden:v9 != 0];

    rootLayer3 = [(AVMicaPackage *)v29 rootLayer];
    LOBYTE(v9) = [rootLayer3 isHidden];

    if ((v9 & 1) == 0)
    {
      layer = [(AVButton *)self layer];
      [layer setCompositingFilter:0];
    }

    if (v29)
    {
      layer2 = [(AVButton *)self layer];
      rootLayer4 = [(AVMicaPackage *)v29 rootLayer];
      [layer2 addSublayer:rootLayer4];
    }

    micaPackage = [(AVButton *)self micaPackage];
    rootLayer5 = [micaPackage rootLayer];
    if (rootLayer5)
    {
      v16 = rootLayer5;
      [(AVButton *)self bounds];
      UIRectGetCenter();
      v18 = v17;
      v20 = v19;
      micaPackage2 = [(AVButton *)self micaPackage];
      rootLayer6 = [micaPackage2 rootLayer];
      [rootLayer6 position];
      v24 = v23;
      v26 = v25;

      if (v18 != v24 || v20 != v26)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        micaPackage3 = [(AVButton *)self micaPackage];
        rootLayer7 = [micaPackage3 rootLayer];
        [(AVButton *)self bounds];
        UIRectGetCenter();
        [rootLayer7 setPosition:?];

        [MEMORY[0x1E6979518] commit];
      }
    }

    else
    {
    }

    [(AVButton *)self _updateEdgeInsets];
    [(AVButton *)self _updateLayoutItem];
    packageCopy = v29;
  }

  MEMORY[0x1EEE66BB8](micaPackage, packageCopy);
}

- (void)setForce:(double)force
{
  if (self->_force != force)
  {
    self->_force = force;
    if (![(AVButton *)self treatsForcePressAsLongPress])
    {

      [(AVButton *)self sendActionsForControlEvents:0x2000000];
    }
  }
}

- (void)setWasLongPressed:(BOOL)pressed
{
  if (self->_wasLongPressed != pressed)
  {
    self->_wasLongPressed = pressed;
    if (pressed)
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

- (void)setExtrinsicContentSize:(CGSize)size
{
  if (size.width != self->_extrinsicContentSize.width || size.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = size;
    if ([(AVButton *)self isFirstGeneration])
    {
      [(AVButton *)self invalidateIntrinsicContentSize];
      superview = [(AVButton *)self superview];
      [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
    }

    [(AVButton *)self _updateLayoutItem];
  }
}

- (void)setActiveImageName:(id)name
{
  nameCopy = name;
  if ([(NSString *)self->_activeImageName isEqualToString:nameCopy])
  {
    activeFont = [(AVButton *)self activeFont];
    _preferredFont = [(AVButton *)self _preferredFont];
    if ([activeFont isEqual:_preferredFont])
    {

      goto LABEL_20;
    }

    if (nameCopy)
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
    if (nameCopy)
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
  v9 = [nameCopy copy];
  v10 = self->_activeImageName;
  self->_activeImageName = v9;

  _preferredFont2 = [(AVButton *)self _preferredFont];
  activeFont = self->_activeFont;
  self->_activeFont = _preferredFont2;

  if (v8 & 1) != 0 || ([nameCopy isEqualToString:@"AVMobileImageNameNoImage"])
  {
    [(AVButton *)self setImage:0 forState:0];
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69DCAB8];
    activeFont2 = [(AVButton *)self activeFont];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __31__AVButton_setActiveImageName___block_invoke;
    v15[3] = &unk_1E7209D60;
    objc_copyWeak(&v17, &location);
    v16 = nameCopy;
    [v13 avkit_imageWithSymbolNamed:v16 font:activeFont2 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

LABEL_20:
}

- (id)_preferredFont
{
  selfCopy = self;
  if (self)
  {
    if ([self hasAlternateAppearance])
    {
      [selfCopy alternateFullScreenFont];
    }

    else
    {
      [selfCopy fullScreenFont];
    }
    v2 = ;
    if ([selfCopy hasFullScreenAppearance])
    {
      inlineFont = v2;
    }

    else
    {
      inlineFont = [selfCopy inlineFont];
    }

    selfCopy = inlineFont;
  }

  return selfCopy;
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

- (void)setAlternateImageName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_alternateImageName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    alternateImageName = self->_alternateImageName;
    self->_alternateImageName = v4;

    [(AVButton *)self _updateImageIfNeeded];
  }
}

- (void)_updateImageIfNeeded
{
  if (self)
  {
    if ([self hasAlternateAppearance])
    {
      [self alternateImageName];
    }

    else
    {
      [self imageName];
    }
    v2 = ;
    [self setActiveImageName:v2];
  }
}

- (void)setImageName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_imageName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    imageName = self->_imageName;
    self->_imageName = v4;

    [(AVButton *)self _updateImageIfNeeded];
  }
}

- (void)setHasAlternateAppearance:(BOOL)appearance
{
  if (self->_hasAlternateAppearance != appearance)
  {
    self->_hasAlternateAppearance = appearance;
    [(AVButton *)self _updateImageIfNeeded];
  }
}

- (void)setHasFullScreenAppearance:(BOOL)appearance
{
  if (self->_hasFullScreenAppearance != appearance)
  {
    self->_hasFullScreenAppearance = appearance;
    [(AVButton *)self _updateImageIfNeeded];

    [(AVButton *)self _updateEdgeInsets];
  }
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = AVButton;
  [(AVButton *)&v5 willMoveToWindow:?];
  if (window)
  {
    [(AVButton *)self _updateImageIfNeeded];
  }
}

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    self->_removed = removed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVButton *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVButton *)self _updateLayoutItem];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
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

+ (id)buttonWithAccessibilityIdentifier:(id)identifier accessibilityLabel:(id)label isFirstGeneration:(BOOL)generation
{
  generationCopy = generation;
  labelCopy = label;
  identifierCopy = identifier;
  v9 = [objc_opt_class() buttonWithType:0];
  [v9 setFirstGeneration:generationCopy];
  v10 = +[AVKitGlobalSettings shared];
  [v10 thirdGenerationControlsEnabled];
  [v9 setUsesCustomBlendingEffects:0];

  if (!generationCopy)
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
  [v9 setAccessibilityIdentifier:identifierCopy];

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
  *(v9 + 744) = labelCopy;
  v20 = labelCopy;

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
  accessibilityIdentifier = [v9 accessibilityIdentifier];
  [v24 setAccessibilityIdentifier:accessibilityIdentifier];

  return v9;
}

+ (id)buttonWithAccessibilityIdentifier:(id)identifier isFirstGeneration:(BOOL)generation
{
  generationCopy = generation;
  identifierCopy = identifier;
  v6 = [objc_opt_class() buttonWithAccessibilityIdentifier:identifierCopy accessibilityLabel:0 isFirstGeneration:generationCopy];

  return v6;
}

+ (id)customHighlightedAnimationButtonWithAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_opt_class() buttonWithAccessibilityIdentifier:identifierCopy isFirstGeneration:0];

  v4[752] = 1;

  return v4;
}

@end