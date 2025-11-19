@interface MPVolumeSlider
- (BOOL)_isOffScreen;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isTracking;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (MPVolumeSlider)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (MPVolumeSlider)initWithFrame:(CGRect)a3 style:(int64_t)a4 endpointRoute:(id)a5 outputDeviceRoute:(id)a6;
- (NSString)description;
- (UIEdgeInsets)hitRectInsets;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (double)expansionFactor;
- (id)_routeName;
- (id)createThumbView;
- (void)_commitVolumeChange;
- (void)_setIsOffScreen:(BOOL)a3;
- (void)_sliderFluidInteractionWillEnd:(id)a3;
- (void)_updateVolumeAnimated:(BOOL)a3 silenceVolumeHUD:(BOOL)a4;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)setAlpha:(double)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setExpansionFactor:(double)a3;
- (void)setGroupRoute:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setOutputDeviceRoute:(id)a3;
- (void)setRoute:(id)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
- (void)setVolumeController:(id)a3;
- (void)setVolumeDataSource:(id)a3;
- (void)updateConstraints;
- (void)updateVolume;
- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4;
- (void)volumeController:(id)a3 volumeControlCapabilitiesDidChange:(unsigned int)a4;
- (void)volumeController:(id)a3 volumeControlLabelDidChange:(id)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4 silenceVolumeHUD:(BOOL)a5;
@end

@implementation MPVolumeSlider

- (UIEdgeInsets)hitRectInsets
{
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  bottom = self->_hitRectInsets.bottom;
  right = self->_hitRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_routeName
{
  v3 = [(MPVolumeSlider *)self volumeController];
  v4 = [v3 dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MPVolumeSlider *)self volumeController];
    v7 = [v6 dataSource];

    v8 = [v7 outputDeviceRoute];
    v9 = [v8 routeName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [(MPVolumeSlider *)self groupRoute];
      v11 = [v12 routeName];
    }
  }

  else
  {
    MRAVEndpointGetLocalEndpoint();
    v11 = MRAVEndpointCopyLocalizedName();
  }

  return v11;
}

- (void)_updateVolumeAnimated:(BOOL)a3 silenceVolumeHUD:(BOOL)a4
{
  v5 = a3;
  v7 = [(MPVolumeController *)self->_volumeController isVolumeControlAvailable];
  [(MPVolumeController *)self->_volumeController volumeValue];
  v9 = v8;
  [(MPVolumeSlider *)self setEnabled:v7];
  [(MPVolumeSlider *)self value];
  *&v10 = *&v10 - v9;
  if (*&v10 < 0.0)
  {
    *&v10 = -*&v10;
  }

  if (*&v10 > 0.00000011921)
  {
    v11.receiver = self;
    v11.super_class = MPVolumeSlider;
    *&v10 = v9;
    [(MPVolumeSlider *)&v11 setValue:v5 animated:v10];
    if (!a4)
    {
      [(MPVolumeSlider *)self sendActionsForControlEvents:4096];
    }
  }
}

- (void)_commitVolumeChange
{
  volumeController = self->_volumeController;
  [(MPVolumeSlider *)self value];
  [(MPVolumeController *)volumeController setVolumeValue:?];

  [(MPVolumeSlider *)self sendActionsForControlEvents:4096];
}

- (void)_setIsOffScreen:(BOOL)a3
{
  self->_forcingOffscreenVisibility = 1;
  if (self->_isOffScreen != a3)
  {
    self->_isOffScreen = a3;
    v5 = +[MPVolumeHUDController sharedInstance];
    [v5 setNeedsUpdate];

    if (!a3)
    {
      v6 = [(MPVolumeSlider *)self superview];

      if (v6)
      {
        v7 = [(MPVolumeSlider *)self volumeController];
        [v7 updateVolumeValue];
      }
    }
  }
}

- (BOOL)_isOffScreen
{
  v3 = [(MPVolumeSlider *)self window];

  if (v3)
  {
    if (self->_forcingOffscreenVisibility)
    {
      LOBYTE(v4) = self->_isOffScreen;
    }

    else
    {
      v5 = self;
      while (([(MPVolumeSlider *)v5 isHidden]& 1) == 0)
      {
        [(MPVolumeSlider *)v5 alpha];
        if (v6 < 0.00000011920929)
        {
          break;
        }

        v4 = [(MPVolumeSlider *)v5 superview];

        v5 = v4;
        if (!v4)
        {
          goto LABEL_11;
        }
      }

      LOBYTE(v4) = 1;
LABEL_11:
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

- (void)_sliderFluidInteractionWillEnd:(id)a3
{
  self->_isFluidTracking = 0;
  [(MPVolumeSlider *)self _commitVolumeChange];

  [(MPVolumeSlider *)self sendActionsForControlEvents:64];
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4 silenceVolumeHUD:(BOOL)a5
{
  v5 = a5;
  if (![(MPVolumeSlider *)self isTracking])
  {

    [(MPVolumeSlider *)self _updateVolumeAnimated:1 silenceVolumeHUD:v5];
  }
}

- (void)volumeController:(id)a3 volumeControlLabelDidChange:(id)a4
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"MPVolumeSliderVolumeControlLabelDidChangeNotification" object:self];
}

- (void)volumeController:(id)a3 volumeControlCapabilitiesDidChange:(unsigned int)a4
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"MPVolumeSliderVolumeControlCapabilitiesDidChangeNotification" object:self];
}

- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4
{
  [(MPVolumeSlider *)self _updateVolumeAnimated:1 silenceVolumeHUD:0];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"MPVolumeSliderVolumeControlAvailabilityDidChangeNotification" object:self];
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = [(MPVolumeSlider *)self window];
  v3 = [v2 windowScene];

  return v3;
}

- (void)updateVolume
{
  v3 = [(MPVolumeSlider *)self volumeController];

  if (v3)
  {

    [(MPVolumeSlider *)self _updateVolumeAnimated:0 silenceVolumeHUD:0];
  }
}

- (void)setExpansionFactor:(double)a3
{
  v5 = [(MPVolumeSlider *)self configuration];
  [v5 setExpansionFactor:a3];
  [(MPVolumeSlider *)self _setSliderConfiguration:v5];
}

- (double)expansionFactor
{
  v2 = [(MPVolumeSlider *)self configuration];
  [v2 expansionFactor];
  v4 = v3;

  return v4;
}

- (void)setVolumeDataSource:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[MPVolumeSlider] <%@: %p> setVolumeDataSource: %@", &v7, 0x20u);
  }

  [(MPVolumeController *)self->_volumeController setDataSource:v4];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"MPVolumeSliderVolumeControlLabelDidChangeNotification" object:self];
}

- (void)setOutputDeviceRoute:(id)a3
{
  v6 = a3;
  if (self->_outputDeviceRoute != v6)
  {
    objc_storeStrong(&self->_outputDeviceRoute, a3);
    if (self->_groupRoute)
    {
      v5 = [[MPVolumeControllerRouteDataSource alloc] initWithGroupRoute:self->_groupRoute outputDeviceRoute:self->_outputDeviceRoute];
      [(MPVolumeSlider *)self setVolumeDataSource:v5];
    }
  }
}

- (void)setGroupRoute:(id)a3
{
  v5 = a3;
  if (self->_groupRoute != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_groupRoute, a3);
    if (self->_outputDeviceRoute || ![(MPAVEndpointRoute *)v8 isDeviceRoute])
    {
      v6 = [[MPVolumeControllerRouteDataSource alloc] initWithGroupRoute:v8 outputDeviceRoute:self->_outputDeviceRoute];
    }

    else
    {
      v6 = objc_alloc_init(MPVolumeControllerSystemDataSource);
    }

    v7 = v6;
    [(MPVolumeSlider *)self setVolumeDataSource:v6];

    v5 = v8;
  }
}

- (void)setRoute:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MPVolumeSlider.m" lineNumber:248 description:@"MPVolumeSlider.route must be an MPAVEndpointRoute"];
  }

  [(MPVolumeSlider *)self setGroupRoute:v6];
}

- (void)setVolumeController:(id)a3
{
  v5 = a3;
  if (self->_volumeController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_volumeController, a3);
    [(MPVolumeController *)self->_volumeController setDelegate:self];
    [(MPVolumeController *)self->_volumeController updateVolumeValue];
    v5 = v6;
  }
}

- (BOOL)isTracking
{
  if (self->_isFluidTracking)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MPVolumeSlider;
  return [(MPVolumeSlider *)&v5 isTracking];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(MPVolumeSlider *)self isEnabled]!= a3)
  {
    v7.receiver = self;
    v7.super_class = MPVolumeSlider;
    [(MPVolumeSlider *)&v7 setEnabled:v3];
    [(MPVolumeSlider *)self _setMinimumTrackVisible:v3 withDuration:0.0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __29__MPVolumeSlider_setEnabled___block_invoke;
    v5[3] = &unk_1E7682280;
    v5[4] = self;
    v6 = v3;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

void __29__MPVolumeSlider_setEnabled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) thumbView];
  [v2 setAlpha:v1];
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v4 setHidden:a3];
  v3 = +[MPVolumeHUDController sharedInstance];
  [v3 setNeedsUpdate];
}

- (void)setAlpha:(double)a3
{
  v4.receiver = self;
  v4.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v4 setAlpha:a3];
  v3 = +[MPVolumeHUDController sharedInstance];
  [v3 setNeedsUpdate];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(MPVolumeSlider *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)hitRect
{
  v13.receiver = self;
  v13.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v13 hitRect];
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_hitRectInsets.right);
  v12 = v11 - (top + self->_hitRectInsets.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)didMoveToWindow
{
  v3 = [(MPVolumeSlider *)self window];

  v4 = +[MPVolumeHUDController sharedInstance];
  v5 = v4;
  if (v3)
  {
    [v4 addVolumeDisplay:self];
  }

  else
  {
    [v4 removeVolumeDisplay:self];
  }
}

- (void)didMoveToSuperview
{
  v3 = [(MPVolumeSlider *)self superview];

  if (v3)
  {
    [(MPVolumeController *)self->_volumeController updateVolumeValue];
  }

  v4 = +[MPVolumeHUDController sharedInstance];
  [v4 setNeedsUpdate];
}

- (void)updateConstraints
{
  v20[4] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v19 updateConstraints];
  if (self->_style)
  {
    v3 = self;
  }

  else
  {
    v3 = [(MPVolumeSlider *)self _maxTrackView];
  }

  v4 = v3;
  if (!self->_configuredLayoutGuide && v3)
  {
    self->_configuredLayoutGuide = 1;
    v14 = MEMORY[0x1E696ACD8];
    v18 = [(UILayoutGuide *)self->_trackLayoutGuide topAnchor];
    v17 = [(MPVolumeSlider *)v4 topAnchor];
    v16 = [v18 constraintEqualToAnchor:v17];
    v20[0] = v16;
    v15 = [(UILayoutGuide *)self->_trackLayoutGuide bottomAnchor];
    v5 = [(MPVolumeSlider *)v4 bottomAnchor];
    v6 = [v15 constraintEqualToAnchor:v5];
    v20[1] = v6;
    v7 = [(UILayoutGuide *)self->_trackLayoutGuide leadingAnchor];
    v8 = [(MPVolumeSlider *)v4 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v20[2] = v9;
    v10 = [(UILayoutGuide *)self->_trackLayoutGuide trailingAnchor];
    v11 = [(MPVolumeSlider *)v4 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v20[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    [v14 activateConstraints:v13];
  }
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v4 cancelTrackingWithEvent:a3];
  if (!self->_configuration)
  {
    [(MPVolumeSlider *)self _commitVolumeChange];
  }
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v5 endTrackingWithTouch:a3 withEvent:a4];
  if (!self->_configuration)
  {
    [(MPVolumeSlider *)self _commitVolumeChange];
  }
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPVolumeSlider;
  v5 = [(MPVolumeSlider *)&v7 continueTrackingWithTouch:a3 withEvent:a4];
  if (!self->_configuration)
  {
    [(MPVolumeSlider *)self _commitVolumeChange];
  }

  return v5;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPVolumeSlider *)self isEnabled];
  if ([(MPVolumeSlider *)self isEnabled])
  {
    [(MPVolumeController *)self->_volumeController setMuted:0];
    v10.receiver = self;
    v10.super_class = MPVolumeSlider;
    [(MPVolumeSlider *)&v10 beginTrackingWithTouch:v6 withEvent:v7];
  }

  return v8;
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (![(MPVolumeSlider *)self isTracking])
  {
    LODWORD(v8) = 1.0;
    *&v7 = a3;
    [(MPVolumeController *)self->_volumeController setVolume:v7 withNotificationDelay:v8];
  }

  v9.receiver = self;
  v9.super_class = MPVolumeSlider;
  *&v7 = a3;
  [(MPVolumeSlider *)&v9 setValue:v4 animated:v7];
}

- (id)createThumbView
{
  v7.receiver = self;
  v7.super_class = MPVolumeSlider;
  v3 = [(MPVolumeSlider *)&v7 createThumbView];
  thumbImageView = self->_thumbImageView;
  self->_thumbImageView = v3;

  v5 = self->_thumbImageView;

  return v5;
}

- (void)dealloc
{
  [(MPVolumeController *)self->_volumeController setDelegate:0];
  v3.receiver = self;
  v3.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(MPVolumeSlider *)self value];
  v6 = v5;
  v7 = [(MPVolumeSlider *)self volumeController];
  v8 = [v7 dataSource];
  v9 = [v3 stringWithFormat:@"<%@: %p value: %f dataSource: %@", v4, self, *&v6, v8];

  return v9;
}

- (MPVolumeSlider)initWithFrame:(CGRect)a3 style:(int64_t)a4 endpointRoute:(id)a5 outputDeviceRoute:(id)a6
{
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v13 = a6;
  v14 = a5;
  v15 = [(MPVolumeSlider *)self initWithFrame:a4 style:v9, v10, v11, v12];
  v16 = [MPVolumeController alloc];
  v17 = [[MPVolumeControllerRouteDataSource alloc] initWithGroupRoute:v14 outputDeviceRoute:v13];

  v18 = [(MPVolumeController *)v16 initWithDataSource:v17];
  [(MPVolumeSlider *)v15 setVolumeController:v18];

  v19 = [(MPVolumeSlider *)v15 volumeController];
  [v19 setDelegate:v15];

  return v15;
}

- (MPVolumeSlider)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  if (a3.size.height < 34.0)
  {
    a3.size.height = 34.0;
  }

  v21.receiver = self;
  v21.super_class = MPVolumeSlider;
  v5 = [(MPVolumeSlider *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
    v7 = _os_feature_enabled_impl();
    if (a4 == 1)
    {
      if (v7)
      {
        v8 = 111;
      }

      else
      {
        v8 = 110;
      }

      [(MPVolumeSlider *)v6 _setSliderStyle:v8];
      v9 = objc_alloc_init(MEMORY[0x1E69DD718]);
      configuration = v6->_configuration;
      v6->_configuration = v9;

      [(_UISliderFluidConfiguration *)v6->_configuration setStretchLimit:12.0];
      [(_UISliderFluidConfiguration *)v6->_configuration setDelegate:v6];
      [(MPVolumeSlider *)v6 _setSliderConfiguration:v6->_configuration];
    }

    else if (v7)
    {
      [(MPVolumeSlider *)v6 _setSliderStyle:101];
    }

    v11 = objc_alloc_init(MPVolumeController);
    volumeController = v6->_volumeController;
    v6->_volumeController = v11;

    [(MPVolumeController *)v6->_volumeController setDelegate:v6];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    trackLayoutGuide = v6->_trackLayoutGuide;
    v6->_trackLayoutGuide = v13;

    [(MPVolumeSlider *)v6 addLayoutGuide:v6->_trackLayoutGuide];
    v15 = [MEMORY[0x1E69DC938] currentDevice];
    [v15 userInterfaceIdiom];
    UIEdgeInsetsMakeWithEdges();
    v6->_hitRectInsets.top = v16;
    v6->_hitRectInsets.left = v17;
    v6->_hitRectInsets.bottom = v18;
    v6->_hitRectInsets.right = v19;

    v6->_isOffScreen = 1;
  }

  return v6;
}

@end