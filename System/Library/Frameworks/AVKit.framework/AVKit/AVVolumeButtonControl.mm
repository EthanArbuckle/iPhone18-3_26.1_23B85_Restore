@interface AVVolumeButtonControl
- (AVVolumeButtonControl)initWithFrame:(CGRect)frame;
- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)point;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)cumulativeTranslationSincePanningBegan;
- (CGPoint)initialPreciseLocationOfTouch;
- (CGPoint)locationOfTouchInWindow;
- (CGPoint)translationOfPanFromPreviousTouch;
- (CGRect)hitRect;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (NSDirectionalEdgeInsets)hitRectInsets;
- (NSTimer)longPressTimer;
- (UISelectionFeedbackGenerator)feedbackGenerator;
- (UIViewPropertyAnimator)highlightAnimator;
- (id)imageNameForMicaPackageState;
- (void)_updateLayoutItem;
- (void)_updateMicaPackage:(id)package;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutAttributesDidChange;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setExtrinsicContentSize:(CGSize)size;
- (void)setHasFullScreenAppearance:(BOOL)appearance;
- (void)setIncluded:(BOOL)included;
- (void)setMicaPackage:(id)package;
- (void)setMicaPackageStateName:(id)name;
- (void)setNeedsUpdateGlyphRenderingMode;
- (void)setRemoved:(BOOL)removed;
- (void)setShowsHighlightedAppearance:(BOOL)appearance;
- (void)setTrackingState:(int64_t)state;
- (void)triggerSelectionChangedFeedback;
@end

@implementation AVVolumeButtonControl

- (NSTimer)longPressTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_longPressTimer);

  return WeakRetained;
}

- (CGPoint)initialPreciseLocationOfTouch
{
  x = self->_initialPreciseLocationOfTouch.x;
  y = self->_initialPreciseLocationOfTouch.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIViewPropertyAnimator)highlightAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightAnimator);

  return WeakRetained;
}

- (CGPoint)locationOfTouchInWindow
{
  x = self->_locationOfTouchInWindow.x;
  y = self->_locationOfTouchInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cumulativeTranslationSincePanningBegan
{
  x = self->_cumulativeTranslationSincePanningBegan.x;
  y = self->_cumulativeTranslationSincePanningBegan.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translationOfPanFromPreviousTouch
{
  x = self->_translationOfPanFromPreviousTouch.x;
  y = self->_translationOfPanFromPreviousTouch.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSDirectionalEdgeInsets)hitRectInsets
{
  top = self->_hitRectInsets.top;
  leading = self->_hitRectInsets.leading;
  bottom = self->_hitRectInsets.bottom;
  trailing = self->_hitRectInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

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
  layoutAttributes = [(AVVolumeButtonControl *)self layoutAttributes];
  [(AVVolumeButtonControl *)self intrinsicContentSize];
  [layoutAttributes setMinimumSize:?];

  layoutAttributes2 = [(AVVolumeButtonControl *)self layoutAttributes];
  if ([(AVVolumeButtonControl *)self isIncluded])
  {
    v5 = [(AVVolumeButtonControl *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [layoutAttributes2 setIncluded:v5];

  layoutAttributes3 = [(AVVolumeButtonControl *)self layoutAttributes];
  [layoutAttributes3 setCollapsed:{-[AVVolumeButtonControl isCollapsed](self, "isCollapsed")}];
}

- (void)_updateMicaPackage:(id)package
{
  packageCopy = package;
  if (packageCopy && ![(AVVolumeButtonControl *)self hasFullScreenAppearance])
  {
    avkit_isBeingScrolled = [(UIView *)self avkit_isBeingScrolled];
    micaPackageStateName = [(AVVolumeButtonControl *)self micaPackageStateName];
    [packageCopy setState:micaPackageStateName color:0];

    if (avkit_isBeingScrolled)
    {
      objc_initWeak(&location, self);
      imageNameForMicaPackageState = [(AVVolumeButtonControl *)self imageNameForMicaPackageState];
      v44 = MEMORY[0x1E69DCAB8];
      imageNameForMicaPackageState2 = [(AVVolumeButtonControl *)self imageNameForMicaPackageState];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __44__AVVolumeButtonControl__updateMicaPackage___block_invoke;
      v47[3] = &unk_1E7209D60;
      objc_copyWeak(&v49, &location);
      v46 = imageNameForMicaPackageState;
      v48 = v46;
      [v44 avkit_imageNamed:imageNameForMicaPackageState2 completion:v47];

      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
      goto LABEL_21;
    }
  }

  else
  {
    micaPackageStateName2 = [(AVVolumeButtonControl *)self micaPackageStateName];
    [packageCopy setState:micaPackageStateName2 color:0];
  }

  rootLayer = [packageCopy rootLayer];
  superlayer = [rootLayer superlayer];
  micaPackageContainerView = [(AVVolumeButtonControl *)self micaPackageContainerView];
  layer = [micaPackageContainerView layer];

  if (superlayer != layer)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    micaPackageContainerView2 = [(AVVolumeButtonControl *)self micaPackageContainerView];
    [(AVVolumeButtonControl *)self addSubview:micaPackageContainerView2];

    layer2 = [(AVVolumeButtonControl *)self layer];
    [layer2 setCompositingFilter:0];

    micaPackageContainerView3 = [(AVVolumeButtonControl *)self micaPackageContainerView];
    layer3 = [micaPackageContainerView3 layer];
    [layer3 setCompositingFilter:0];

    micaPackageContainerView4 = [(AVVolumeButtonControl *)self micaPackageContainerView];
    layer4 = [micaPackageContainerView4 layer];
    rootLayer2 = [packageCopy rootLayer];
    [layer4 addSublayer:rootLayer2];

    [MEMORY[0x1E6979518] commit];
  }

  v17 = +[AVKitGlobalSettings shared];
  thirdGenerationControlsEnabled = [v17 thirdGenerationControlsEnabled];

  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection = [avkit_mainScreen traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    volumeControllerType = [(AVVolumeButtonControl *)self volumeControllerType];

    if (volumeControllerType == 1)
    {
      v22 = 1.2;
    }

    else
    {
      v22 = 1.0;
    }
  }

  else
  {

    v22 = 1.0;
  }

  avkit_mainScreen2 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection2 = [avkit_mainScreen2 traitCollection];
  v25 = [traitCollection2 userInterfaceIdiom] == 5;

  hasFullScreenAppearance = [(AVVolumeButtonControl *)self hasFullScreenAppearance];
  v27 = 20.0;
  if (hasFullScreenAppearance)
  {
    v27 = 24.0;
  }

  v28 = v22 * v27;
  v29 = 16.17;
  if (hasFullScreenAppearance)
  {
    v29 = 17.71;
  }

  if ((v25 & thirdGenerationControlsEnabled) != 0)
  {
    v28 = v29;
  }

  [packageCopy setTargetSize:{v28, v28}];
  [(AVVolumeButtonControl *)self bounds];
  UIRectGetCenter();
  v31 = v30;
  v33 = v32;
  rootLayer3 = [packageCopy rootLayer];
  [rootLayer3 position];
  v36 = v35;
  v38 = v37;

  if (v31 != v36 || v33 != v38)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    rootLayer4 = [packageCopy rootLayer];
    [(AVVolumeButtonControl *)self bounds];
    UIRectGetCenter();
    [rootLayer4 setPosition:?];

    [MEMORY[0x1E6979518] commit];
  }

  imageView = [(AVVolumeButtonControl *)self imageView];
  [imageView removeFromSuperview];

LABEL_21:
}

void __44__AVVolumeButtonControl__updateMicaPackage___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained imageNameForMicaPackageState];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 micaPackage];
    v8 = [v7 rootLayer];
    [v8 removeFromSuperlayer];

    v9 = +[AVKitGlobalSettings shared];
    LOBYTE(v7) = [v9 thirdGenerationControlsEnabled];

    if ((v7 & 1) == 0)
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      [v10 avkit_makeSubtreeDisallowGroupBlending];

      v11 = objc_loadWeakRetained((a1 + 40));
      v12 = [v11 imageView];
      v13 = [v12 layer];
      [v13 setCompositingFilter:*MEMORY[0x1E6979CF8]];
    }

    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 imageView];
    v16 = [MEMORY[0x1E69DC888] whiteColor];
    [v15 setTintColor:v16];

    v17 = objc_loadWeakRetained((a1 + 40));
    v18 = [v17 imageView];
    [v18 setImage:v26];

    v19 = objc_loadWeakRetained((a1 + 40));
    v20 = [v19 imageView];
    v21 = objc_loadWeakRetained((a1 + 40));
    [v21 bounds];
    [v20 setFrame:?];

    v22 = objc_loadWeakRetained((a1 + 40));
    v23 = [v22 imageView];
    [v23 setContentMode:4];

    v24 = objc_loadWeakRetained((a1 + 40));
    v25 = [v24 imageView];
    [v24 addSubview:v25];

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)layoutAttributesDidChange
{
  layoutAttributes = [(AVVolumeButtonControl *)self layoutAttributes];
  -[AVVolumeButtonControl setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = AVVolumeButtonControl;
  [(AVVolumeButtonControl *)&v13 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(AVVolumeButtonControl *)self extrinsicContentSize];
  if (v7 > 0.0)
  {
    [(AVVolumeButtonControl *)self extrinsicContentSize];
    v4 = v8;
  }

  [(AVVolumeButtonControl *)self extrinsicContentSize];
  if (v9 > 0.0)
  {
    [(AVVolumeButtonControl *)self extrinsicContentSize];
    v6 = v10;
  }

  v11 = v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(AVVolumeButtonControl *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)hitRect
{
  v24.receiver = self;
  v24.super_class = AVVolumeButtonControl;
  [(AVVolumeButtonControl *)&v24 hitRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AVVolumeButtonControl *)self hitRectInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([(AVVolumeButtonControl *)self effectiveUserInterfaceLayoutDirection]== 1)
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
  v5.receiver = self;
  v5.super_class = AVVolumeButtonControl;
  [(AVVolumeButtonControl *)&v5 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  micaPackage = [(AVVolumeButtonControl *)self micaPackage];
  [(AVVolumeButtonControl *)self _updateMicaPackage:micaPackage];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  LOBYTE(self) = [view isDescendantOfView:self];

  return self;
}

- (void)cancelTrackingWithEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = AVVolumeButtonControl;
  [(AVVolumeButtonControl *)&v5 cancelTrackingWithEvent:event];
  longPressTimer = [(AVVolumeButtonControl *)self longPressTimer];
  [longPressTimer invalidate];

  [(AVVolumeButtonControl *)self setTrackingState:0];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = AVVolumeButtonControl;
  [(AVVolumeButtonControl *)&v9 endTrackingWithTouch:touchCopy withEvent:eventCopy];
  longPressTimer = [(AVVolumeButtonControl *)self longPressTimer];
  [longPressTimer invalidate];

  if ([(AVVolumeButtonControl *)self trackingState]== 1)
  {
    [touchCopy locationInView:self];
    if ([(AVVolumeButtonControl *)self pointInside:eventCopy withEvent:?])
    {
      [(AVVolumeButtonControl *)self setTrackingState:2];
    }
  }

  [(AVVolumeButtonControl *)self setTrackingState:0];
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  v39.receiver = self;
  v39.super_class = AVVolumeButtonControl;
  v7 = [(AVVolumeButtonControl *)&v39 continueTrackingWithTouch:touchCopy withEvent:event];
  if (v7)
  {
    if ([(AVVolumeButtonControl *)self trackingState]== 1)
    {
      if (-[AVVolumeButtonControl isLongPressEnabled](self, "isLongPressEnabled") && ([touchCopy force], v8 > 3.0))
      {
        [(AVVolumeButtonControl *)self setTrackingState:3];
      }

      else
      {
        [(AVVolumeButtonControl *)self hitRect];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        [touchCopy locationInView:self];
        v40.x = v17;
        v40.y = v18;
        v41.origin.x = v10;
        v41.origin.y = v12;
        v41.size.width = v14;
        v41.size.height = v16;
        [(AVVolumeButtonControl *)self setShowsHighlightedAppearance:CGRectContainsPoint(v41, v40)];
      }
    }

    [touchCopy preciseLocationInView:self];
    v20 = v19;
    [(AVVolumeButtonControl *)self initialPreciseLocationOfTouch];
    v22 = v20 - v21;
    if (v22 < 0.0)
    {
      v22 = -v22;
    }

    if (v22 > 15.0 || [(AVVolumeButtonControl *)self trackingState]== 4)
    {
      trackingState = [(AVVolumeButtonControl *)self trackingState];
      if (trackingState == 4)
      {
        [touchCopy preciseLocationInView:self];
        v25 = v24;
        v27 = v26;
        [touchCopy precisePreviousLocationInView:self];
        [(AVVolumeButtonControl *)self setTranslationOfPanFromPreviousTouch:v25 - v28, v27 - v29];
        [(AVVolumeButtonControl *)self cumulativeTranslationSincePanningBegan];
        v31 = v30;
        v33 = v32;
        [(AVVolumeButtonControl *)self translationOfPanFromPreviousTouch];
        if (v34 >= 0.0)
        {
          v35 = v34;
        }

        else
        {
          v35 = -v34;
        }

        [(AVVolumeButtonControl *)self translationOfPanFromPreviousTouch];
        if (v36 < 0.0)
        {
          v36 = -v36;
        }

        [(AVVolumeButtonControl *)self setCumulativeTranslationSincePanningBegan:v31 + v35, v33 + v36];
        window = [(AVVolumeButtonControl *)self window];
        [touchCopy preciseLocationInView:window];
        [(AVVolumeButtonControl *)self setLocationOfTouchInWindow:?];

        [(AVVolumeButtonControl *)self sendActionsForControlEvents:0x2000000];
      }

      else if (trackingState == 3 || trackingState == 1)
      {
        [(AVVolumeButtonControl *)self setTrackingState:4];
      }
    }
  }

  return v7;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  v19.receiver = self;
  v19.super_class = AVVolumeButtonControl;
  v8 = [(AVVolumeButtonControl *)&v19 beginTrackingWithTouch:touchCopy withEvent:eventCopy];
  if (v8)
  {
    if ([(AVVolumeButtonControl *)self isLongPressEnabled])
    {
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E695DFF0];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __58__AVVolumeButtonControl_beginTrackingWithTouch_withEvent___block_invoke;
      v16 = &unk_1E7209DA8;
      objc_copyWeak(&v17, &location);
      v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:&v13 block:0.5];
      [(AVVolumeButtonControl *)self setLongPressTimer:v10, v13, v14, v15, v16];
      longPressTimer = [(AVVolumeButtonControl *)self longPressTimer];
      [longPressTimer setTolerance:0.05];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    [(AVVolumeButtonControl *)self setTrackingState:1];
    [touchCopy preciseLocationInView:self];
    [(AVVolumeButtonControl *)self setInitialPreciseLocationOfTouch:?];
  }

  return v8;
}

void __58__AVVolumeButtonControl_beginTrackingWithTouch_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained trackingState];

  if (v3 == 1)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 setTrackingState:3];
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = AVVolumeButtonControl;
  [(AVVolumeButtonControl *)&v10 layoutSubviews];
  micaPackageContainerView = [(AVVolumeButtonControl *)self micaPackageContainerView];
  v4 = micaPackageContainerView;
  if (micaPackageContainerView)
  {
    [micaPackageContainerView transform];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v9);

  if (IsIdentity)
  {
    micaPackageContainerView2 = [(AVVolumeButtonControl *)self micaPackageContainerView];
    [(AVVolumeButtonControl *)self bounds];
    [micaPackageContainerView2 setFrame:?];

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    micaPackage = [(AVVolumeButtonControl *)self micaPackage];
    rootLayer = [micaPackage rootLayer];
    [(AVVolumeButtonControl *)self bounds];
    UIRectGetCenter();
    [rootLayer setPosition:?];

    [MEMORY[0x1E6979518] commit];
  }
}

- (BOOL)avkit_shouldPreventExternalGestureRecognizerAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AVVolumeButtonControl *)self hitRect];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (id)imageNameForMicaPackageState
{
  if (imageNameForMicaPackageState_onceToken != -1)
  {
    dispatch_once(&imageNameForMicaPackageState_onceToken, &__block_literal_global_28312);
  }

  v3 = imageNameForMicaPackageState_imageNamesForStates;
  micaPackageStateName = [(AVVolumeButtonControl *)self micaPackageStateName];
  v5 = micaPackageStateName;
  if (micaPackageStateName)
  {
    v6 = micaPackageStateName;
  }

  else
  {
    v6 = @"half";
  }

  v7 = [v3 objectForKeyedSubscript:v6];

  return v7;
}

void __53__AVVolumeButtonControl_imageNameForMicaPackageState__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"mute";
  v2[1] = @"off";
  v3[0] = @"VolumeMuted";
  v3[1] = @"VolumeZero";
  v2[2] = @"min";
  v2[3] = @"half";
  v3[2] = @"VolumeLow";
  v3[3] = @"VolumeMedium";
  v2[4] = @"full";
  v3[4] = @"VolumeHigh";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = imageNameForMicaPackageState_imageNamesForStates;
  imageNameForMicaPackageState_imageNamesForStates = v0;
}

- (void)setNeedsUpdateGlyphRenderingMode
{
  micaPackage = [(AVVolumeButtonControl *)self micaPackage];
  [(AVVolumeButtonControl *)self _updateMicaPackage:micaPackage];
}

- (void)setTrackingState:(int64_t)state
{
  trackingState = self->_trackingState;
  if (trackingState == state)
  {
    return;
  }

  self->_trackingState = state;
  if (state <= 1)
  {
    if (!state)
    {
      if (trackingState == 4)
      {
        [(AVVolumeButtonControl *)self sendActionsForControlEvents:0x4000000];
      }

      v6 = *MEMORY[0x1E695EFF8];
      v7 = *(MEMORY[0x1E695EFF8] + 8);
      [(AVVolumeButtonControl *)self setCumulativeTranslationSincePanningBegan:*MEMORY[0x1E695EFF8], v7];
      [(AVVolumeButtonControl *)self setTranslationOfPanFromPreviousTouch:v6, v7];
      [(AVVolumeButtonControl *)self setLocationOfTouchInWindow:v6, v7];
LABEL_21:

      [(AVVolumeButtonControl *)self setShowsHighlightedAppearance:0];
      return;
    }

    if (state == 1)
    {
      feedbackGenerator = [(AVVolumeButtonControl *)self feedbackGenerator];
      [feedbackGenerator prepare];
    }
  }

  else
  {
    switch(state)
    {
      case 2:
        v5 = 0x400000;
        break;
      case 3:
        v5 = 0x800000;
        break;
      case 4:
        [(AVVolumeButtonControl *)self sendActionsForControlEvents:0x1000000];
        goto LABEL_21;
      default:
        return;
    }

    [(AVVolumeButtonControl *)self sendActionsForControlEvents:v5];
  }
}

- (void)setShowsHighlightedAppearance:(BOOL)appearance
{
  if ([(AVVolumeButtonControl *)self showsHighlightedAppearance]!= appearance)
  {
    self->_showsHighlightedAppearance = appearance;
    highlightAnimator = [(AVVolumeButtonControl *)self highlightAnimator];
    if ([highlightAnimator isRunning] && objc_msgSend(highlightAnimator, "isInterruptible"))
    {
      [highlightAnimator stopAnimation:0];
      [highlightAnimator finishAnimationAtPosition:2];
    }

    if (([highlightAnimator isRunning] & 1) == 0)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD278]);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __55__AVVolumeButtonControl_setShowsHighlightedAppearance___block_invoke;
      v8[3] = &unk_1E720A090;
      v8[4] = self;
      v7 = [v6 initWithDuration:3 curve:v8 animations:0.1];

      [v7 startAnimation];
      [(AVVolumeButtonControl *)self setHighlightAnimator:v7];
      highlightAnimator = v7;
    }
  }
}

void __55__AVVolumeButtonControl_setShowsHighlightedAppearance___block_invoke(uint64_t a1)
{
  memset(&v5, 0, sizeof(v5));
  if ([*(a1 + 32) showsHighlightedAppearance])
  {
    CGAffineTransformMakeScale(&v5, 0.75, 0.75);
  }

  else
  {
    v2 = *(MEMORY[0x1E695EFD0] + 16);
    *&v5.a = *MEMORY[0x1E695EFD0];
    *&v5.c = v2;
    *&v5.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v3 = [*(a1 + 32) micaPackageContainerView];
  v4 = v5;
  [v3 setTransform:&v4];
}

- (void)setHasFullScreenAppearance:(BOOL)appearance
{
  if (self->_hasFullScreenAppearance != appearance)
  {
    self->_hasFullScreenAppearance = appearance;
    micaPackage = [(AVVolumeButtonControl *)self micaPackage];
    [(AVVolumeButtonControl *)self _updateMicaPackage:micaPackage];
  }
}

- (void)triggerSelectionChangedFeedback
{
  if ([(AVVolumeButtonControl *)self isTracking])
  {
    feedbackGenerator = [(AVVolumeButtonControl *)self feedbackGenerator];
    [feedbackGenerator selectionChanged];
  }
}

- (void)setMicaPackageStateName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_micaPackageStateName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    micaPackageStateName = self->_micaPackageStateName;
    self->_micaPackageStateName = v4;

    micaPackage = [(AVVolumeButtonControl *)self micaPackage];
    [(AVVolumeButtonControl *)self _updateMicaPackage:micaPackage];
  }
}

- (void)setMicaPackage:(id)package
{
  packageCopy = package;
  if (self->_micaPackage != packageCopy)
  {
    v6 = packageCopy;
    objc_storeStrong(&self->_micaPackage, package);
    if (v6)
    {
      [(AVVolumeButtonControl *)self _updateMicaPackage:v6];
      packageCopy = [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
    }
  }

  MEMORY[0x1EEE66BE0](packageCopy);
}

- (void)setExtrinsicContentSize:(CGSize)size
{
  if (size.width != self->_extrinsicContentSize.width || size.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = size;
    [(AVVolumeButtonControl *)self invalidateIntrinsicContentSize];

    [(AVVolumeButtonControl *)self _updateLayoutItem];
  }
}

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    self->_removed = removed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVVolumeButtonControl *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVVolumeButtonControl *)self _updateLayoutItem];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVVolumeButtonControl *)self _updateLayoutItem];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVVolumeButtonControl *)self isCollapsed]|| ![(AVVolumeButtonControl *)self isIncluded])
  {
    return 1;
  }

  micaPackage = [(AVVolumeButtonControl *)self micaPackage];
  if (micaPackage)
  {
    isRemoved = [(AVVolumeButtonControl *)self isRemoved];
  }

  else
  {
    isRemoved = 1;
  }

  return isRemoved;
}

- (UISelectionFeedbackGenerator)feedbackGenerator
{
  feedbackGenerator = self->_feedbackGenerator;
  if (!feedbackGenerator)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    v5 = self->_feedbackGenerator;
    self->_feedbackGenerator = v4;

    feedbackGenerator = self->_feedbackGenerator;
  }

  return feedbackGenerator;
}

- (AVVolumeButtonControl)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = AVVolumeButtonControl;
  v3 = [(AVVolumeButtonControl *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_longPressEnabled = 1;
    v3->_trackingState = 0;
    v3->_included = 1;
    *&v3->_hitRectInsets.top = AVDefaultHitRectInsets_28318;
    *&v3->_hitRectInsets.bottom = unk_18B6EC6E0;
    v3->_volumeControllerType = 0;
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(AVVolumeButtonControl *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    imageView = v4->_imageView;
    v4->_imageView = v6;

    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    [(AVVolumeButtonControl *)v4 bounds];
    v9 = [v8 initWithFrame:?];
    micaPackageContainerView = v4->_micaPackageContainerView;
    v4->_micaPackageContainerView = v9;

    layer = [(AVVolumeButtonControl *)v4 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(UIView *)v4->_micaPackageContainerView layer];
    [layer2 setAllowsGroupBlending:0];

    LODWORD(v13) = 1148846080;
    [(AVVolumeButtonControl *)v4 setContentHuggingPriority:0 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(AVVolumeButtonControl *)v4 setContentHuggingPriority:1 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(AVVolumeButtonControl *)v4 setContentCompressionResistancePriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [(AVVolumeButtonControl *)v4 setContentCompressionResistancePriority:1 forAxis:v16];
    [(AVVolumeButtonControl *)v4 setAccessibilityIdentifier:@"Mute Toggle"];
    [(AVVolumeButtonControl *)v4 setIsAccessibilityElement:1];
    [(UIView *)v4 avkit_reevaluateHiddenStateOfItem:v4];
    effectiveUserInterfaceLayoutDirection = [(AVVolumeButtonControl *)v4 effectiveUserInterfaceLayoutDirection];
    objc_initWeak(&location, v4);
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __39__AVVolumeButtonControl_initWithFrame___block_invoke;
    v27 = &unk_1E7209E08;
    objc_copyWeak(&v28, &location);
    [AVMicaPackage asynchronouslyPrepareMicaPackageWithName:@"VolumeGlyph" layoutDirection:effectiveUserInterfaceLayoutDirection completion:&v24];
    v18 = objc_alloc_init(AVLayoutItemAttributes);
    layoutAttributes = v4->_layoutAttributes;
    v4->_layoutAttributes = v18;

    v20 = v4->_layoutAttributes;
    [(AVVolumeButtonControl *)v4 intrinsicContentSize:v24];
    [(AVLayoutItemAttributes *)v20 setMinimumSize:?];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setCollapsed:[(AVVolumeButtonControl *)v4 isCollapsed]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setIncluded:[(AVVolumeButtonControl *)v4 isIncluded]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setHasFlexibleContentSize:0];
    v21 = v4->_layoutAttributes;
    accessibilityIdentifier = [(AVVolumeButtonControl *)v4 accessibilityIdentifier];
    [(AVLayoutItemAttributes *)v21 setAccessibilityIdentifier:accessibilityIdentifier];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __39__AVVolumeButtonControl_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMicaPackage:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setMicaPackage:v3];
}

@end