@interface AVMobileGlassVolumeButtonControl
- (AVMobileGlassVolumeButtonControl)init;
- (AVMobileVolumeGlassButtonControlDelegate)delegate;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (uint64_t)_centerMicaPackageLayer;
- (void)_updateMicaPackage:(uint64_t)package;
- (void)_volumeControlButtonDidBeginPanning;
- (void)_volumeControlButtonDidEndPanning;
- (void)_volumeControlButtonPanningDidContinueWithXDelta:(double)delta;
- (void)cancelTrackingWithEvent:(id)event;
- (void)didMoveToWindow;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setFullscreen:(BOOL)fullscreen;
- (void)setMicaPackage:(id)package;
- (void)setVolumeIconState:(id)state;
@end

@implementation AVMobileGlassVolumeButtonControl

- (AVMobileVolumeGlassButtonControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_volumeControlButtonDidEndPanning
{
  delegate = [(AVMobileGlassVolumeButtonControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileGlassVolumeButtonControl *)self delegate];
    [delegate2 volumeControlButtonDidEndPanning:self];
  }
}

- (void)_volumeControlButtonPanningDidContinueWithXDelta:(double)delta
{
  delegate = [(AVMobileGlassVolumeButtonControl *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVMobileGlassVolumeButtonControl *)self delegate];
    [delegate2 volumeControlButton:self didContinuePanningWithXDelta:delta];
  }
}

- (void)_volumeControlButtonDidBeginPanning
{
  delegate = [(AVMobileGlassVolumeButtonControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileGlassVolumeButtonControl *)self delegate];
    [delegate2 volumeControlButtonDidBeginPanning:self];
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  view = [interactionCopy view];
  [view frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:v7 + -5.0 cornerRadius:{v9 + -5.0, v11 + 10.0, v13 + 10.0, 6.0}];
  v15 = objc_alloc(MEMORY[0x1E69DD070]);
  view2 = [interactionCopy view];

  v17 = [v15 initWithView:view2];
  v18 = [MEMORY[0x1E69DCDA0] effectWithPreview:v17];
  v19 = [MEMORY[0x1E69DCDD0] styleWithEffect:v18 shape:v14];

  return v19;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(AVMobileGlassVolumeButtonControl *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AVMobileGlassVolumeButtonControl;
  [(AVMobileGlassVolumeButtonControl *)&v4 layoutSubviews];
  micaPackageContainerView = [(AVMobileGlassVolumeButtonControl *)self micaPackageContainerView];
  [(AVMobileGlassVolumeButtonControl *)self bounds];
  [micaPackageContainerView setFrame:?];

  [(AVMobileGlassVolumeButtonControl *)self _centerMicaPackageLayer];
}

- (uint64_t)_centerMicaPackageLayer
{
  if (result)
  {
    v1 = result;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [v1 bounds];
    UIRectGetCenter();
    v3 = v2;
    v5 = v4 + 1.0;
    micaPackage = [v1 micaPackage];
    rootLayer = [micaPackage rootLayer];
    [rootLayer setPosition:{v5, v3}];

    v8 = MEMORY[0x1E6979518];

    return [v8 commit];
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  if (self)
  {
    v2 = 18.0;
    if (self->_fullscreen)
    {
      v2 = 26.0;
    }
  }

  else
  {
    v2 = 0.0;
  }

  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)hitRect
{
  v10.receiver = self;
  v10.super_class = AVMobileGlassVolumeButtonControl;
  [(AVMobileGlassVolumeButtonControl *)&v10 hitRect];
  v3 = v2 + -25.0;
  v5 = v4 + -25.0;
  v7 = v6 + 50.0;
  v9 = v8 + 50.0;
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
  v5.receiver = self;
  v5.super_class = AVMobileGlassVolumeButtonControl;
  [(AVMobileGlassVolumeButtonControl *)&v5 didMoveToWindow];
  if (self)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
    micaPackageContainerPointerInteraction = self->_micaPackageContainerPointerInteraction;
    self->_micaPackageContainerPointerInteraction = v3;

    [(AVMobileGlassVolumeButtonControl *)self addInteraction:self->_micaPackageContainerPointerInteraction];
  }
}

- (void)cancelTrackingWithEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassVolumeButtonControl;
  [(AVMobileGlassVolumeButtonControl *)&v5 cancelTrackingWithEvent:event];
  hasStartedPanning = self->_hasStartedPanning;
  self->_hasStartedPanning = 0;
  [(AVMobileGlassVolumeButtonControl *)self setTracking:0];
  if (hasStartedPanning)
  {
    [(AVMobileGlassVolumeButtonControl *)self _volumeControlButtonDidEndPanning];
  }
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassVolumeButtonControl;
  [(AVMobileGlassVolumeButtonControl *)&v5 endTrackingWithTouch:touch withEvent:event];
  if (self->_hasStartedPanning)
  {
    [(AVMobileGlassVolumeButtonControl *)self setTracking:0];
    [(AVMobileGlassVolumeButtonControl *)self _volumeControlButtonDidEndPanning];
  }

  else
  {
    [(AVMobileGlassVolumeButtonControl *)self sendActionsForControlEvents:0x1000000];
  }

  self->_hasStartedPanning = 0;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  [touchCopy preciseLocationInView:self];
  *&v8 = self->_startPoint.x - v8;
  *&v9 = self->_startPoint.y - v9;
  v10 = sqrt((*&v8 * *&v8) + (*&v9 * *&v9));
  delegate = [(AVMobileGlassVolumeButtonControl *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(AVMobileGlassVolumeButtonControl *)self delegate];
    v14 = [delegate2 volumeControlButtonCanBeginPanning:self];

    v15 = v14 ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if (v10 > 15.0 && ((self->_hasStartedPanning | v15) & 1) == 0)
  {
    self->_hasStartedPanning = 1;
    [(AVMobileGlassVolumeButtonControl *)self _volumeControlButtonDidBeginPanning];
  }

  if (self->_hasStartedPanning)
  {
    [touchCopy preciseLocationInView:self];
    v17 = v16;
    [touchCopy precisePreviousLocationInView:self];
    [(AVMobileGlassVolumeButtonControl *)self _volumeControlButtonPanningDidContinueWithXDelta:v17 - v18];
  }

  v21.receiver = self;
  v21.super_class = AVMobileGlassVolumeButtonControl;
  v19 = [(AVMobileGlassVolumeButtonControl *)&v21 continueTrackingWithTouch:touchCopy withEvent:eventCopy];

  return v19;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  selfCopy = self;
  p_startPoint = &self->_startPoint;
  eventCopy = event;
  touchCopy = touch;
  [touchCopy preciseLocationInView:selfCopy];
  p_startPoint->x = v9;
  p_startPoint->y = v10;
  v12.receiver = selfCopy;
  v12.super_class = AVMobileGlassVolumeButtonControl;
  LOBYTE(selfCopy) = [(AVMobileGlassVolumeButtonControl *)&v12 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return selfCopy;
}

- (void)setFullscreen:(BOOL)fullscreen
{
  if (self->_fullscreen != fullscreen)
  {
    self->_fullscreen = fullscreen;
    micaPackage = [(AVMobileGlassVolumeButtonControl *)self micaPackage];
    [(AVMobileGlassVolumeButtonControl *)self _updateMicaPackage:micaPackage];
  }
}

- (void)_updateMicaPackage:(uint64_t)package
{
  v3 = a2;
  if (package)
  {
    if (v3)
    {
      avkit_isBeingScrolled = [package avkit_isBeingScrolled];
      volumeIconState = [package volumeIconState];
      [v3 setState:volumeIconState color:0];

      rootLayer = [v3 rootLayer];
      LODWORD(v7) = 1.0;
      [rootLayer setOpacity:v7];

      if (avkit_isBeingScrolled)
      {
        objc_initWeak(&location, package);
        v8 = MEMORY[0x1E69DCAB8];
        if (_imageNameForMicaPackageState_onceToken_12742 != -1)
        {
          dispatch_once(&_imageNameForMicaPackageState_onceToken_12742, &__block_literal_global_12743);
        }

        v9 = _imageNameForMicaPackageState_imageNamesForStates_12744;
        volumeIconState2 = [package volumeIconState];
        v11 = volumeIconState2;
        if (volumeIconState2)
        {
          v12 = volumeIconState2;
        }

        else
        {
          v12 = @"half";
        }

        v13 = [v9 objectForKeyedSubscript:v12];

        v39 = MEMORY[0x1E69E9820];
        v40 = 3221225472;
        v41 = __55__AVMobileGlassVolumeButtonControl__updateMicaPackage___block_invoke;
        v42 = &unk_1E7209E30;
        objc_copyWeak(&v43, &location);
        [v8 avkit_imageNamed:v13 completion:&v39];

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
LABEL_19:
        [*(package + 480) invalidate];
        goto LABEL_20;
      }
    }

    else
    {
      volumeIconState3 = [package volumeIconState];
      [0 setState:volumeIconState3 color:0];

      rootLayer2 = [0 rootLayer];
      LODWORD(v16) = 1.0;
      [rootLayer2 setOpacity:v16];
    }

    rootLayer3 = [v3 rootLayer];
    superlayer = [rootLayer3 superlayer];
    micaPackageContainerView = [package micaPackageContainerView];
    layer = [micaPackageContainerView layer];

    if (superlayer != layer)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      micaPackageContainerView2 = [package micaPackageContainerView];
      [package addSubview:micaPackageContainerView2];

      layer2 = [package layer];
      [layer2 setCompositingFilter:0];

      micaPackageContainerView3 = [package micaPackageContainerView];
      layer3 = [micaPackageContainerView3 layer];
      [layer3 setCompositingFilter:0];

      micaPackageContainerView4 = [package micaPackageContainerView];
      layer4 = [micaPackageContainerView4 layer];
      rootLayer4 = [v3 rootLayer];
      [layer4 addSublayer:rootLayer4];

      [MEMORY[0x1E6979518] commit];
    }

    v28 = 18.0;
    if (*(package + 488))
    {
      v28 = 26.0;
    }

    [v3 setTargetSize:{v28, v28}];
    [package bounds];
    UIRectGetCenter();
    v30 = v29;
    v32 = v31;
    rootLayer5 = [v3 rootLayer];
    [rootLayer5 position];
    v35 = v34;
    v37 = v36;

    if (v30 != v35 || v32 != v37)
    {
      [(AVMobileGlassVolumeButtonControl *)package _centerMicaPackageLayer];
    }

    imageView = [package imageView];
    [imageView removeFromSuperview];

    goto LABEL_19;
  }

LABEL_20:
}

uint64_t __55__AVMobileGlassVolumeButtonControl__updateMicaPackage___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6979518];
  v4 = a2;
  [v3 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained micaPackage];
  v7 = [v6 rootLayer];
  [v7 removeFromSuperlayer];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 avkit_makeSubtreeDisallowGroupBlending];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 imageView];
  v11 = [v10 layer];
  [v11 setCompositingFilter:0];

  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 imageView];
  v14 = [MEMORY[0x1E69DC888] whiteColor];
  [v13 setTintColor:v14];

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 imageView];
  [v16 setImage:v4];

  v17 = objc_loadWeakRetained((a1 + 32));
  v18 = [v17 imageView];
  v19 = objc_loadWeakRetained((a1 + 32));
  [v19 bounds];
  [v18 setFrame:?];

  v20 = objc_loadWeakRetained((a1 + 32));
  v21 = [v20 imageView];
  [v21 setContentMode:4];

  v22 = objc_loadWeakRetained((a1 + 32));
  v23 = [v22 imageView];
  [v22 addSubview:v23];

  v24 = MEMORY[0x1E6979518];

  return [v24 commit];
}

void __65__AVMobileGlassVolumeButtonControl__imageNameForMicaPackageState__block_invoke()
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
  v1 = _imageNameForMicaPackageState_imageNamesForStates_12744;
  _imageNameForMicaPackageState_imageNamesForStates_12744 = v0;
}

- (void)setVolumeIconState:(id)state
{
  stateCopy = state;
  if (![(NSString *)self->_volumeIconState isEqualToString:?])
  {
    v4 = [stateCopy copy];
    volumeIconState = self->_volumeIconState;
    self->_volumeIconState = v4;

    micaPackage = [(AVMobileGlassVolumeButtonControl *)self micaPackage];
    [(AVMobileGlassVolumeButtonControl *)self _updateMicaPackage:micaPackage];
  }
}

- (void)setMicaPackage:(id)package
{
  packageCopy = package;
  v6 = packageCopy;
  if (self->_micaPackage != packageCopy)
  {
    v7 = packageCopy;
    objc_storeStrong(&self->_micaPackage, package);
    v6 = v7;
    if (v7)
    {
      [(AVMobileGlassVolumeButtonControl *)self _updateMicaPackage:v7];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](packageCopy, v6);
}

- (AVMobileGlassVolumeButtonControl)init
{
  v15.receiver = self;
  v15.super_class = AVMobileGlassVolumeButtonControl;
  v2 = [(AVMobileGlassVolumeButtonControl *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(AVMobileGlassVolumeButtonControl *)v2 bounds];
    v4 = [v3 initWithFrame:?];
    imageView = v2->_imageView;
    v2->_imageView = v4;

    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    [(AVMobileGlassVolumeButtonControl *)v2 bounds];
    v7 = [v6 initWithFrame:?];
    micaPackageContainerView = v2->_micaPackageContainerView;
    v2->_micaPackageContainerView = v7;

    [(UIView *)v2->_micaPackageContainerView setUserInteractionEnabled:0];
    layer = [(UIView *)v2->_micaPackageContainerView layer];
    [layer setAllowsGroupBlending:0];

    effectiveUserInterfaceLayoutDirection = [(AVMobileGlassVolumeButtonControl *)v2 effectiveUserInterfaceLayoutDirection];
    objc_initWeak(&location, v2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__AVMobileGlassVolumeButtonControl_init__block_invoke;
    v12[3] = &unk_1E7209E08;
    objc_copyWeak(&v13, &location);
    [AVMicaPackage asynchronouslyPrepareMicaPackageWithName:@"VolumeGlyph" layoutDirection:effectiveUserInterfaceLayoutDirection completion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __40__AVMobileGlassVolumeButtonControl_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassVolumeButtonControl *)WeakRetained _updateMicaPackage:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setMicaPackage:v3];
}

@end