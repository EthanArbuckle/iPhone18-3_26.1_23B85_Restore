@interface AVMobileGlassVolumeButtonControl
- (AVMobileGlassVolumeButtonControl)init;
- (AVMobileVolumeGlassButtonControlDelegate)delegate;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (uint64_t)_centerMicaPackageLayer;
- (void)_updateMicaPackage:(uint64_t)a1;
- (void)_volumeControlButtonDidBeginPanning;
- (void)_volumeControlButtonDidEndPanning;
- (void)_volumeControlButtonPanningDidContinueWithXDelta:(double)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)didMoveToWindow;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setFullscreen:(BOOL)a3;
- (void)setMicaPackage:(id)a3;
- (void)setVolumeIconState:(id)a3;
@end

@implementation AVMobileGlassVolumeButtonControl

- (AVMobileVolumeGlassButtonControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_volumeControlButtonDidEndPanning
{
  v3 = [(AVMobileGlassVolumeButtonControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileGlassVolumeButtonControl *)self delegate];
    [v5 volumeControlButtonDidEndPanning:self];
  }
}

- (void)_volumeControlButtonPanningDidContinueWithXDelta:(double)a3
{
  v5 = [(AVMobileGlassVolumeButtonControl *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVMobileGlassVolumeButtonControl *)self delegate];
    [v7 volumeControlButton:self didContinuePanningWithXDelta:a3];
  }
}

- (void)_volumeControlButtonDidBeginPanning
{
  v3 = [(AVMobileGlassVolumeButtonControl *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileGlassVolumeButtonControl *)self delegate];
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
  v3 = [(AVMobileGlassVolumeButtonControl *)self micaPackageContainerView];
  [(AVMobileGlassVolumeButtonControl *)self bounds];
  [v3 setFrame:?];

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
    v6 = [v1 micaPackage];
    v7 = [v6 rootLayer];
    [v7 setPosition:{v5, v3}];

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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [a3 view];
  LOBYTE(self) = [v4 isDescendantOfView:self];

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

- (void)cancelTrackingWithEvent:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassVolumeButtonControl;
  [(AVMobileGlassVolumeButtonControl *)&v5 cancelTrackingWithEvent:a3];
  hasStartedPanning = self->_hasStartedPanning;
  self->_hasStartedPanning = 0;
  [(AVMobileGlassVolumeButtonControl *)self setTracking:0];
  if (hasStartedPanning)
  {
    [(AVMobileGlassVolumeButtonControl *)self _volumeControlButtonDidEndPanning];
  }
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassVolumeButtonControl;
  [(AVMobileGlassVolumeButtonControl *)&v5 endTrackingWithTouch:a3 withEvent:a4];
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

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 preciseLocationInView:self];
  *&v8 = self->_startPoint.x - v8;
  *&v9 = self->_startPoint.y - v9;
  v10 = sqrt((*&v8 * *&v8) + (*&v9 * *&v9));
  v11 = [(AVMobileGlassVolumeButtonControl *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(AVMobileGlassVolumeButtonControl *)self delegate];
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
    [(AVMobileGlassVolumeButtonControl *)self _volumeControlButtonDidBeginPanning];
  }

  if (self->_hasStartedPanning)
  {
    [v6 preciseLocationInView:self];
    v17 = v16;
    [v6 precisePreviousLocationInView:self];
    [(AVMobileGlassVolumeButtonControl *)self _volumeControlButtonPanningDidContinueWithXDelta:v17 - v18];
  }

  v21.receiver = self;
  v21.super_class = AVMobileGlassVolumeButtonControl;
  v19 = [(AVMobileGlassVolumeButtonControl *)&v21 continueTrackingWithTouch:v6 withEvent:v7];

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
  v12.super_class = AVMobileGlassVolumeButtonControl;
  LOBYTE(v5) = [(AVMobileGlassVolumeButtonControl *)&v12 beginTrackingWithTouch:v8 withEvent:v7];

  return v5;
}

- (void)setFullscreen:(BOOL)a3
{
  if (self->_fullscreen != a3)
  {
    self->_fullscreen = a3;
    v5 = [(AVMobileGlassVolumeButtonControl *)self micaPackage];
    [(AVMobileGlassVolumeButtonControl *)self _updateMicaPackage:v5];
  }
}

- (void)_updateMicaPackage:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (v3)
    {
      v4 = [a1 avkit_isBeingScrolled];
      v5 = [a1 volumeIconState];
      [v3 setState:v5 color:0];

      v6 = [v3 rootLayer];
      LODWORD(v7) = 1.0;
      [v6 setOpacity:v7];

      if (v4)
      {
        objc_initWeak(&location, a1);
        v8 = MEMORY[0x1E69DCAB8];
        if (_imageNameForMicaPackageState_onceToken_12742 != -1)
        {
          dispatch_once(&_imageNameForMicaPackageState_onceToken_12742, &__block_literal_global_12743);
        }

        v9 = _imageNameForMicaPackageState_imageNamesForStates_12744;
        v10 = [a1 volumeIconState];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
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
        [*(a1 + 480) invalidate];
        goto LABEL_20;
      }
    }

    else
    {
      v14 = [a1 volumeIconState];
      [0 setState:v14 color:0];

      v15 = [0 rootLayer];
      LODWORD(v16) = 1.0;
      [v15 setOpacity:v16];
    }

    v17 = [v3 rootLayer];
    v18 = [v17 superlayer];
    v19 = [a1 micaPackageContainerView];
    v20 = [v19 layer];

    if (v18 != v20)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v21 = [a1 micaPackageContainerView];
      [a1 addSubview:v21];

      v22 = [a1 layer];
      [v22 setCompositingFilter:0];

      v23 = [a1 micaPackageContainerView];
      v24 = [v23 layer];
      [v24 setCompositingFilter:0];

      v25 = [a1 micaPackageContainerView];
      v26 = [v25 layer];
      v27 = [v3 rootLayer];
      [v26 addSublayer:v27];

      [MEMORY[0x1E6979518] commit];
    }

    v28 = 18.0;
    if (*(a1 + 488))
    {
      v28 = 26.0;
    }

    [v3 setTargetSize:{v28, v28}];
    [a1 bounds];
    UIRectGetCenter();
    v30 = v29;
    v32 = v31;
    v33 = [v3 rootLayer];
    [v33 position];
    v35 = v34;
    v37 = v36;

    if (v30 != v35 || v32 != v37)
    {
      [(AVMobileGlassVolumeButtonControl *)a1 _centerMicaPackageLayer];
    }

    v38 = [a1 imageView];
    [v38 removeFromSuperview];

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

- (void)setVolumeIconState:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_volumeIconState isEqualToString:?])
  {
    v4 = [v7 copy];
    volumeIconState = self->_volumeIconState;
    self->_volumeIconState = v4;

    v6 = [(AVMobileGlassVolumeButtonControl *)self micaPackage];
    [(AVMobileGlassVolumeButtonControl *)self _updateMicaPackage:v6];
  }
}

- (void)setMicaPackage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_micaPackage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_micaPackage, a3);
    v6 = v7;
    if (v7)
    {
      [(AVMobileGlassVolumeButtonControl *)self _updateMicaPackage:v7];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
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
    v9 = [(UIView *)v2->_micaPackageContainerView layer];
    [v9 setAllowsGroupBlending:0];

    v10 = [(AVMobileGlassVolumeButtonControl *)v2 effectiveUserInterfaceLayoutDirection];
    objc_initWeak(&location, v2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__AVMobileGlassVolumeButtonControl_init__block_invoke;
    v12[3] = &unk_1E7209E08;
    objc_copyWeak(&v13, &location);
    [AVMicaPackage asynchronouslyPrepareMicaPackageWithName:@"VolumeGlyph" layoutDirection:v10 completion:v12];
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