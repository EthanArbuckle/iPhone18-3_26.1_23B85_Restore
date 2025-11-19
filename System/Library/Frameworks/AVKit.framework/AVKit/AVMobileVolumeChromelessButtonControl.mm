@interface AVMobileVolumeChromelessButtonControl
- (AVMobileVolumeChromelessButtonControl)init;
- (AVMobileVolumeChromlesButtonControlDelegate)delegate;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (id)_imageNameForMicaPackageState;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_updateMicaPackage:(id)a3;
- (void)_volumeControlButtonDidBeginPanning;
- (void)_volumeControlButtonDidEndPanning;
- (void)_volumeControlButtonPanningDidContinueWithXDelta:(double)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)didMoveToWindow;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setMicaPackage:(id)a3;
- (void)setVolumeIconState:(id)a3;
@end

@implementation AVMobileVolumeChromelessButtonControl

- (AVMobileVolumeChromlesButtonControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateMicaPackage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIView *)self avkit_isBeingScrolled];
    v6 = [(AVMobileVolumeChromelessButtonControl *)self volumeIconState];
    [v4 setState:v6 color:0];

    v7 = [v4 rootLayer];
    LODWORD(v8) = 1.0;
    [v7 setOpacity:v8];

    if (v5)
    {
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69DCAB8];
      v10 = [(AVMobileVolumeChromelessButtonControl *)self _imageNameForMicaPackageState];
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __60__AVMobileVolumeChromelessButtonControl__updateMicaPackage___block_invoke;
      v39 = &unk_1E7209E30;
      objc_copyWeak(&v40, &location);
      [v9 avkit_imageNamed:v10 completion:&v36];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [(AVMobileVolumeChromelessButtonControl *)self volumeIconState];
    [0 setState:v11 color:0];

    v12 = [0 rootLayer];
    LODWORD(v13) = 1.0;
    [v12 setOpacity:v13];
  }

  v14 = [v4 rootLayer];
  v15 = [v14 superlayer];
  v16 = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
  v17 = [v16 layer];

  if (v15 != v17)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v18 = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
    [(AVMobileVolumeChromelessButtonControl *)self addSubview:v18];

    v19 = [(AVMobileVolumeChromelessButtonControl *)self layer];
    [v19 setCompositingFilter:0];

    v20 = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
    v21 = [v20 layer];
    [v21 setCompositingFilter:0];

    v22 = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
    v23 = [v22 layer];
    v24 = [v4 rootLayer];
    [v23 addSublayer:v24];

    [MEMORY[0x1E6979518] commit];
  }

  [v4 setTargetSize:{26.0, 26.0}];
  [(AVMobileVolumeChromelessButtonControl *)self bounds];
  UIRectGetCenter();
  v26 = v25;
  v28 = v27;
  v29 = [v4 rootLayer];
  [v29 position];
  v31 = v30;
  v33 = v32;

  if (v26 != v31 || v28 != v33)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v34 = [v4 rootLayer];
    [(AVMobileVolumeChromelessButtonControl *)self bounds];
    UIRectGetCenter();
    [v34 setPosition:?];

    [MEMORY[0x1E6979518] commit];
  }

  v35 = [(AVMobileVolumeChromelessButtonControl *)self imageView];
  [v35 removeFromSuperview];

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
  v4 = [(AVMobileVolumeChromelessButtonControl *)self volumeIconState];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
  v3 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
    [v5 volumeControlButtonDidEndPanning:self];
  }
}

- (void)_volumeControlButtonPanningDidContinueWithXDelta:(double)a3
{
  v5 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
    [v7 volumeControlButton:self didContinuePanningWithXDelta:a3];
  }
}

- (void)_volumeControlButtonDidBeginPanning
{
  v3 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
    [v5 volumeControlButtonDidBeginPanning:self];
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = a3;
  v5 = [v4 view];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:v7 + -5.0 cornerRadius:{v9 + -5.0, v11 + 10.0, v13 + 10.0, 6.0}];
  v15 = objc_alloc(MEMORY[0x1E69DD070]);
  v16 = [v4 view];

  v17 = [v15 initWithView:v16];
  v18 = [MEMORY[0x1E69DCDA0] effectWithPreview:v17];
  v19 = [MEMORY[0x1E69DCDD0] styleWithEffect:v18 shape:v14];

  return v19;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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
  v3 = [(AVMobileVolumeChromelessButtonControl *)self micaPackageContainerView];
  [(AVMobileVolumeChromelessButtonControl *)self bounds];
  [v3 setFrame:?];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v4 = [(AVMobileVolumeChromelessButtonControl *)self micaPackage];
  v5 = [v4 rootLayer];
  [(AVMobileVolumeChromelessButtonControl *)self bounds];
  UIRectGetCenter();
  [v5 setPosition:?];

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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [a3 view];
  LOBYTE(self) = [v4 isDescendantOfView:self];

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

- (void)cancelTrackingWithEvent:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVMobileVolumeChromelessButtonControl;
  [(AVMobileVolumeChromelessButtonControl *)&v5 cancelTrackingWithEvent:a3];
  hasStartedPanning = self->_hasStartedPanning;
  self->_hasStartedPanning = 0;
  [(AVMobileVolumeChromelessButtonControl *)self setTracking:0];
  if (hasStartedPanning)
  {
    [(AVMobileVolumeChromelessButtonControl *)self _volumeControlButtonDidEndPanning];
  }
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = AVMobileVolumeChromelessButtonControl;
  [(AVMobileVolumeChromelessButtonControl *)&v5 endTrackingWithTouch:a3 withEvent:a4];
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

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 preciseLocationInView:self];
  *&v8 = self->_startPoint.x - v8;
  *&v9 = self->_startPoint.y - v9;
  v10 = sqrt((*&v8 * *&v8) + (*&v9 * *&v9));
  v11 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(AVMobileVolumeChromelessButtonControl *)self delegate];
    v14 = [v13 volumeControlButtonCanBeginPanning:self];

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
    [v6 preciseLocationInView:self];
    v17 = v16;
    [v6 precisePreviousLocationInView:self];
    [(AVMobileVolumeChromelessButtonControl *)self _volumeControlButtonPanningDidContinueWithXDelta:v17 - v18];
  }

  v21.receiver = self;
  v21.super_class = AVMobileVolumeChromelessButtonControl;
  v19 = [(AVMobileVolumeChromelessButtonControl *)&v21 continueTrackingWithTouch:v6 withEvent:v7];

  return v19;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = self;
  p_startPoint = &self->_startPoint;
  v7 = a4;
  v8 = a3;
  [v8 preciseLocationInView:v5];
  p_startPoint->x = v9;
  p_startPoint->y = v10;
  v12.receiver = v5;
  v12.super_class = AVMobileVolumeChromelessButtonControl;
  LOBYTE(v5) = [(AVMobileVolumeChromelessButtonControl *)&v12 beginTrackingWithTouch:v8 withEvent:v7];

  return v5;
}

- (void)setVolumeIconState:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_volumeIconState isEqualToString:?])
  {
    v4 = [v7 copy];
    volumeIconState = self->_volumeIconState;
    self->_volumeIconState = v4;

    v6 = [(AVMobileVolumeChromelessButtonControl *)self micaPackage];
    [(AVMobileVolumeChromelessButtonControl *)self _updateMicaPackage:v6];
  }
}

- (void)setMicaPackage:(id)a3
{
  v5 = a3;
  if (self->_micaPackage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_micaPackage, a3);
    if (v6)
    {
      v5 = [(AVMobileVolumeChromelessButtonControl *)self _updateMicaPackage:v6];
    }
  }

  MEMORY[0x1EEE66BE0](v5);
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
    v9 = [(UIView *)v2->_micaPackageContainerView layer];
    [v9 setAllowsGroupBlending:0];

    v10 = [(AVMobileVolumeChromelessButtonControl *)v2 effectiveUserInterfaceLayoutDirection];
    objc_initWeak(&location, v2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__AVMobileVolumeChromelessButtonControl_init__block_invoke;
    v12[3] = &unk_1E7209E08;
    objc_copyWeak(&v13, &location);
    [AVMicaPackage asynchronouslyPrepareMicaPackageWithName:@"VolumeGlyph" layoutDirection:v10 completion:v12];
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