@interface AVMobileGlassVolumeControlsView
- (AVMobileGlassVolumeControlsView)initWithStyleSheet:(id)sheet;
- (AVMobileGlassVolumeControlsViewDelegate)delegate;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isTracking;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (double)_sliderBarWidth;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_handleVolumeControlButtonTap;
- (void)_hapticsButtonTapped;
- (void)_layoutHapticsControlView;
- (void)_setSliderValue:(double)value forUpdateReason:(unint64_t)reason;
- (void)_setVolume:(double)volume forUpdateReason:(unint64_t)reason;
- (void)_updateHapticsButtonHiddenForDetection;
- (void)_updateHapticsButtonHiddenForVolume;
- (void)_updateHapticsButtonImage;
- (void)_updateShadowAppearanceState;
- (void)_updateShadowPathIfNeeded;
- (void)_updateVolumeButtonIconState;
- (void)_volumeSliderValueDidChange;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAllowsVolumeAdjustment:(BOOL)adjustment;
- (void)setBackgroundView:(id)view;
- (void)setDrawsShadow:(BOOL)shadow;
- (void)setEmphasized:(BOOL)emphasized;
- (void)setFullscreen:(BOOL)fullscreen;
- (void)setHapticsIsOn:(BOOL)on;
- (void)setMute:(BOOL)mute;
- (void)setPrefersVolumeSliderEnabled:(BOOL)enabled;
- (void)setPrefersVolumeSliderIncluded:(BOOL)included;
- (void)setStyleSheet:(id)sheet;
- (void)updateBackgroundMaterial;
- (void)volumeControlButtonDidBeginPanning:(id)panning;
- (void)volumeControlButtonDidEndPanning:(id)panning;
@end

@implementation AVMobileGlassVolumeControlsView

- (AVMobileGlassVolumeControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateHapticsButtonHiddenForDetection
{
  if (self)
  {
    if (self[604])
    {
      v1 = self[600] ^ 1;
    }

    else
    {
      v1 = 1;
    }

    hapticsButton = [self hapticsButton];
    [hapticsButton setHidden:v1 & 1];
  }
}

- (void)setHapticsIsOn:(BOOL)on
{
  if (self->_hapticsIsOn != on)
  {
    self->_hapticsIsOn = on;
    [(AVMobileGlassVolumeControlsView *)self _updateHapticsButtonImage];
  }
}

- (void)_updateHapticsButtonImage
{
  if (self)
  {
    configurationPreferringMonochrome = [MEMORY[0x1E69DCAD8] configurationPreferringMonochrome];
    v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    v9 = [configurationPreferringMonochrome configurationByApplyingConfiguration:v3];

    v4 = MEMORY[0x1E6982288];
    replaceOffUpTransition = [MEMORY[0x1E6982288] replaceOffUpTransition];
    v6 = [v4 magicTransitionWithFallback:replaceOffUpTransition];

    if (*(self + 603))
    {
      v7 = @"apple.haptics";
    }

    else
    {
      v7 = @"apple.haptics.slash";
    }

    v8 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v7 withConfiguration:v9];
    [*(self + 592) setSymbolImage:v8 withContentTransition:v6];
  }
}

- (void)_hapticsButtonTapped
{
  self->_hapticsIsOn ^= 1u;
  [(AVMobileGlassVolumeControlsView *)self _updateHapticsButtonImage];
  delegate = [(AVMobileGlassVolumeControlsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AVMobileGlassVolumeControlsView *)self delegate];
    [delegate2 volumeControlsView:self didSelectHapticsOn:self->_hapticsIsOn];
  }
}

- (void)_volumeSliderValueDidChange
{
  if (self->_allowsVolumeAdjustment)
  {
    volume = self->_volume;
    [(AVMobileChromelessFluidSlider *)self->_volumeSlider value];
    if (volume != v4)
    {
      [(AVMobileChromelessFluidSlider *)self->_volumeSlider value];
      v6 = v5;
      [(AVMobileGlassVolumeControlsView *)self _setVolume:0 forUpdateReason:v5];
      delegate = [(AVMobileGlassVolumeControlsView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate volumeControlsView:self volumeDidChangeTo:-[AVMobileChromelessFluidSlider _fluidUpdateSource](self->_volumeSlider withUpdateSource:{"_fluidUpdateSource"), v6}];
      }
    }
  }
}

- (void)_updateVolumeButtonIconState
{
  if ([(AVMobileGlassVolumeControlsView *)self isMuted])
  {
    v3 = AVMobileAccessibilityLabelUnmute;
LABEL_7:
    v5 = AVVolumeGlyphStateNameMuted;
    goto LABEL_8;
  }

  [(AVMobileGlassVolumeControlsView *)self volume];
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
  [(AVMobileGlassVolumeButtonControl *)volumeButton setAccessibilityLabel:v7];

  [(AVMobileGlassVolumeButtonControl *)self->_volumeButton setVolumeIconState:v8];
}

- (void)_setVolume:(double)volume forUpdateReason:(unint64_t)reason
{
  if (self->_volume != volume)
  {
    self->_volume = fmin(fmax(volume, 0.0), 1.0);
    [(AVMobileGlassVolumeControlsView *)self _setSliderValue:reason forUpdateReason:?];
  }
}

- (void)_setSliderValue:(double)value forUpdateReason:(unint64_t)reason
{
  v8 = self->_volumeSlider;
  _fluidUpdateSource = [(AVMobileChromelessFluidSlider *)v8 _fluidUpdateSource];
  if (reason == 1 || _fluidUpdateSource != 10)
  {
    volume = self->_volume;
    *&volume = volume;
    [(AVMobileChromelessFluidSlider *)v8 setValue:1 animated:volume];
  }

  [(AVMobileGlassVolumeControlsView *)self _updateVolumeButtonIconState];
}

- (void)_layoutHapticsControlView
{
  v3 = +[AVKitGlobalSettings shared];
  hapticsEnabled = [v3 hapticsEnabled];

  if (hapticsEnabled)
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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVButton *)v9 setTintColor:whiteColor];

    [(AVButton *)self->_hapticsButton setAutoresizingMask:0];
    [(AVButton *)self->_hapticsButton addTarget:self action:sel__hapticsButtonTapped forControlEvents:64];
    [(AVMobileGlassVolumeControlsView *)self addSubview:self->_hapticsButton];
    [(AVMobileGlassVolumeControlsView *)self _updateHapticsButtonImage];
    [(AVMobileGlassVolumeControlsView *)self _updateHapticsButtonHiddenForDetection];
  }

  self->_hapticsIsOn = 0;
}

- (void)_handleVolumeControlButtonTap
{
  delegate = [(AVMobileGlassVolumeControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate volumeControlsViewButtonWasTapped:self];
  }
}

- (void)volumeControlButtonDidEndPanning:(id)panning
{
  delegate = [(AVMobileGlassVolumeControlsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVMobileGlassVolumeControlsView *)self delegate];
    [delegate2 volumeControlsViewInteractionDidEnd:self];
  }
}

- (void)volumeControlButtonDidBeginPanning:(id)panning
{
  delegate = [(AVMobileGlassVolumeControlsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVMobileGlassVolumeControlsView *)self delegate];
    [delegate2 volumeControlsViewInteractionDidBegin:self];
  }

  v7 = +[AVKitGlobalSettings shared];
  hapticsEnabled = [v7 hapticsEnabled];

  if (hapticsEnabled)
  {

    [(AVMobileGlassVolumeControlsView *)self _updateHapticsButtonHiddenForVolume];
  }
}

- (void)_updateHapticsButtonHiddenForVolume
{
  if (self)
  {
    v2 = self[605];
    if (v2 != 1)
    {
      goto LABEL_9;
    }

    hapticsButton = [self hapticsButton];
    [hapticsButton alpha];
    if (v3 == 1.0)
    {

LABEL_12:
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__AVMobileGlassVolumeControlsView__updateHapticsButtonHiddenForVolume__block_invoke;
      block[3] = &unk_1E7209EA8;
      objc_copyWeak(&v9, &location);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
      return;
    }

    if (self[605])
    {
    }

    else
    {
LABEL_9:
      hapticsButton2 = [self hapticsButton];
      [hapticsButton2 alpha];
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

void __70__AVMobileGlassVolumeControlsView__updateHapticsButtonHiddenForVolume__block_invoke(uint64_t a1)
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
  v5[2] = __70__AVMobileGlassVolumeControlsView__updateHapticsButtonHiddenForVolume__block_invoke_2;
  v5[3] = &unk_1E7209EA8;
  objc_copyWeak(&v6, (a1 + 32));
  [v2 animateWithDuration:v5 animations:v4];

  objc_destroyWeak(&v6);
}

void __70__AVMobileGlassVolumeControlsView__updateHapticsButtonHiddenForVolume__block_invoke_2(uint64_t a1)
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

- (void)setDrawsShadow:(BOOL)shadow
{
  if (self->_drawsShadow != shadow)
  {
    self->_drawsShadow = shadow;
    [(AVMobileGlassVolumeControlsView *)&self->super.super.super.super.super.isa _updateShadowAppearanceState];
  }
}

- (void)_updateShadowAppearanceState
{
  if (self)
  {
    layer = [self[79] layer];
    layer2 = [self[82] layer];
    if ([self drawsShadow])
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      blackColor2 = [MEMORY[0x1E69DC888] blackColor];
      v5 = 1.0;
      v6 = 1053609165;
    }

    else
    {
      blackColor = 0;
      blackColor2 = 0;
      v5 = 0.0;
      v6 = 0;
    }

    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];
    *&v7 = v5;
    [layer setShadowOpacity:v7];
    [layer2 setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];
    LODWORD(v8) = v6;
    [layer2 setShadowOpacity:v8];
    [(AVMobileGlassVolumeControlsView *)self _updateShadowPathIfNeeded];
  }
}

- (void)_updateShadowPathIfNeeded
{
  if (self && [self drawsShadow])
  {
    layer = [*(self + 632) layer];
    [layer bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    if (CGRectIsNull(*(self + 520)) || (v23.origin.x = v3, v23.origin.y = v5, v23.size.width = v7, v23.size.height = v9, !CGRectEqualToRect(*(self + 520), v23)))
    {
      *(self + 520) = v3;
      *(self + 528) = v5;
      *(self + 536) = v7;
      *(self + 544) = v9;
      v10 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v3, v5, v7, v9}];
      [layer setShadowPath:{objc_msgSend(v10, "CGPath")}];
    }

    layer2 = [*(self + 656) layer];
    [layer2 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16 + 5.0;
    v19 = v18 + -5.0;
    if (CGRectIsNull(*(self + 552)) || (v24.origin.x = v19, v24.origin.y = v13, v24.size.width = v17, v24.size.height = v15, !CGRectEqualToRect(*(self + 552), v24)))
    {
      *(self + 552) = v19;
      *(self + 560) = v13;
      *(self + 568) = v17;
      *(self + 576) = v15;
      v20 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v19, v13, v17, v15}];
      [layer2 setShadowPath:{objc_msgSend(v20, "CGPath")}];
    }
  }
}

- (void)updateBackgroundMaterial
{
  backgroundMaterialized = [(AVGlassBackedView *)self backgroundMaterialized];
  [(AVGlassBackedView *)self->_volumeControls setBackgroundMaterialStyle:[(AVGlassBackedView *)self backgroundMaterialStyle]];
  [(AVGlassBackedView *)self->_volumeControls setBackgroundMaterialized:backgroundMaterialized];

  [(AVMobileGlassVolumeControlsView *)self setNeedsLayout];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  v11.receiver = self;
  v11.super_class = AVMobileGlassVolumeControlsView;
  eventCopy = event;
  v8 = [(AVMobileGlassVolumeControlsView *)&v11 pointInside:eventCopy withEvent:x, y];
  volumeButton = selfCopy->_volumeButton;
  [(AVMobileGlassVolumeButtonControl *)volumeButton convertPoint:selfCopy fromView:x, y, v11.receiver, v11.super_class];
  LOBYTE(selfCopy) = [(AVMobileGlassVolumeButtonControl *)volumeButton pointInside:eventCopy withEvent:?];

  return (v8 | selfCopy) & 1;
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = AVMobileGlassVolumeControlsView;
  [(AVView *)&v43 layoutSubviews];
  if (self)
  {
    [(AVMobileGlassVolumeControlsView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(AVMobileGlassBackgroundView *)self->_backgroundView setFrame:?];
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    [(AVMobileGlassBackgroundView *)self->_backgroundView _setCornerRadius:CGRectGetHeight(v44) * 0.5];
    [(AVMobileGlassVolumeControlsView *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    effectiveUserInterfaceLayoutDirection = [(AVMobileGlassVolumeControlsView *)self effectiveUserInterfaceLayoutDirection];
    if (v14 >= v14 / 1.28)
    {
      v18 = v14;
    }

    else
    {
      v18 = v14 / 1.28;
    }

    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsInlineInternalSpacing];
    if (self->_fullscreen)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsFullscreenInternalSpacing];
    }

    v20 = v12 + v14 - v18 - v19;
    if (v20 >= 0.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

    [(UIView *)self->_volumeControls avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:v21];
    v22 = +[AVKitGlobalSettings shared];
    hapticsEnabled = [v22 hapticsEnabled];

    if (hapticsEnabled)
    {
      [(UIView *)self->_hapticsButton avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:v21 + -54.0, 0.0, 26.0, v16];
    }

    [(AVGlassBackedView *)self->_volumeControls bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    effectiveUserInterfaceLayoutDirection2 = [(AVMobileGlassVolumeControlsView *)self effectiveUserInterfaceLayoutDirection];
    [(AVMobileGlassVolumeButtonControl *)self->_volumeButton intrinsicContentSize];
    v32 = v31;
    [(AVMobileChromelessFluidSlider *)self->_volumeSlider intrinsicContentSize];
    v34 = v33;
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsPlatterInlineEdgeInsets];
    if (self->_fullscreen)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsPlatterFullscreenEdgeInsets];
    }

    if (v32 >= v27 - v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v27 - v32;
    }

    if (v27 - v36 - v35 >= 0.0)
    {
      v37 = v27 - v36 - v35;
    }

    else
    {
      v37 = 0.0;
    }

    [(AVMobileGlassVolumeButtonControl *)self->_volumeButton frame];
    [(AVMobileGlassVolumeButtonControl *)self->_volumeButton setFrame:?];
    _sliderBarWidth = [(AVMobileGlassVolumeControlsView *)self _sliderBarWidth];
    [(AVMobileChromelessFluidSlider *)self->_volumeSlider setBarWidth:?];
    [(UIView *)self->_volumeSlider avkit_setFrame:effectiveUserInterfaceLayoutDirection2 inLayoutDirection:v37, (v25 + v29 - v34) * 0.5, v36, v34];
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsInlineInternalSpacing];
    if (self->_fullscreen)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsFullscreenInternalSpacing];
    }

    v40 = v39;
    superview = [(AVMobileGlassVolumeControlsView *)self superview];
    [superview frame];
    self->_canIncludeHapticsButton = v42 > v32 + _sliderBarWidth * 1.28 + v40;
  }

  [(AVMobileGlassVolumeControlsView *)self _updateShadowPathIfNeeded];
}

- (double)_sliderBarWidth
{
  if (!self)
  {
    return 0.0;
  }

  traitCollection = [self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v4 = 140.0;
  if (!userInterfaceIdiom)
  {
    window = [self window];
    [window bounds];
    v7 = v6;
    v9 = v8;

    if (v7 < v9)
    {
      window2 = [self window];
      windowScene = [window2 windowScene];

      screen = [windowScene screen];
      [screen scale];
      v14 = v13;
      v15 = v13;
      [screen nativeScale];
      if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v16 >= 0.0 ? (v17 = ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v17 = 1), v17 ? (v18 = (*&v16 - 1) > 0xFFFFFFFFFFFFELL) : (v18 = 0), v18))
      {
        v4 = 120.0;
      }

      else
      {
        v4 = v14 / v16 * 120.0;
      }
    }
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileGlassVolumeButtonControl *)self->_volumeButton intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  if (self->_prefersVolumeSliderIncluded)
  {
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsPlatterInlineEdgeInsets];
    if (self->_fullscreen)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsPlatterFullscreenEdgeInsets];
    }

    v9 = v7;
    v10 = v8;
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsInlineInternalSpacing];
    if (self->_fullscreen)
    {
      [(AVMobileGlassControlsStyleSheet *)self->_styleSheet volumeControlsFullscreenInternalSpacing];
    }

    v4 = v4 + v10 + v9 + v11 + [(AVMobileGlassVolumeControlsView *)self _sliderBarWidth];
    if (v6 < 26.0)
    {
      v6 = 26.0;
    }
  }

  [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterInlineHeight];
  if (self->_fullscreen)
  {
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterFullscreenHeight];
  }

  v13 = v12;
  v14 = +[AVKitGlobalSettings shared];
  hapticsEnabled = [v14 hapticsEnabled];

  if (hapticsEnabled)
  {
    [(AVButton *)self->_hapticsButton intrinsicContentSize];
    v4 = v4 + v16;
  }

  if (v6 + -10.0 >= v13)
  {
    v17 = v6 + -10.0;
  }

  else
  {
    v17 = v13;
  }

  if (v4 >= v17)
  {
    v18 = v4;
  }

  else
  {
    v18 = v17;
  }

  result.height = v17;
  result.width = v18;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = AVMobileGlassVolumeControlsView;
  v8 = [(AVView *)&v16 hitTest:eventCopy withEvent:x, y];
  if ([(AVMobileGlassVolumeControlsView *)self isUserInteractionEnabled])
  {
    p_volumeButton = &self->_volumeButton;
    volumeButton = self->_volumeButton;
    [(AVMobileGlassVolumeButtonControl *)volumeButton convertPoint:self fromView:x, y];
    if ([(AVMobileGlassVolumeButtonControl *)volumeButton pointInside:eventCopy withEvent:?])
    {
      goto LABEL_4;
    }

    p_volumeButton = &self->_volumeSlider;
    volumeSlider = self->_volumeSlider;
    [(AVMobileChromelessFluidSlider *)volumeSlider convertPoint:self fromView:x, y];
    if ([(AVMobileChromelessFluidSlider *)volumeSlider pointInside:eventCopy withEvent:?])
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
    v15 = [(AVButton *)hapticsButton pointInside:eventCopy withEvent:?];

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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  LOBYTE(self) = [view isDescendantOfView:self];

  return self;
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = AVMobileGlassVolumeControlsView;
  [(AVGlassBackedView *)&v7 didMoveToWindow];
  if (self && !self->_backgroundView)
  {
    v3 = objc_alloc_init(AVMobileGlassBackgroundDimmingView);
    [(AVMobileGlassBackgroundDimmingView *)v3 setAutoresizingMask:0];
    [(AVMobileGlassVolumeControlsView *)self setBackgroundView:v3];
  }

  volume = self->_volume;
  *&volume = volume;
  [(AVMobileChromelessFluidSlider *)self->_volumeSlider setValue:volume];
  layer = [(AVMobileChromelessFluidSlider *)self->_volumeSlider layer];
  layer2 = [(AVMobileGlassVolumeButtonControl *)self->_volumeButton layer];
  [layer setShadowOffset:{0.0, 6.0}];
  [layer setShadowRadius:10.0];
  [layer2 setShadowOffset:{0.0, 6.0}];
  [layer2 setShadowRadius:10.0];
  [(AVMobileGlassVolumeControlsView *)&self->super.super.super.super.super.isa _updateShadowAppearanceState];

  [(AVMobileGlassVolumeControlsView *)self _updateVolumeButtonIconState];
  [(AVMobileGlassVolumeControlsView *)self _layoutHapticsControlView];
  [(AVMobileGlassVolumeControlsView *)self updateBackgroundMaterial];
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassBackgroundView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: backgroundView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_backgroundView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: backgroundView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    backgroundView = self->_backgroundView;
  }

  else
  {
    backgroundView = 0;
  }

  if (backgroundView != viewCopy)
  {
    [(AVMobileGlassBackgroundView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    [(AVMobileGlassVolumeControlsView *)self insertSubview:self->_backgroundView atIndex:0];
    [(AVMobileGlassVolumeControlsView *)self setNeedsLayout];
  }
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v6 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    [(UIView *)self avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
    sheetCopy = v6;
  }
}

- (void)setFullscreen:(BOOL)fullscreen
{
  if (self->_fullscreen != fullscreen)
  {
    self->_fullscreen = fullscreen;
    [(AVMobileGlassVolumeButtonControl *)self->_volumeButton setFullscreen:?];
    [(AVMobileGlassVolumeButtonControl *)self->_volumeButton setNeedsLayout];

    [(UIView *)self avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }
}

- (void)setPrefersVolumeSliderEnabled:(BOOL)enabled
{
  if (self->_prefersVolumeSliderEnabled != enabled)
  {
    self->_prefersVolumeSliderEnabled = enabled;
    [(AVMobileChromelessFluidSlider *)self->_volumeSlider setEnabled:?];
  }
}

- (void)setAllowsVolumeAdjustment:(BOOL)adjustment
{
  if (self->_allowsVolumeAdjustment != adjustment)
  {
    self->_allowsVolumeAdjustment = adjustment;
  }
}

- (void)setPrefersVolumeSliderIncluded:(BOOL)included
{
  if (self->_prefersVolumeSliderIncluded != included)
  {
    self->_prefersVolumeSliderIncluded = included;
    [(AVMobileChromelessFluidSlider *)self->_volumeSlider setPrefersSliderTrackHidden:!included];
    [(AVMobileGlassVolumeControlsView *)self invalidateIntrinsicContentSize];
    superview = [(AVMobileGlassVolumeControlsView *)self superview];
    [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

    [(AVMobileGlassVolumeControlsView *)self setNeedsLayout];
    v5 = +[AVKitGlobalSettings shared];
    hapticsEnabled = [v5 hapticsEnabled];

    if (hapticsEnabled)
    {

      [(AVMobileGlassVolumeControlsView *)self _updateHapticsButtonHiddenForVolume];
    }
  }
}

- (void)setMute:(BOOL)mute
{
  if (self->_mute != mute)
  {
    self->_mute = mute;
    [(AVMobileGlassVolumeControlsView *)self _updateVolumeButtonIconState];
  }
}

- (BOOL)isTracking
{
  if (([(AVMobileChromelessFluidSlider *)self->_volumeSlider isTracking]& 1) != 0)
  {
    return 1;
  }

  volumeButton = self->_volumeButton;

  return [(AVMobileGlassVolumeButtonControl *)volumeButton isTracking];
}

- (void)setEmphasized:(BOOL)emphasized
{
  if (self->_emphasized != emphasized)
  {
    self->_emphasized = emphasized;
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

    [(AVMobileChromelessFluidSlider *)self->_volumeSlider barWidth];
    if (v8 >= 0 && ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v8 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      objc_initWeak(&location, self);
      v11 = objc_alloc(MEMORY[0x1E69DD278]);
      v12 = 1.0;
      if (v5 <= 1.0)
      {
        v12 = v5;
      }

      v13 = v12 * 0.2;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __74__AVMobileGlassVolumeControlsView__updateVolumeFluidSliderEmphasizedScale__block_invoke;
      v19 = &unk_1E7209EA8;
      objc_copyWeak(&v20, &location);
      v14 = [v11 initWithDuration:3 curve:&v16 animations:v13];
      v15 = self->_emphasizedAnimator;
      self->_emphasizedAnimator = v14;

      [(UIViewPropertyAnimator *)self->_emphasizedAnimator startAnimation:v16];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    [(AVMobileGlassVolumeControlsView *)self updateBackgroundMaterial];
  }
}

void __74__AVMobileGlassVolumeControlsView__updateVolumeFluidSliderEmphasizedScale__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[607];
    v5 = WeakRetained;
    v3 = *(WeakRetained + 79);
    v4 = 8.0;
    if (v2)
    {
      v4 = 10.0;
    }

    [v3 setBarHeight:v4];
    [v5 setNeedsLayout];
    [v5 layoutIfNeeded];
    WeakRetained = v5;
  }
}

- (AVMobileGlassVolumeControlsView)initWithStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  v22.receiver = self;
  v22.super_class = AVMobileGlassVolumeControlsView;
  v6 = [(AVGlassBackedView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, sheet);
    v8 = objc_alloc_init(AVGlassBackedView);
    volumeControls = v7->_volumeControls;
    v7->_volumeControls = v8;

    [(AVGlassBackedView *)v7->_volumeControls setAutoresizingMask:0];
    [(AVGlassBackedView *)v7->_volumeControls setWantsCapsuleShape:1];
    [(AVView *)v7->_volumeControls setIgnoresTouches:1];
    v10 = objc_alloc_init(AVMobileGlassVolumeButtonControl);
    volumeButton = v7->_volumeButton;
    v7->_volumeButton = v10;

    [(AVMobileGlassVolumeButtonControl *)v7->_volumeButton setAccessibilityIdentifier:@"Mute/Unmute"];
    v12 = v7->_volumeButton;
    v13 = AVLocalizedString(@"Mute");
    [(AVMobileGlassVolumeButtonControl *)v12 setAccessibilityLabel:v13];

    [(AVMobileGlassVolumeButtonControl *)v7->_volumeButton setIsAccessibilityElement:1];
    [(AVMobileGlassVolumeButtonControl *)v7->_volumeButton setAutoresizingMask:0];
    [(AVMobileGlassVolumeButtonControl *)v7->_volumeButton setDelegate:v7];
    [(AVMobileGlassVolumeButtonControl *)v7->_volumeButton addTarget:v7 action:sel__handleVolumeControlButtonTap forControlEvents:0x1000000];
    v14 = objc_alloc_init(AVMobileChromelessFluidSlider);
    volumeSlider = v7->_volumeSlider;
    v7->_volumeSlider = v14;

    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider setUsesVolumeStyle:1];
    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider setMaximumValueView:v7->_volumeButton];
    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider setStretchLimit:6.0];
    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider setAccessibilityIdentifier:@"Volume Slider"];
    v16 = v7->_volumeSlider;
    v17 = AVLocalizedString(@"Volume Slider");
    [(AVMobileChromelessFluidSlider *)v16 setAccessibilityLabel:v17];

    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider setIsAccessibilityElement:1];
    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider setAutoresizingMask:0];
    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider setMinimumValue:0.0];
    LODWORD(v18) = 1.0;
    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider setMaximumValue:v18];
    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider setBarHeight:8.0];
    [(AVMobileChromelessFluidSlider *)v7->_volumeSlider addTarget:v7 action:sel__volumeSliderValueDidChange forControlEvents:4096];
    [(AVGlassBackedView *)v7->_volumeControls addSubview:v7->_volumeSlider];
    [(AVMobileGlassVolumeControlsView *)v7 addSubview:v7->_volumeControls];
    v7->_emphasized = 0;
    v7->_prefersVolumeSliderIncluded = 1;
    v7->_prefersVolumeSliderEnabled = 1;
    v7->_volumeSliderHidesWithAlphaChange = 1;
    v7->_mute = 0;
    v19 = *MEMORY[0x1E695F050];
    v20 = *(MEMORY[0x1E695F050] + 16);
    v7->_sliderShadowPathRect.origin = *MEMORY[0x1E695F050];
    v7->_sliderShadowPathRect.size = v20;
    v7->_buttonShadowPathRect.origin = v19;
    v7->_buttonShadowPathRect.size = v20;
    [(AVView *)v7 setIgnoresTouches:1];
    v7->_canIncludeHapticsButton = 1;
  }

  return v7;
}

@end