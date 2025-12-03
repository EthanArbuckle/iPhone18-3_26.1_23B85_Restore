@interface MPVolumeView
- (BOOL)isWirelessRouteActive;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)routeButtonRectForBounds:(CGRect)bounds;
- (CGRect)volumeSliderRectForBounds:(CGRect)bounds;
- (CGRect)volumeThumbRectForBounds:(CGRect)bounds volumeSliderRect:(CGRect)rect value:(float)value;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MPVolumeView)initWithCoder:(id)coder;
- (MPVolumeView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (UIImage)maximumVolumeSliderImageForState:(UIControlState)state;
- (UIImage)minimumVolumeSliderImageForState:(UIControlState)state;
- (UIImage)routeButtonImageForState:(UIControlState)state;
- (id)_defaultRouteButtonImageAsSelected:(BOOL)selected;
- (void)_applicationWillEnterForegroundNotification:(id)notification;
- (void)_createSubviews;
- (void)_displayAudioRoutePicker;
- (void)_getDefaultVolumeSliderFrame:(CGRect *)frame routeButtonFrame:(CGRect *)buttonFrame forBounds:(CGRect)bounds;
- (void)_initWithStyle:(int64_t)style;
- (void)_loadAudioRoutePickerIfNeeded;
- (void)_setRouteDiscoveryEnabled:(BOOL)enabled;
- (void)_setShowsRouteButton:(BOOL)button animated:(BOOL)animated;
- (void)_setShowsVolumeSlider:(BOOL)slider;
- (void)_startPrewarmingAudioRoutePicker;
- (void)_updateWirelessRouteStatus;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)lightweightRoutingController:(id)controller didChangeDevicePresenceDetected:(BOOL)detected;
- (void)lightweightRoutingController:(id)controller didChangePickedRoutes:(id)routes;
- (void)setAlpha:(double)alpha;
- (void)setHidden:(BOOL)hidden;
- (void)setHidesRouteLabelWhenNoRouteChoice:(BOOL)choice;
- (void)setMaximumVolumeSliderImage:(UIImage *)image forState:(UIControlState)state;
- (void)setMinimumVolumeSliderImage:(UIImage *)image forState:(UIControlState)state;
- (void)setRouteButtonImage:(UIImage *)image forState:(UIControlState)state;
- (void)setShowsRouteButton:(BOOL)showsRouteButton;
- (void)setShowsVolumeSlider:(BOOL)showsVolumeSlider;
- (void)setVolumeSliderShrinksFromBothEnds:(BOOL)ends;
@end

@implementation MPVolumeView

- (void)_applicationWillEnterForegroundNotification:(id)notification
{
  window = [(MPVolumeView *)self window];

  if (window)
  {

    [(MPVolumeView *)self _setRouteDiscoveryEnabled:1];
  }
}

- (void)_updateWirelessRouteStatus
{
  isDevicePresenceDetected = [(MPAVLightweightRoutingController *)self->_lightweightRoutingController isDevicePresenceDetected];
  pickedRoutes = [(MPAVLightweightRoutingController *)self->_lightweightRoutingController pickedRoutes];
  firstObject = [pickedRoutes firstObject];

  if (firstObject)
  {
    v6 = [firstObject pickableRouteType] == 1;
  }

  else
  {
    v6 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MPVolumeView__updateWirelessRouteStatus__block_invoke;
  v7[3] = &unk_1E76822D0;
  v7[4] = self;
  v8 = isDevicePresenceDetected;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __42__MPVolumeView__updateWirelessRouteStatus__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 482) != v3)
  {
    *(v2 + 482) = v3;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"MPVolumeViewWirelessRoutesAvailableDidChangeNotification" object:*(a1 + 32)];

    v2 = *(a1 + 32);
  }

  v5 = *(a1 + 41);
  if (*(v2 + 481) != v5)
  {
    *(v2 + 481) = v5;
    [*(*(a1 + 32) + 424) setSelected:*(a1 + 41)];
    [*(a1 + 32) setNeedsLayout];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"MPVolumeViewWirelessRouteActiveDidChangeNotification" object:*(a1 + 32)];
  }
}

- (void)_setRouteDiscoveryEnabled:(BOOL)enabled
{
  if (self->_routeDiscoveryEnabled != enabled)
  {
    self->_routeDiscoveryEnabled = enabled;
    pushedRouteDiscoveryModeState = self->_pushedRouteDiscoveryModeState;
    if (enabled)
    {
      v5 = 1;
      [(MPAVLightweightRoutingController *)self->_lightweightRoutingController setDiscoveryMode:1];
      if (pushedRouteDiscoveryModeState)
      {
        return;
      }
    }

    else
    {
      if (!self->_pushedRouteDiscoveryModeState)
      {
        return;
      }

      [(MPAVLightweightRoutingController *)self->_lightweightRoutingController setDiscoveryMode:0];
      v5 = 0;
    }

    self->_pushedRouteDiscoveryModeState = v5;
  }
}

- (void)_setShowsVolumeSlider:(BOOL)slider
{
  sliderCopy = slider;
  isVisible = [(MPVolumeView *)self isVisible];
  if ([(MPAVLightweightRoutingController *)self->_lightweightRoutingController isDevicePresenceDetected])
  {
    pickedRoutes = [(MPAVLightweightRoutingController *)self->_lightweightRoutingController pickedRoutes];
    v7 = [pickedRoutes count] != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = !sliderCopy && self->_showsVolumeSlider;
  if (self->_style)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9 || v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_16;
  }

  if (self->_hidesRouteLabelWhenNoRouteChoice)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v7)
  {
    pickedRoutes2 = [(MPAVLightweightRoutingController *)self->_lightweightRoutingController pickedRoutes];
    firstObject = [pickedRoutes2 firstObject];
    routeName = [firstObject routeName];

    [(UILabel *)self->_routeLabel setText:routeName];
  }

  else
  {
    routeLabel = self->_routeLabel;
    routeName = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v15 = [routeName localizedStringForKey:@"NO_VOLUME_AVAILABLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    [(UILabel *)routeLabel setText:v15];
  }

  v13 = 1;
LABEL_16:
  superview = [(MPVolumeSlider *)self->_volumeSlider superview];

  if (sliderCopy)
  {
    if (!superview)
    {
      [(MPVolumeView *)self addSubview:self->_volumeSlider];
    }
  }

  else if (superview)
  {
    [(MPVolumeSlider *)self->_volumeSlider removeFromSuperview];
  }

  v17 = self->_routeLabel;
  if (v13)
  {
    if (!v17)
    {
      [(MPVolumeView *)self addSubview:0];
    }
  }

  else
  {
    superview2 = [(UILabel *)v17 superview];

    if (superview2)
    {
      [(UILabel *)self->_routeLabel removeFromSuperview];
    }
  }

  self->_showingSlider = sliderCopy;
  self->_showingLabel = v13;
  if (isVisible != [(MPVolumeView *)self isVisible])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPVolumeViewVisibilityChangedNotification" object:self];
  }
}

- (void)_setShowsRouteButton:(BOOL)button animated:(BOOL)animated
{
  animatedCopy = animated;
  isVisible = [(MPVolumeView *)self isVisible];
  showingButton = self->_showingButton;
  self->_showingButton = button;
  [(MPVolumeView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(MPVolumeView *)self volumeSliderRectForBounds:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  routeLabel = self->_routeLabel;
  [(MPVolumeView *)self volumeSliderRectForBounds:v10, v12, v14, v16];
  [(UILabel *)routeLabel setFrame:?];
  routeButton = self->_routeButton;
  [(MPVolumeView *)self routeButtonRectForBounds:v10, v12, v14, v16];
  [(UIButton *)routeButton setFrame:?];
  v27 = 0.3;
  v31 = 3221225472;
  v30 = MEMORY[0x1E69E9820];
  v32 = __46__MPVolumeView__setShowsRouteButton_animated___block_invoke;
  v33 = &unk_1E76822A8;
  if (!animatedCopy)
  {
    v27 = 0.0;
  }

  v39 = animatedCopy;
  selfCopy = self;
  buttonCopy = button;
  v35 = v18;
  v36 = v20;
  v37 = v22;
  v38 = v24;
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:&v30 options:0 animations:v27 completion:?];
  if (isVisible != [(MPVolumeView *)self isVisible:v30])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPVolumeViewVisibilityChangedNotification" object:self];
  }

  if (showingButton != [(MPVolumeView *)self isShowingRouteButton])
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"MPVolumeViewRouteButtonChangedNotification" object:self];
  }
}

uint64_t __46__MPVolumeView__setShowsRouteButton_animated___block_invoke(uint64_t a1)
{
  v2 = 0.2;
  if (!*(a1 + 72))
  {
    v2 = 0.0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MPVolumeView__setShowsRouteButton_animated___block_invoke_2;
  v4[3] = &unk_1E7682280;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 73);
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:v2];
  [*(*(a1 + 32) + 472) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  return [*(*(a1 + 32) + 472) layoutBelowIfNeeded];
}

uint64_t __46__MPVolumeView__setShowsRouteButton_animated___block_invoke_2(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 424) setAlpha:v1];
}

- (void)_getDefaultVolumeSliderFrame:(CGRect *)frame routeButtonFrame:(CGRect *)buttonFrame forBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  [(UIButton *)self->_routeButton frame:bounds.origin.x];
  v12 = v10;
  v13 = v11;
  if (!self->_showingSlider)
  {
    v18 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
    if (!self->_hasNonDefaultRouteButtonImages)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v14 = v10 + 7.0;
  v15 = 1.0;
  if (self->_volumeSliderShrinksFromBothEnds)
  {
    v15 = 2.0;
  }

  v16 = width - v14 * v15;
  if (self->_showingButton)
  {
    v17 = v16;
  }

  else
  {
    v17 = width;
  }

  if (self->_showingButton && self->_volumeSliderShrinksFromBothEnds)
  {
    v18 = v12 + 7.0;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = (v11 + -28.0) * 0.5;
  v20 = rintf(v19);
  v21 = 28.0;
  if (self->_hasNonDefaultRouteButtonImages)
  {
LABEL_15:
    [(UIButton *)self->_routeButton frame];
    v23 = CGRectGetHeight(v28);
    if (self->_showingSlider)
    {
      v24 = (height - v23) * 0.5;
      v22 = floorf(v24);
      goto LABEL_17;
    }

LABEL_19:
    UIRoundToViewScale();
    v25 = v26;
    UIRoundToViewScale();
    v22 = v27;
    if (!frame)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (self->_style)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 2.0;
  }

LABEL_17:
  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v17;
  v29.size.height = v21;
  v25 = CGRectGetMaxX(v29) + 7.0;
  if (frame)
  {
LABEL_20:
    frame->origin.x = v18;
    frame->origin.y = v20;
    frame->size.width = v17;
    frame->size.height = v21;
  }

LABEL_21:
  if (buttonFrame)
  {
    buttonFrame->origin.x = v25;
    buttonFrame->origin.y = v22;
    buttonFrame->size.width = v12;
    buttonFrame->size.height = v13;
  }
}

- (void)_startPrewarmingAudioRoutePicker
{
  [(MPVolumeView *)self _loadAudioRoutePickerIfNeeded];
  mediaControls = self->_mediaControls;

  [(MPMediaControls *)mediaControls startPrewarming];
}

- (void)_displayAudioRoutePicker
{
  [(MPVolumeView *)self _loadAudioRoutePickerIfNeeded];
  [(MPMediaControls *)self->_mediaControls present];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPVolumeViewRoutePickerPresentedNotification" object:self];
}

- (void)_loadAudioRoutePickerIfNeeded
{
  if (self->_mediaControls || ([(MPVolumeView *)self window], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    window = [(MPVolumeView *)self window];

    if (window)
    {
      return;
    }

    v5 = 0;
  }

  else
  {
    v5 = objc_alloc_init(MPMediaControls);
  }

  mediaControls = self->_mediaControls;
  self->_mediaControls = v5;
}

- (id)_defaultRouteButtonImageAsSelected:(BOOL)selected
{
  v3 = @"airplay";
  if (selected)
  {
    v3 = @"airplay_on";
  }

  v4 = MEMORY[0x1E69DCAB8];
  v5 = MEMORY[0x1E696AAE8];
  v6 = v3;
  mediaPlayerBundle = [v5 mediaPlayerBundle];
  v8 = [v4 imageNamed:v6 inBundle:mediaPlayerBundle];

  return v8;
}

- (void)_createSubviews
{
  [(MPVolumeView *)self setOpaque:0];
  [(MPVolumeView *)self setClipsToBounds:0];
  v3 = [MPVolumeSlider alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v20 = [(MPVolumeSlider *)v3 initWithFrame:self->_style style:*MEMORY[0x1E695F058], v5, v6, v7];
  objc_storeStrong(&self->_volumeSlider, v20);
  [(MPVolumeSlider *)v20 setAutoresizingMask:34];
  [(MPVolumeView *)self addSubview:v20];
  v8 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  objc_storeStrong(&self->_routeLabel, v8);
  [v8 setAutoresizingMask:34];
  v9 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:13.0];
  [v8 setFont:v9];

  [v8 setTextAlignment:1];
  [v8 setBackgroundColor:0];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v8 setTextColor:whiteColor];

  [v8 setOpaque:0];
  [(MPVolumeView *)self addSubview:v8];
  v11 = [MPButton easyTouchButtonWithType:0];
  routeButton = self->_routeButton;
  self->_routeButton = v11;

  [(UIButton *)self->_routeButton setSelected:0];
  [(UIButton *)self->_routeButton setAlpha:0.0];
  v13 = [(MPVolumeView *)self _defaultRouteButtonImageAsSelected:0];
  if (self->_style == 1)
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v15 = [v13 _flatImageWithColor:systemBlueColor];

    v13 = v15;
  }

  [(UIButton *)self->_routeButton setImage:v13 forState:0];
  v16 = self->_routeButton;
  v17 = [(MPVolumeView *)self _defaultRouteButtonImageAsSelected:1];
  [(UIButton *)v16 setImage:v17 forState:4];

  [(UIButton *)self->_routeButton setShowsTouchWhenHighlighted:1];
  [(UIButton *)self->_routeButton setAutoresizingMask:33];
  [v13 size];
  [(UIButton *)self->_routeButton setFrame:v4, v5, v18, v19];
  [(UIButton *)self->_routeButton addTarget:self action:sel__displayAudioRoutePicker forControlEvents:64];
  [(UIButton *)self->_routeButton addTarget:self action:sel__startPrewarmingAudioRoutePicker forControlEvents:1];
  [(UIButton *)self->_routeButton addTarget:self action:sel__stopPrewarmingAudioRoutePicker forControlEvents:128];
  [(MPVolumeView *)self addSubview:self->_routeButton];
}

- (void)setVolumeSliderShrinksFromBothEnds:(BOOL)ends
{
  if (self->_volumeSliderShrinksFromBothEnds != ends)
  {
    self->_volumeSliderShrinksFromBothEnds = ends;
    [(MPVolumeView *)self setNeedsLayout];
  }
}

- (void)setHidesRouteLabelWhenNoRouteChoice:(BOOL)choice
{
  if (self->_hidesRouteLabelWhenNoRouteChoice != choice)
  {
    self->_hidesRouteLabelWhenNoRouteChoice = choice;
    [(MPVolumeView *)self setNeedsLayout];
  }
}

- (CGRect)volumeThumbRectForBounds:(CGRect)bounds volumeSliderRect:(CGRect)rect value:(float)value
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  volumeSlider = self->_volumeSlider;
  [(MPVolumeView *)self convertRect:volumeSlider toView:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  *&v20 = value;
  [(MPVolumeSlider *)volumeSlider thumbRectForBounds:x trackRect:y value:width, height, v11, v12, v13, v14, v20];
  v15 = self->_volumeSlider;

  [(MPVolumeView *)self convertRect:v15 fromView:?];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)volumeSliderRectForBounds:(CGRect)bounds
{
  v7 = 0u;
  v8 = 0u;
  [(MPVolumeView *)self _getDefaultVolumeSliderFrame:&v7 routeButtonFrame:0 forBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setShowsVolumeSlider:(BOOL)showsVolumeSlider
{
  if (self->_showsVolumeSlider != showsVolumeSlider)
  {
    self->_showsVolumeSlider = showsVolumeSlider;
    [(MPVolumeView *)self setNeedsLayout];
  }
}

- (void)setShowsRouteButton:(BOOL)showsRouteButton
{
  if (self->_showsRouteButton != showsRouteButton)
  {
    self->_showsRouteButton = showsRouteButton;
    [(MPVolumeView *)self setNeedsLayout];
  }
}

- (void)setRouteButtonImage:(UIImage *)image forState:(UIControlState)state
{
  v7 = image;
  if (!self->_hasNonDefaultRouteButtonImages)
  {
    [(UIButton *)self->_routeButton setImage:0 forState:0];
    [(UIButton *)self->_routeButton setImage:0 forState:4];
    self->_hasNonDefaultRouteButtonImages = 1;
  }

  [(UIButton *)self->_routeButton setImage:v7 forState:state];
  [(UIButton *)self->_routeButton sizeToFit];
  [(UIButton *)self->_routeButton _setChargeEnabled:1];
  LODWORD(v6) = -1102263091;
  [(UIButton *)self->_routeButton setCharge:v6];
  [(MPVolumeView *)self setNeedsLayout];
}

- (void)setMaximumVolumeSliderImage:(UIImage *)image forState:(UIControlState)state
{
  if (!self->_hasNonDefaultMaxVolumeSliderImage)
  {
    self->_hasNonDefaultMaxVolumeSliderImage = 1;
  }

  [(MPVolumeSlider *)self->_volumeSlider setMaximumTrackImage:image forState:state];
}

- (void)setMinimumVolumeSliderImage:(UIImage *)image forState:(UIControlState)state
{
  if (!self->_hasNonDefaultMinVolumeSliderImage)
  {
    self->_hasNonDefaultMinVolumeSliderImage = 1;
  }

  [(MPVolumeSlider *)self->_volumeSlider setMinimumTrackImage:image forState:state];
}

- (CGRect)routeButtonRectForBounds:(CGRect)bounds
{
  v7 = 0u;
  v8 = 0u;
  [(MPVolumeView *)self _getDefaultVolumeSliderFrame:0 routeButtonFrame:&v7 forBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIImage)routeButtonImageForState:(UIControlState)state
{
  if (self->_hasNonDefaultRouteButtonImages)
  {
    v5 = [(UIButton *)self->_routeButton imageForState:state, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIImage)maximumVolumeSliderImageForState:(UIControlState)state
{
  if (self->_hasNonDefaultMaxVolumeSliderImage)
  {
    v5 = [(MPVolumeSlider *)self->_volumeSlider maximumTrackImageForState:state, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIImage)minimumVolumeSliderImageForState:(UIControlState)state
{
  if (self->_hasNonDefaultMinVolumeSliderImage)
  {
    v5 = [(MPVolumeSlider *)self->_volumeSlider minimumTrackImageForState:state, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isWirelessRouteActive
{
  pickedRoutes = [(MPAVLightweightRoutingController *)self->_lightweightRoutingController pickedRoutes];
  firstObject = [pickedRoutes firstObject];

  if (firstObject)
  {
    v4 = [firstObject pickableRouteType] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)lightweightRoutingController:(id)controller didChangePickedRoutes:(id)routes
{
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPVolumeView_lightweightRoutingController_didChangePickedRoutes___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)lightweightRoutingController:(id)controller didChangeDevicePresenceDetected:(BOOL)detected
{
  [(MPVolumeView *)self _setShowsRouteButton:self->_showsRouteButton && detected animated:1];
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MPVolumeView_lightweightRoutingController_didChangeDevicePresenceDetected___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = MPVolumeView;
  [(MPVolumeView *)&v4 setHidden:hidden];
  v3 = +[MPVolumeHUDController sharedInstance];
  [v3 setNeedsUpdate];
}

- (void)setAlpha:(double)alpha
{
  v4.receiver = self;
  v4.super_class = MPVolumeView;
  [(MPVolumeView *)&v4 setAlpha:alpha];
  v3 = +[MPVolumeHUDController sharedInstance];
  [v3 setNeedsUpdate];
}

- (void)didMoveToWindow
{
  v10.receiver = self;
  v10.super_class = MPVolumeView;
  [(MPVolumeView *)&v10 didMoveToWindow];
  v3 = +[MPVolumeHUDController sharedInstance];
  [v3 setNeedsUpdate];

  if (!self->_routeDiscoveryEnabled)
  {
    window = [(MPVolumeView *)self window];
    if (window)
    {
      v5 = window;
      v6 = MPUIApplication();
      applicationState = [v6 applicationState];

      if (applicationState != 2)
      {
        v9 = 1;
        goto LABEL_8;
      }
    }
  }

  if (self->_routeDiscoveryEnabled)
  {
    window2 = [(MPVolumeView *)self window];

    if (!window2)
    {
      v9 = 0;
LABEL_8:
      [(MPVolumeView *)self _setRouteDiscoveryEnabled:v9];
    }
  }

  [(MPVolumeView *)self _loadAudioRoutePickerIfNeeded];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MPVolumeView;
  [(MPVolumeView *)&v3 didMoveToSuperview];
  v2 = +[MPVolumeHUDController sharedInstance];
  [v2 setNeedsUpdate];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(MPVolumeSlider *)self->_volumeSlider sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v7 = v6;
  [(MPVolumeSlider *)self->_volumeSlider sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  [(UIButton *)self->_routeButton frame];
  v14 = v7 + 14.0 + v13;
  if (v9 >= v14)
  {
    v14 = v9;
  }

  v15 = v12 + 4.0;
  if (v11 >= v12 + 4.0)
  {
    v15 = v11;
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  routeButton = self->_routeButton;
  if (routeButton && ([(UIButton *)self->_routeButton convertPoint:self fromView:x, y], ([(UIButton *)routeButton pointInside:eventCopy withEvent:?]& 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MPVolumeView;
    v9 = [(MPVolumeView *)&v11 pointInside:eventCopy withEvent:x, y];
  }

  return v9;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MPVolumeView;
  [(MPVolumeView *)&v6 layoutSubviews];
  v3 = self->_showsRouteButton && [(MPAVLightweightRoutingController *)self->_lightweightRoutingController isDevicePresenceDetected];
  if (self->_showsVolumeSlider)
  {
    volumeController = [(MPVolumeSlider *)self->_volumeSlider volumeController];
    isVolumeControlAvailable = [volumeController isVolumeControlAvailable];
  }

  else
  {
    isVolumeControlAvailable = 0;
  }

  [(MPVolumeView *)self _setShowsVolumeSlider:isVolumeControlAvailable];
  [(MPVolumeView *)self _setShowsRouteButton:v3 animated:0];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5.receiver = self;
    v5.super_class = MPVolumeView;
    [(MPVolumeView *)&v5 encodeWithCoder:coderCopy];
    [coderCopy encodeBool:self->_showsVolumeSlider forKey:@"MPVolumeViewShowsVolumeSlider"];
    [coderCopy encodeBool:self->_showsRouteButton forKey:@"MPVolumeViewShowsRouteButton"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"only keyed archiving is supported"];
  }
}

- (MPVolumeView)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v9.receiver = self;
    v9.super_class = MPVolumeView;
    v5 = [(MPVolumeView *)&v9 initWithCoder:coderCopy];
    v6 = v5;
    if (v5)
    {
      [(MPVolumeView *)v5 _initWithStyle:0];
      if ([coderCopy containsValueForKey:@"MPVolumeViewShowsVolumeSlider"])
      {
        v6->_showsVolumeSlider = [coderCopy decodeBoolForKey:@"MPVolumeViewShowsVolumeSlider"];
      }

      if ([coderCopy containsValueForKey:@"MPVolumeViewShowsRouteButton"])
      {
        v6->_showsRouteButton = [coderCopy decodeBoolForKey:@"MPVolumeViewShowsRouteButton"];
      }

      [(MPVolumeView *)v6 setNeedsLayout];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"only keyed archiving is supported"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(MPAVLightweightRoutingController *)self->_lightweightRoutingController setDelegate:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter removeObserver:self name:@"MPVolumeSliderVolumeControlAvailabilityDidChangeNotification" object:self->_volumeSlider];

  v4.receiver = self;
  v4.super_class = MPVolumeView;
  [(MPVolumeView *)&v4 dealloc];
}

- (MPVolumeView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = MPVolumeView;
  v5 = [(MPVolumeView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(MPVolumeView *)v5 _initWithStyle:style];
  }

  return v6;
}

- (void)_initWithStyle:(int64_t)style
{
  self->_style = style;
  self->_showsVolumeSlider = 1;
  self->_showsRouteButton = dyld_program_sdk_at_least() ^ 1;
  v4 = [MPAVLightweightRoutingController alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MPAVLightweightRoutingController *)v4 initWithName:v6];
  lightweightRoutingController = self->_lightweightRoutingController;
  self->_lightweightRoutingController = v7;

  [(MPAVLightweightRoutingController *)self->_lightweightRoutingController setDelegate:self];
  [(MPVolumeView *)self _createSubviews];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter addObserver:self selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter addObserver:self selector:sel__volumeSliderVolumeControlAvailabilityDidChangeNotification_ name:@"MPVolumeSliderVolumeControlAvailabilityDidChangeNotification" object:self->_volumeSlider];
}

@end