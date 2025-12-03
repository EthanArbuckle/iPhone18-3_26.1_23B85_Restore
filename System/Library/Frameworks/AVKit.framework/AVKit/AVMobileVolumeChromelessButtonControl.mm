@interface AVMobileVolumeChromelessButtonControl
- (AVMobileVolumeChromelessButtonControl)init;
- (AVMobileVolumeChromlesButtonControlDelegate)delegate;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (id)_imageNameForMicaPackageState;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_updateMicaPackage:(id)package;
- (void)_volumeControlButtonDidBeginPanning;
- (void)_volumeControlButtonDidEndPanning;
- (void)_volumeControlButtonPanningDidContinueWithXDelta:(double)delta;
- (void)cancelTrackingWithEvent:(id)event;
- (void)didMoveToWindow;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setMicaPackage:(id)package;
- (void)setVolumeIconState:(id)state;
@end

@implementation AVMobileVolumeChromelessButtonControl

- (AVMobileVolumeChromlesButtonControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateMicaPackage:(id)package
{
  packageCopy = package;
  if (packageCopy)
  {
    avkit_isBeingScrolled = [(UIView *)self avkit_isBeingScrolled];
    volumeIconState = [(AVMobileVolumeChromelessButtonControl *)self volumeIconState];
    [packageCopy setState:volumeIconState color:0];

    rootLayer = [packageCopy rootLayer];
    LODWORD(v8) = 1.0;
    [rootLayer setOpacity:v8];

    if (avkit_isBeingScrolled)
    {
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69DCAB8];
      _imageNameForMicaPackageState = [(AVMobileVolumeChromelessButtonControl *)self _imageNameForMicaPackageState];
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __60__AVMobileVolumeChromelessButtonControl__updateMicaPackage___block_invoke;
      v39 = &unk_1E7209E30;
      objc_copyWeak(&v40, &location);
      [v9 avkit_imageNamed:_imageNameForMicaPackageState completion:&v36];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
      goto LABEL_11;
    }
  }

  else
  {
    volumeIconState2 = [(AVMobileVolumeChromelessButtonControl *)self volumeIconState];
    [0 setState:volumeIconState2 color:0];

    rootLayer2 = [0 rootLayer];
    LODWORD(v13) = 1.0;
    [rootLayer2 setOpacity:v13];
  }

  rootLayer3 = [packageCopy rootLayer];
  superlayer = [rootLayer3 superlayer];
  micaPackageContainerView = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
  layer = [micaPackageContainerView layer];

  if (superlayer != layer)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    micaPackageContainerView2 = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
    [(AVMobileVolumeChromelessButtonControl *)self addSubview:micaPackageContainerView2];

    layer2 = [(AVMobileVolumeChromelessButtonControl *)self layer];
    [layer2 setCompositingFilter:0];

    micaPackageContainerView3 = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
    layer3 = [micaPackageContainerView3 layer];
    [layer3 setCompositingFilter:0];

    micaPackageContainerView4 = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
    layer4 = [micaPackageContainerView4 layer];
    rootLayer4 = [packageCopy rootLayer];
    [layer4 addSublayer:rootLayer4];

    [MEMORY[0x1E6979518] commit];
  }

  [packageCopy setTargetSize:{26.0, 26.0}];
  [(AVMobileVolumeChromelessButtonControl *)self bounds];
  UIRectGetCenter();
  v26 = v25;
  v28 = v27;
  rootLayer5 = [packageCopy rootLayer];
  [rootLayer5 position];
  v31 = v30;
  v33 = v32;

  if (v26 != v31 || v28 != v33)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    rootLayer6 = [packageCopy rootLayer];
    [(AVMobileVolumeChromelessButtonControl *)self bounds];
    UIRectGetCenter();
    [rootLayer6 setPosition:?];

    [MEMORY[0x1E6979518] commit];
  }

  imageView = [(AVMobileVolumeChromelessButtonControl *)self imageView];
  [imageView removeFromSuperview];

LABEL_11:
  [(UIPointerInteraction *)self->_micaPackageContainerPointerInteraction invalidate:v36];
}

uint64_t __60__AVMobileVolumeChromelessButtonControl__updateMicaPackage___block_invoke(uint64_t a1, void *a2)
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
  [v11 setCompositingFilter:*MEMORY[0x1E6979CF8]];

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

- (id)_imageNameForMicaPackageState
{
  if (_imageNameForMicaPackageState_onceToken != -1)
  {
    dispatch_once(&_imageNameForMicaPackageState_onceToken, &__block_literal_global_4395);
  }

  v3 = _imageNameForMicaPackageState_imageNamesForStates;
  volumeIconState = [(AVMobileVolumeChromelessButtonControl *)self volumeIconState];
  v5 = volumeIconState;
  if (volumeIconState)
  {
    v6 = volumeIconState;
  }

  else
  {
    v6 = @"half";
  }

  v7 = [v3 objectForKeyedSubscript:v6];

  return v7;
}

void __70__AVMobileVolumeChromelessButtonControl__imageNameForMicaPackageState__block_invoke()
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
  v1 = _imageNameForMicaPackageState_imageNamesForStates;
  _imageNameForMicaPackageState_imageNamesForStates = v0;
}

- (void)_volumeControlButtonDidEndPanning
{
  delegate = [(AVMobileVolumeChromelessButtonControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
    [delegate2 volumeControlButtonDidEndPanning:self];
  }
}

- (void)_volumeControlButtonPanningDidContinueWithXDelta:(double)delta
{
  delegate = [(AVMobileVolumeChromelessButtonControl *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
    [delegate2 volumeControlButton:self didContinuePanningWithXDelta:delta];
  }
}

- (void)_volumeControlButtonDidBeginPanning
{
  delegate = [(AVMobileVolumeChromelessButtonControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
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
  [(AVMobileVolumeChromelessButtonControl *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = AVMobileVolumeChromelessButtonControl;
  [(AVMobileVolumeChromelessButtonControl *)&v6 layoutSubviews];
  micaPackageContainerView = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
  [(AVMobileVolumeChromelessButtonControl *)self bounds];
  [micaPackageContainerView setFrame:?];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  micaPackage = [(AVMobileVolumeChromelessButtonControl *)self micaPackage];
  rootLayer = [micaPackage rootLayer];
  [(AVMobileVolumeChromelessButtonControl *)self bounds];
  UIRectGetCenter();
  [rootLayer setPosition:?];

  [MEMORY[0x1E6979518] commit];
}

- (CGSize)intrinsicContentSize
{
  v2 = 26.0;
  v3 = 26.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)hitRect
{
  v10.receiver = self;
  v10.super_class = AVMobileVolumeChromelessButtonControl;
  [(AVMobileVolumeChromelessButtonControl *)&v10 hitRect];
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
  v5.super_class = AVMobileVolumeChromelessButtonControl;
  [(AVMobileVolumeChromelessButtonControl *)&v5 didMoveToWindow];
  if (self)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
    micaPackageContainerPointerInteraction = self->_micaPackageContainerPointerInteraction;
    self->_micaPackageContainerPointerInteraction = v3;

    [(AVMobileVolumeChromelessButtonControl *)self addInteraction:self->_micaPackageContainerPointerInteraction];
  }
}

- (void)cancelTrackingWithEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = AVMobileVolumeChromelessButtonControl;
  [(AVMobileVolumeChromelessButtonControl *)&v5 cancelTrackingWithEvent:event];
  hasStartedPanning = self->_hasStartedPanning;
  self->_hasStartedPanning = 0;
  [(AVMobileVolumeChromelessButtonControl *)self setTracking:0];
  if (hasStartedPanning)
  {
    [(AVMobileVolumeChromelessButtonControl *)self _volumeControlButtonDidEndPanning];
  }
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = AVMobileVolumeChromelessButtonControl;
  [(AVMobileVolumeChromelessButtonControl *)&v5 endTrackingWithTouch:touch withEvent:event];
  if (self->_hasStartedPanning)
  {
    [(AVMobileVolumeChromelessButtonControl *)self setTracking:0];
    [(AVMobileVolumeChromelessButtonControl *)self _volumeControlButtonDidEndPanning];
  }

  else
  {
    [(AVMobileVolumeChromelessButtonControl *)self sendActionsForControlEvents:0x1000000];
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
  delegate = [(AVMobileVolumeChromelessButtonControl *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
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
    [(AVMobileVolumeChromelessButtonControl *)self _volumeControlButtonDidBeginPanning];
  }

  if (self->_hasStartedPanning)
  {
    [touchCopy preciseLocationInView:self];
    v17 = v16;
    [touchCopy precisePreviousLocationInView:self];
    [(AVMobileVolumeChromelessButtonControl *)self _volumeControlButtonPanningDidContinueWithXDelta:v17 - v18];
  }

  v21.receiver = self;
  v21.super_class = AVMobileVolumeChromelessButtonControl;
  v19 = [(AVMobileVolumeChromelessButtonControl *)&v21 continueTrackingWithTouch:touchCopy withEvent:eventCopy];

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
  v12.super_class = AVMobileVolumeChromelessButtonControl;
  LOBYTE(selfCopy) = [(AVMobileVolumeChromelessButtonControl *)&v12 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return selfCopy;
}

- (void)setVolumeIconState:(id)state
{
  stateCopy = state;
  if (![(NSString *)self->_volumeIconState isEqualToString:?])
  {
    v4 = [stateCopy copy];
    volumeIconState = self->_volumeIconState;
    self->_volumeIconState = v4;

    micaPackage = [(AVMobileVolumeChromelessButtonControl *)self micaPackage];
    [(AVMobileVolumeChromelessButtonControl *)self _updateMicaPackage:micaPackage];
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
      packageCopy = [(AVMobileVolumeChromelessButtonControl *)self _updateMicaPackage:v6];
    }
  }

  MEMORY[0x1EEE66BE0](packageCopy);
}

- (AVMobileVolumeChromelessButtonControl)init
{
  v15.receiver = self;
  v15.super_class = AVMobileVolumeChromelessButtonControl;
  v2 = [(AVMobileVolumeChromelessButtonControl *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(AVMobileVolumeChromelessButtonControl *)v2 bounds];
    v4 = [v3 initWithFrame:?];
    imageView = v2->_imageView;
    v2->_imageView = v4;

    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    [(AVMobileVolumeChromelessButtonControl *)v2 bounds];
    v7 = [v6 initWithFrame:?];
    micaPackageContainerView = v2->_micaPackageContainerView;
    v2->_micaPackageContainerView = v7;

    [(UIView *)v2->_micaPackageContainerView setUserInteractionEnabled:0];
    layer = [(UIView *)v2->_micaPackageContainerView layer];
    [layer setAllowsGroupBlending:0];

    effectiveUserInterfaceLayoutDirection = [(AVMobileVolumeChromelessButtonControl *)v2 effectiveUserInterfaceLayoutDirection];
    objc_initWeak(&location, v2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__AVMobileVolumeChromelessButtonControl_init__block_invoke;
    v12[3] = &unk_1E7209E08;
    objc_copyWeak(&v13, &location);
    [AVMicaPackage asynchronouslyPrepareMicaPackageWithName:@"VolumeGlyph" layoutDirection:effectiveUserInterfaceLayoutDirection completion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __45__AVMobileVolumeChromelessButtonControl_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMicaPackage:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setMicaPackage:v3];
}

@end