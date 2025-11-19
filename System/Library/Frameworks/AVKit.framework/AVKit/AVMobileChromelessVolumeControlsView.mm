@interface AVMobileChromelessVolumeControlsView
- (AVMobileChromelessVolumeControlsView)init;
- (AVMobileChromelessVolumeControlsViewDelegate)delegate;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isTracking;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (uint64_t)_isFluidSlider;
- (void)_handleVolumeControlButtonTap;
- (void)_hapticsButtonTapped;
- (void)_layoutHapticsControlView;
- (void)_layoutVolumeControlView;
- (void)_notifyDelegateVolumeSliderValueDidChangeTo:(id *)a1;
- (void)_setSliderValue:(double)a3 forUpdateReason:(unint64_t)a4;
- (void)_setVolume:(double)a3 forUpdateReason:(unint64_t)a4;
- (void)_updateHapticsButtonHiddenForDetection;
- (void)_updateHapticsButtonHiddenForVolume;
- (void)_updateHapticsButtonImage;
- (void)_updateShadowAppearanceState;
- (void)_updateShadowPathIfNeeded;
- (void)_updateVolumeButtonIconState;
- (void)_volumeSliderValueDidChange;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAllowsVolumeAdjustment:(BOOL)a3;
- (void)setDrawsShadow:(BOOL)a3;
- (void)setEmphasized:(BOOL)a3;
- (void)setHapticsIsOn:(BOOL)a3;
- (void)setMute:(BOOL)a3;
- (void)setPrefersVolumeSliderEnabled:(BOOL)a3;
- (void)setPrefersVolumeSliderIncluded:(BOOL)a3;
- (void)sliderDidBeginTracking:(id)a3;
- (void)sliderWillEndTracking:(id)a3;
- (void)volumeControlButton:(id)a3 didContinuePanningWithXDelta:(double)a4;
- (void)volumeControlButtonDidBeginPanning:(id)a3;
- (void)volumeControlButtonDidEndPanning:(id)a3;
@end

@implementation AVMobileChromelessVolumeControlsView

- (AVMobileChromelessVolumeControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateHapticsButtonHiddenForDetection
{
  if (a1)
  {
    if (a1[595])
    {
      v1 = a1[592] ^ 1;
    }

    else
    {
      v1 = 1;
    }

    v2 = [a1 hapticsButton];
    [v2 setHidden:v1 & 1];
  }
}

- (void)setHapticsIsOn:(BOOL)a3
{
  if (self->_hapticsIsOn != a3)
  {
    self->_hapticsIsOn = a3;
    [(AVMobileChromelessVolumeControlsView *)self _updateHapticsButtonImage];
  }
}

- (void)_updateHapticsButtonImage
{
  if (a1)
  {
    v2 = [MEMORY[0x1E69DCAD8] configurationPreferringMonochrome];
    v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    v9 = [v2 configurationByApplyingConfiguration:v3];

    v4 = MEMORY[0x1E6982288];
    v5 = [MEMORY[0x1E6982288] replaceOffUpTransition];
    v6 = [v4 magicTransitionWithFallback:v5];

    if (*(a1 + 594))
    {
      v7 = @"apple.haptics";
    }

    else
    {
      v7 = @"apple.haptics.slash";
    }

    v8 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v7 withConfiguration:v9];
    [*(a1 + 584) setSymbolImage:v8 withContentTransition:v6];
  }
}

- (void)_hapticsButtonTapped
{
  self->_hapticsIsOn ^= 1u;
  [(AVMobileChromelessVolumeControlsView *)self _updateHapticsButtonImage];
  v3 = [(AVMobileChromelessVolumeControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileChromelessVolumeControlsView *)self delegate];
    [v5 volumeControlsView:self didSelectHapticsOn:self->_hapticsIsOn];
  }
}

- (void)_volumeSliderValueDidChange
{
  if (self->_allowsVolumeAdjustment)
  {
    [(AVMobileChromelessSlider *)self->_volumeSlider value];
    v5 = v4;
    [(AVMobileChromelessVolumeControlsView *)self _setVolume:0 forUpdateReason:v4];

    [(AVMobileChromelessVolumeControlsView *)&self->super.super.super.super.isa _notifyDelegateVolumeSliderValueDidChangeTo:v5];
  }
}

- (void)_notifyDelegateVolumeSliderValueDidChangeTo:(id *)a1
{
  if (a1)
  {
    v7 = [a1 delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = a1[79];
      v5 = [v4 _fluidUpdateSource];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        [v7 volumeControlsView:a1 volumeDidChangeTo:v5 withUpdateSource:a2];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v7 volumeControlsView:a1 volumeDidChangeTo:a2];
    }
  }
}

- (void)_updateVolumeButtonIconState
{
  if ([(AVMobileChromelessVolumeControlsView *)self isMuted])
  {
    v3 = AVMobileAccessibilityLabelUnmute;
LABEL_7:
    v5 = AVVolumeGlyphStateNameMuted;
    goto LABEL_8;
  }

  [(AVMobileChromelessVolumeControlsView *)self volume];
  if (v4 <= 0.0)
  {
    v3 = AVMobileAccessibilityLabelMute;
    goto LABEL_7;
  }

  if (v4 >= 0.33)
  {
    if (v4 >= 0.66)
    {
      v5 = &AVVolumeGlyphStateNameMax;
      if (v4 < 0.95)
      {
        v5 = AVVolumeGlyphStateNameHigh;
      }

      v3 = AVMobileAccessibilityLabelMute;
    }

    else
    {
      v3 = AVMobileAccessibilityLabelMute;
      v5 = AVVolumeGlyphStateNameMedium;
    }
  }

  else
  {
    v3 = AVMobileAccessibilityLabelMute;
    v5 = AVVolumeGlyphStateNameLow;
  }

LABEL_8:
  v8 = *v5;
  volumeButton = self->_volumeButton;
  v7 = AVLocalizedString(*v3);
  [(AVMobileVolumeChromelessButtonControl *)volumeButton setAccessibilityLabel:v7];

  [(AVMobileVolumeChromelessButtonControl *)self->_volumeButton setVolumeIconState:v8];
}

- (void)_setVolume:(double)a3 forUpdateReason:(unint64_t)a4
{
  if (self->_volume != a3)
  {
    self->_volume = fmin(fmax(a3, 0.0), 1.0);
    [(AVMobileChromelessVolumeControlsView *)self _setSliderValue:a4 forUpdateReason:?];
  }
}

- (void)_setSliderValue:(double)a3 forUpdateReason:(unint64_t)a4
{
  isFluid = [(AVMobileChromelessVolumeControlsView *)self _isFluidSlider];
  volumeSlider = self->_volumeSlider;
  if (isFluid)
  {
    v8 = volumeSlider;
    v9 = [(AVMobileChromelessSlider *)v8 _fluidUpdateSource];
    if (a4 == 1 || v9 != 10)
    {
      volume = self->_volume;
      *&volume = volume;
      [(AVMobileChromelessSlider *)v8 setValue:1 animated:volume];
    }
  }

  else
  {
    v11 = self->_volume;
    *&v11 = v11;
    [(AVMobileChromelessSlider *)volumeSlider setValue:v11];
  }

  [(AVMobileChromelessVolumeControlsView *)self _updateVolumeButtonIconState];
}

- (uint64_t)_isFluidSlider
{
  if (a1)
  {
    objc_opt_class();
    LOBYTE(a1) = objc_opt_isKindOfClass();
  }

  return a1 & 1;
}

- (void)_layoutHapticsControlView
{
  v3 = +[AVKitGlobalSettings shared];
  v4 = [v3 hapticsEnabled];

  if (v4)
  {
    v5 = [AVButton buttonWithType:1];
    hapticsButton = self->_hapticsButton;
    self->_hapticsButton = v5;

    [(AVButton *)self->_hapticsButton setAppliesTransformToImageViewWhenHighlighted:1];
    [(AVButton *)self->_hapticsButton setFrame:0.0, 0.0, 36.0, 36.0];
    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 10.0, 26.0, 26.0}];
    hapticsImageView = self->_hapticsImageView;
    self->_hapticsImageView = v7;

    [(UIImageView *)self->_hapticsImageView setContentMode:1];
    [(UIImageView *)self->_hapticsImageView setUserInteractionEnabled:0];
    [(AVButton *)self->_hapticsButton addSubview:self->_hapticsImageView];
    v9 = self->_hapticsButton;
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v9 setTintColor:v10];

    [(AVButton *)self->_hapticsButton setAutoresizingMask:0];
    [(AVButton *)self->_hapticsButton addTarget:self action:sel__hapticsButtonTapped forControlEvents:64];
    [(AVMobileChromelessVolumeControlsView *)self addSubview:self->_hapticsButton];
    [(AVMobileChromelessVolumeControlsView *)self _updateHapticsButtonImage];
    [(AVMobileChromelessVolumeControlsView *)self _updateHapticsButtonHiddenForDetection];
  }

  self->_hapticsIsOn = 0;
}

- (void)_layoutVolumeControlView
{
  [(AVMobileChromelessVolumeControlsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(AVMobileChromelessVolumeControlsView *)self effectiveUserInterfaceLayoutDirection];
  if (v4 >= v4 / 1.28)
  {
    v8 = v4;
  }

  else
  {
    v8 = v4 / 1.28;
  }

  v9 = v4 - v8;
  [(UIView *)self->_volumeControls avkit_setFrame:v7 inLayoutDirection:v9, 0.0];
  v10 = +[AVKitGlobalSettings shared];
  v11 = [v10 hapticsEnabled];

  if (v11)
  {
    hapticsButton = self->_hapticsButton;

    [(UIView *)hapticsButton avkit_setFrame:v7 inLayoutDirection:v9 + -54.0, 0.0, 26.0, v6];
  }
}

- (void)_handleVolumeControlButtonTap
{
  v3 = [(AVMobileChromelessVolumeControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVMobileChromelessVolumeControlsView *)self delegate];
    [v5 volumeControlsViewButtonWasTapped:self];
  }
}

- (void)sliderWillEndTracking:(id)a3
{
  if (self->_allowsVolumeAdjustment)
  {
    v4 = [(AVMobileChromelessVolumeControlsView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(AVMobileChromelessVolumeControlsView *)self delegate];
      [v6 volumeControlsViewInteractionDidEnd:self];
    }
  }
}

- (void)sliderDidBeginTracking:(id)a3
{
  if (self->_allowsVolumeAdjustment)
  {
    v4 = [(AVMobileChromelessVolumeControlsView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(AVMobileChromelessVolumeControlsView *)self delegate];
      [v6 volumeControlsViewInteractionDidBegin:self];
    }
  }
}

- (void)volumeControlButton:(id)a3 didContinuePanningWithXDelta:(double)a4
{
  [(AVMobileChromelessSlider *)self->_volumeSlider frame];
  Width = CGRectGetWidth(v14);
  v7 = [(AVMobileChromelessVolumeControlsView *)self effectiveUserInterfaceLayoutDirection];
  if (Width > 0.0)
  {
    v8 = v7;
    [(AVMobileChromelessSlider *)self->_volumeSlider value];
    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = a4 / Width;
      if (v8 == 1)
      {
        v11 = -(a4 / Width);
      }

      v12 = fmin(fmax(v11 + v10, 0.0), 1.0);
      [(AVMobileChromelessVolumeControlsView *)self setVolume:0 forUpdateReason:v12];
      [(AVMobileChromelessVolumeControlsView *)self _updateVolumeButtonIconState];

      [(AVMobileChromelessVolumeControlsView *)&self->super.super.super.super.isa _notifyDelegateVolumeSliderValueDidChangeTo:v12];
    }
  }
}

- (void)volumeControlButtonDidEndPanning:(id)a3
{
  v4 = [(AVMobileChromelessVolumeControlsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVMobileChromelessVolumeControlsView *)self delegate];
    [v6 volumeControlsViewInteractionDidEnd:self];
  }
}

- (void)volumeControlButtonDidBeginPanning:(id)a3
{
  v4 = [(AVMobileChromelessVolumeControlsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVMobileChromelessVolumeControlsView *)self delegate];
    [v6 volumeControlsViewInteractionDidBegin:self];
  }

  v7 = +[AVKitGlobalSettings shared];
  v8 = [v7 hapticsEnabled];

  if (v8)
  {

    [(AVMobileChromelessVolumeControlsView *)self _updateHapticsButtonHiddenForVolume];
  }
}

- (void)_updateHapticsButtonHiddenForVolume
{
  if (a1)
  {
    v2 = a1[596];
    if (v2 != 1)
    {
      goto LABEL_9;
    }

    v7 = [a1 hapticsButton];
    [v7 alpha];
    if (v3 == 1.0)
    {

LABEL_12:
      objc_initWeak(&location, a1);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__AVMobileChromelessVolumeControlsView__updateHapticsButtonHiddenForVolume__block_invoke;
      block[3] = &unk_1E7209EA8;
      objc_copyWeak(&v9, &location);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
      return;
    }

    if (a1[596])
    {
    }

    else
    {
LABEL_9:
      v4 = [a1 hapticsButton];
      [v4 alpha];
      v6 = v5;

      if (v2)
      {
      }

      if (v6 == 0.0)
      {
        goto LABEL_12;
      }
    }
  }
}

void __75__AVMobileChromelessVolumeControlsView__updateHapticsButtonHiddenForVolume__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained prefersVolumeSliderIncluded])
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 0.5;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__AVMobileChromelessVolumeControlsView__updateHapticsButtonHiddenForVolume__block_invoke_2;
  v5[3] = &unk_1E7209EA8;
  objc_copyWeak(&v6, (a1 + 32));
  [v2 animateWithDuration:v5 animations:v4];

  objc_destroyWeak(&v6);
}

void __75__AVMobileChromelessVolumeControlsView__updateHapticsButtonHiddenForVolume__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained prefersVolumeSliderIncluded])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 hapticsButton];
  [v5 setAlpha:v3];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 layoutIfNeeded];
}

- (void)setDrawsShadow:(BOOL)a3
{
  if (self->_drawsShadow != a3)
  {
    self->_drawsShadow = a3;
    [(AVMobileChromelessVolumeControlsView *)&self->super.super.super.super.isa _updateShadowAppearanceState];
  }
}

- (void)_updateShadowAppearanceState
{
  if (a1)
  {
    v9 = [a1[79] layer];
    v2 = [a1[78] layer];
    if ([a1 drawsShadow])
    {
      v3 = [MEMORY[0x1E69DC888] blackColor];
      v4 = [MEMORY[0x1E69DC888] blackColor];
      v5 = 1.0;
      v6 = 1053609165;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      v5 = 0.0;
      v6 = 0;
    }

    [v9 setShadowColor:{objc_msgSend(v3, "CGColor")}];
    *&v7 = v5;
    [v9 setShadowOpacity:v7];
    [v2 setShadowColor:{objc_msgSend(v4, "CGColor")}];
    LODWORD(v8) = v6;
    [v2 setShadowOpacity:v8];
    [(AVMobileChromelessVolumeControlsView *)a1 _updateShadowPathIfNeeded];
  }
}

- (void)_updateShadowPathIfNeeded
{
  if (a1 && [a1 drawsShadow])
  {
    v21 = [*(a1 + 632) layer];
    [v21 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    if (CGRectIsNull(*(a1 + 512)) || (v23.origin.x = v3, v23.origin.y = v5, v23.size.width = v7, v23.size.height = v9, !CGRectEqualToRect(*(a1 + 512), v23)))
    {
      *(a1 + 512) = v3;
      *(a1 + 520) = v5;
      *(a1 + 528) = v7;
      *(a1 + 536) = v9;
      v10 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v3, v5, v7, v9}];
      [v21 setShadowPath:{objc_msgSend(v10, "CGPath")}];
    }

    v11 = [*(a1 + 624) layer];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16 + 5.0;
    v19 = v18 + -5.0;
    if (CGRectIsNull(*(a1 + 544)) || (v24.origin.x = v19, v24.origin.y = v13, v24.size.width = v17, v24.size.height = v15, !CGRectEqualToRect(*(a1 + 544), v24)))
    {
      *(a1 + 544) = v19;
      *(a1 + 552) = v13;
      *(a1 + 560) = v17;
      *(a1 + 568) = v15;
      v20 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v19, v13, v17, v15}];
      [v11 setShadowPath:{objc_msgSend(v20, "CGPath")}];
    }
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v11.receiver = self;
  v11.super_class = AVMobileChromelessVolumeControlsView;
  v7 = a4;
  v8 = [(AVMobileChromelessVolumeControlsView *)&v11 pointInside:v7 withEvent:x, y];
  volumeButton = v6->_volumeButton;
  [(AVMobileVolumeChromelessButtonControl *)volumeButton convertPoint:v6 fromView:x, y, v11.receiver, v11.super_class];
  LOBYTE(v6) = [(AVMobileVolumeChromelessButtonControl *)volumeButton pointInside:v7 withEvent:?];

  return (v8 | v6) & 1;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = AVMobileChromelessVolumeControlsView;
  [(AVView *)&v33 layoutSubviews];
  [(AVMobileChromelessVolumeControlsView *)self _layoutVolumeControlView];
  if ([(AVMobileChromelessVolumeControlsView *)self _isFluidSlider])
  {
    if (self)
    {
      [(UIView *)self->_volumeControls bounds];
      v4 = v3;
      v6 = v5;
      v7 = [(AVMobileChromelessVolumeControlsView *)self effectiveUserInterfaceLayoutDirection];
      [(AVMobileVolumeChromelessButtonControl *)self->_volumeButton intrinsicContentSize];
      v9 = v8;
      [(AVMobileChromelessSlider *)self->_volumeSlider intrinsicContentSize];
      v11 = v10;
      v12 = v9 + 140.0;
      v13 = v4 - v9;
      if (v9 >= v4 - v9)
      {
        v13 = v9;
      }

      v14 = v4 <= v12;
      if (v4 <= v12)
      {
        v12 = v13;
      }

      if (self->_emphasized && v4 * 0.5 >= v9 + 179.2)
      {
        v15 = v9 + 179.2;
      }

      else
      {
        v15 = v12;
      }

      [(AVMobileVolumeChromelessButtonControl *)self->_volumeButton frame];
      [(AVMobileVolumeChromelessButtonControl *)self->_volumeButton setFrame:?];
      v16 = self->_volumeSlider;
      [(AVMobileChromelessSlider *)v16 setBarWidth:v15 - v9 + -12.0];
      [(UIView *)self->_volumeSlider avkit_setFrame:v7 inLayoutDirection:v4 - v15, (v6 - v11 * 0.5) * 0.5, v15, v11];
      [(AVMobileChromelessSlider *)v16 setPrefersSliderTrackHidden:v14];

      v17 = [(AVMobileChromelessVolumeControlsView *)self superview];
      [v17 frame];
      self->_canIncludeHapticsButton = v18 > v9 + 179.2 + 12.0;
    }
  }

  else if (self)
  {
    [(UIView *)self->_volumeControls bounds];
    v20 = v19;
    v22 = v21;
    v23 = [(AVMobileChromelessVolumeControlsView *)self effectiveUserInterfaceLayoutDirection];
    [(AVMobileVolumeChromelessButtonControl *)self->_volumeButton intrinsicContentSize];
    v25 = v24;
    v27 = v26;
    [(AVMobileChromelessSlider *)self->_volumeSlider intrinsicContentSize];
    v29 = v28;
    if (v20 >= v25)
    {
      v30 = v20 - (v25 + 12.0);
    }

    else
    {
      v30 = v20;
    }

    if (v20 >= v25)
    {
      [(UIView *)self->_volumeButton avkit_setFrame:v23 inLayoutDirection:v20 - v25, (v22 - v27) * 0.5, v25, v27];
    }

    v31 = 179.2;
    if (!self->_emphasized || v30 * 0.5 < 179.2)
    {
      v31 = 140.0;
    }

    v32 = v20 - v25 - v31 + -12.0;
    if (!self->_volumeSliderHidesWithAlphaChange && !self->_prefersVolumeSliderIncluded)
    {
      v32 = v31 + v32;
      v31 = 0.0;
    }

    [(UIView *)self->_volumeSlider avkit_setFrame:v23 inLayoutDirection:v32, (v22 - v29) * 0.5, v31, v29];
    [(AVMobileVolumeChromelessButtonControl *)self->_volumeButton setHidden:v20 < v25];
    [(AVMobileChromelessSlider *)self->_volumeSlider setHidden:v30 < 140.0];
  }

  [(AVMobileChromelessVolumeControlsView *)self _updateShadowPathIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileVolumeChromelessButtonControl *)self->_volumeButton intrinsicContentSize];
  v5 = v4;
  prefersVolumeSliderIncluded = self->_prefersVolumeSliderIncluded;
  if (prefersVolumeSliderIncluded)
  {
    v7 = v3 + 152.0;
  }

  else
  {
    v7 = v3;
  }

  v8 = +[AVKitGlobalSettings shared];
  v9 = [v8 hapticsEnabled];

  if (v9)
  {
    [(AVButton *)self->_hapticsButton intrinsicContentSize];
    v7 = v7 + v10;
  }

  v11 = 16.0;
  if (!prefersVolumeSliderIncluded || v5 >= 26.0)
  {
    v11 = v5 + -10.0;
  }

  v12 = v7;
  result.height = v11;
  result.width = v12;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = AVMobileChromelessVolumeControlsView;
  v8 = [(AVView *)&v16 hitTest:v7 withEvent:x, y];
  if ([(AVMobileChromelessVolumeControlsView *)self isUserInteractionEnabled])
  {
    p_volumeButton = &self->_volumeButton;
    volumeButton = self->_volumeButton;
    [(AVMobileVolumeChromelessButtonControl *)volumeButton convertPoint:self fromView:x, y];
    if ([(AVMobileVolumeChromelessButtonControl *)volumeButton pointInside:v7 withEvent:?])
    {
      goto LABEL_4;
    }

    p_volumeButton = &self->_volumeSlider;
    volumeSlider = self->_volumeSlider;
    [(AVMobileChromelessSlider *)volumeSlider convertPoint:self fromView:x, y];
    if ([(AVMobileChromelessSlider *)volumeSlider pointInside:v7 withEvent:?])
    {
      goto LABEL_4;
    }

    v12 = +[AVKitGlobalSettings shared];
    if (![v12 hapticsEnabled])
    {
      goto LABEL_5;
    }

    p_volumeButton = &self->_hapticsButton;
    hapticsButton = self->_hapticsButton;
    [(AVButton *)hapticsButton convertPoint:self fromView:x, y];
    v15 = [(AVButton *)hapticsButton pointInside:v7 withEvent:?];

    if (v15)
    {
LABEL_4:
      v12 = v8;
      v8 = *p_volumeButton;
LABEL_5:
    }
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [a3 view];
  LOBYTE(self) = [v4 isDescendantOfView:self];

  return self;
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = AVMobileChromelessVolumeControlsView;
  [(AVMobileChromelessVolumeControlsView *)&v6 didMoveToWindow];
  volume = self->_volume;
  *&volume = volume;
  [(AVMobileChromelessSlider *)self->_volumeSlider setValue:volume];
  v4 = [(AVMobileChromelessSlider *)self->_volumeSlider layer];
  v5 = [(AVMobileVolumeChromelessButtonControl *)self->_volumeButton layer];
  [v4 setShadowOffset:{0.0, 6.0}];
  [v4 setShadowRadius:10.0];
  [v5 setShadowOffset:{0.0, 6.0}];
  [v5 setShadowRadius:10.0];
  [(AVMobileChromelessVolumeControlsView *)&self->super.super.super.super.isa _updateShadowAppearanceState];

  [(AVMobileChromelessVolumeControlsView *)self _updateVolumeButtonIconState];
  [(AVMobileChromelessVolumeControlsView *)self _layoutHapticsControlView];
}

- (void)setPrefersVolumeSliderEnabled:(BOOL)a3
{
  if (self->_prefersVolumeSliderEnabled != a3)
  {
    self->_prefersVolumeSliderEnabled = a3;
    [(AVMobileChromelessSlider *)self->_volumeSlider setEnabled:?];
  }
}

- (void)setAllowsVolumeAdjustment:(BOOL)a3
{
  if (self->_allowsVolumeAdjustment != a3)
  {
    self->_allowsVolumeAdjustment = a3;
  }
}

- (void)setPrefersVolumeSliderIncluded:(BOOL)a3
{
  if (self->_prefersVolumeSliderIncluded != a3)
  {
    self->_prefersVolumeSliderIncluded = a3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AVMobileChromelessSlider *)self->_volumeSlider setPrefersSliderTrackHidden:!self->_prefersVolumeSliderIncluded];
      [(AVMobileChromelessVolumeControlsView *)self invalidateIntrinsicContentSize];
      v4 = [(AVMobileChromelessVolumeControlsView *)self superview];
      [v4 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

      [(AVMobileChromelessVolumeControlsView *)self setNeedsLayout];
      v5 = +[AVKitGlobalSettings shared];
      v6 = [v5 hapticsEnabled];

      if (v6)
      {

        [(AVMobileChromelessVolumeControlsView *)self _updateHapticsButtonHiddenForVolume];
      }
    }

    else if (self->_volumeSliderHidesWithAlphaChange)
    {
      v7 = 0.0;
      if (self->_prefersVolumeSliderIncluded)
      {
        v7 = 1.0;
      }

      volumeSlider = self->_volumeSlider;

      [(AVMobileChromelessSlider *)volumeSlider setAlpha:v7];
    }

    else
    {
      [(AVMobileChromelessVolumeControlsView *)self setNeedsLayout];

      [(AVMobileChromelessVolumeControlsView *)self layoutIfNeeded];
    }
  }
}

- (void)setMute:(BOOL)a3
{
  if (self->_mute != a3)
  {
    self->_mute = a3;
    [(AVMobileChromelessVolumeControlsView *)self _updateVolumeButtonIconState];
  }
}

- (BOOL)isTracking
{
  if (([(AVMobileChromelessSlider *)self->_volumeSlider isTracking]& 1) != 0)
  {
    return 1;
  }

  volumeButton = self->_volumeButton;

  return [(AVMobileVolumeChromelessButtonControl *)volumeButton isTracking];
}

- (void)setEmphasized:(BOOL)a3
{
  if (self->_emphasized != a3)
  {
    self->_emphasized = a3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      emphasizedAnimator = self->_emphasizedAnimator;
      v5 = 1.0;
      if (emphasizedAnimator && [(UIViewPropertyAnimator *)emphasizedAnimator isRunning]&& [(UIViewPropertyAnimator *)self->_emphasizedAnimator isInterruptible])
      {
        [(UIViewPropertyAnimator *)self->_emphasizedAnimator fractionComplete];
        v5 = v6;
        [(UIViewPropertyAnimator *)self->_emphasizedAnimator stopAnimation:1];
        [(UIViewPropertyAnimator *)self->_emphasizedAnimator finishAnimationAtPosition:2];
        v7 = self->_emphasizedAnimator;
        self->_emphasizedAnimator = 0;
      }

      objc_initWeak(&location, self);
      v8 = objc_alloc(MEMORY[0x1E69DD278]);
      v9 = 1.0;
      if (v5 <= 1.0)
      {
        v9 = v5;
      }

      v10 = v9 * 0.2;
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __79__AVMobileChromelessVolumeControlsView__updateVolumeFluidSliderEmphasizedScale__block_invoke;
      v25 = &unk_1E7209EA8;
      objc_copyWeak(&v26, &location);
      v11 = [v8 initWithDuration:3 curve:&v22 animations:v10];
      v12 = self->_emphasizedAnimator;
      self->_emphasizedAnimator = v11;

      [(UIViewPropertyAnimator *)self->_emphasizedAnimator startAnimation:v22];
    }

    else
    {
      v13 = self->_emphasizedAnimator;
      v14 = 1.0;
      if (v13 && [(UIViewPropertyAnimator *)v13 isRunning]&& [(UIViewPropertyAnimator *)self->_emphasizedAnimator isInterruptible])
      {
        [(UIViewPropertyAnimator *)self->_emphasizedAnimator fractionComplete];
        v14 = v15;
        [(UIViewPropertyAnimator *)self->_emphasizedAnimator stopAnimation:1];
        [(UIViewPropertyAnimator *)self->_emphasizedAnimator finishAnimationAtPosition:2];
        v16 = self->_emphasizedAnimator;
        self->_emphasizedAnimator = 0;
      }

      objc_initWeak(&location, self);
      v17 = objc_alloc(MEMORY[0x1E69DD278]);
      v18 = 1.0;
      if (v14 <= 1.0)
      {
        v18 = v14;
      }

      v19 = v18 * 0.2;
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __74__AVMobileChromelessVolumeControlsView__updateVolumeSliderEmphasizedScale__block_invoke;
      v25 = &unk_1E7209EA8;
      objc_copyWeak(&v26, &location);
      v20 = [v17 initWithDuration:3 curve:&v22 animations:v19];
      v21 = self->_emphasizedAnimator;
      self->_emphasizedAnimator = v20;

      [(UIViewPropertyAnimator *)self->_emphasizedAnimator startAnimation:v22];
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __74__AVMobileChromelessVolumeControlsView__updateVolumeSliderEmphasizedScale__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 598);
    v4 = WeakRetained[79];
    if (v3 == 1)
    {
      [v4 setBarHeight:9.5];
      [v2[60] bounds];
      v6 = v5;
      [v2[78] intrinsicContentSize];
      if (v6 - v7 + -12.0 >= 179.2)
      {
        v8 = v2[79];
        CGAffineTransformMakeScale(&v11, 1.28, 1.0);
        [v8 setTransform:&v11];
      }

      [v2 layoutIfNeeded];
      [v2 setNeedsLayout];
    }

    else
    {
      [v4 setBarHeight:7.5];
      [v2 setNeedsLayout];
      v9 = v2[79];
      v10 = *(MEMORY[0x1E695EFD0] + 16);
      *&v11.a = *MEMORY[0x1E695EFD0];
      *&v11.c = v10;
      *&v11.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v9 setTransform:&v11];
      [v2 layoutIfNeeded];
    }
  }
}

void __79__AVMobileChromelessVolumeControlsView__updateVolumeFluidSliderEmphasizedScale__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[598];
    v5 = WeakRetained;
    v3 = *(WeakRetained + 79);
    v4 = 7.5;
    if (v2)
    {
      v4 = 9.5;
    }

    [v3 setBarHeight:v4];
    [v5 setNeedsLayout];
    [v5 layoutIfNeeded];
    WeakRetained = v5;
  }
}

- (AVMobileChromelessVolumeControlsView)init
{
  v25.receiver = self;
  v25.super_class = AVMobileChromelessVolumeControlsView;
  v2 = [(AVMobileChromelessVolumeControlsView *)&v25 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:14];
    enabledFilledBarViewEffect = v2->_enabledFilledBarViewEffect;
    v2->_enabledFilledBarViewEffect = v3;

    v5 = [MEMORY[0x1E69DC730] effectWithStyle:11];
    enabledUnfilledBarViewEffect = v2->_enabledUnfilledBarViewEffect;
    v2->_enabledUnfilledBarViewEffect = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    volumeControls = v2->_volumeControls;
    v2->_volumeControls = v7;

    [(UIView *)v2->_volumeControls setAutoresizingMask:0];
    v9 = objc_alloc_init(AVMobileVolumeChromelessButtonControl);
    volumeButton = v2->_volumeButton;
    v2->_volumeButton = v9;

    [(AVMobileVolumeChromelessButtonControl *)v2->_volumeButton setAccessibilityIdentifier:@"Mute/Unmute"];
    v11 = v2->_volumeButton;
    v12 = AVLocalizedString(@"Mute");
    [(AVMobileVolumeChromelessButtonControl *)v11 setAccessibilityLabel:v12];

    [(AVMobileVolumeChromelessButtonControl *)v2->_volumeButton setIsAccessibilityElement:1];
    [(AVMobileVolumeChromelessButtonControl *)v2->_volumeButton setAutoresizingMask:0];
    [(AVMobileVolumeChromelessButtonControl *)v2->_volumeButton setHidden:1];
    [(AVMobileVolumeChromelessButtonControl *)v2->_volumeButton setDelegate:v2];
    [(AVMobileVolumeChromelessButtonControl *)v2->_volumeButton addTarget:v2 action:sel__handleVolumeControlButtonTap forControlEvents:0x1000000];
    v13 = +[AVKitGlobalSettings shared];
    LODWORD(v12) = [v13 fluidSliderEnabled];

    if (v12)
    {
      v14 = objc_alloc_init(AVMobileChromelessFluidSlider);
      [(AVMobileChromelessFluidSlider *)v14 setUsesVolumeStyle:1];
      [(AVMobileChromelessFluidSlider *)v14 setMaximumValueView:v2->_volumeButton];
      [(AVMobileChromelessFluidSlider *)v14 setStretchLimit:10.0];
      volumeSlider = v2->_volumeSlider;
      v2->_volumeSlider = v14;
      v16 = v14;

      [(AVMobileVolumeChromelessButtonControl *)v2->_volumeButton setHidden:0];
      [(AVMobileChromelessSlider *)v2->_volumeSlider setHidden:0];
    }

    else
    {
      v17 = objc_alloc_init(AVMobileChromelessSlider);
      v18 = v2->_volumeSlider;
      v2->_volumeSlider = v17;

      [(UIView *)v2->_volumeControls addSubview:v2->_volumeButton];
    }

    [(AVMobileChromelessSlider *)v2->_volumeSlider setAccessibilityIdentifier:@"Volume Slider"];
    v19 = v2->_volumeSlider;
    v20 = AVLocalizedString(@"Volume Slider");
    [(AVMobileChromelessSlider *)v19 setAccessibilityLabel:v20];

    [(AVMobileChromelessSlider *)v2->_volumeSlider setIsAccessibilityElement:1];
    [(AVMobileChromelessSlider *)v2->_volumeSlider setAutoresizingMask:0];
    [(AVMobileChromelessSlider *)v2->_volumeSlider setHidden:0];
    [(AVMobileChromelessSlider *)v2->_volumeSlider setDelegate:v2];
    [(AVMobileChromelessSlider *)v2->_volumeSlider setMinimumValue:0.0];
    LODWORD(v21) = 1.0;
    [(AVMobileChromelessSlider *)v2->_volumeSlider setMaximumValue:v21];
    [(AVMobileChromelessSlider *)v2->_volumeSlider setBarHeight:7.5];
    [(AVMobileChromelessSlider *)v2->_volumeSlider addTarget:v2 action:sel__volumeSliderValueDidChange forControlEvents:4096];
    [(UIView *)v2->_volumeControls addSubview:v2->_volumeSlider];
    [(AVMobileChromelessVolumeControlsView *)v2 addSubview:v2->_volumeControls];
    v2->_emphasized = 0;
    v2->_prefersVolumeSliderIncluded = 1;
    v2->_prefersVolumeSliderEnabled = 1;
    v2->_volumeSliderHidesWithAlphaChange = 1;
    v2->_mute = 0;
    v22 = *MEMORY[0x1E695F050];
    v23 = *(MEMORY[0x1E695F050] + 16);
    v2->_sliderShadowPathRect.origin = *MEMORY[0x1E695F050];
    v2->_sliderShadowPathRect.size = v23;
    v2->_buttonShadowPathRect.origin = v22;
    v2->_buttonShadowPathRect.size = v23;
    [(AVView *)v2 setIgnoresTouches:1];
    v2->_canIncludeHapticsButton = 1;
  }

  return v2;
}

@end