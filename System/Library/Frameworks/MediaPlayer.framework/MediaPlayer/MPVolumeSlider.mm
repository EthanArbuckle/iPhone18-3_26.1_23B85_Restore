@interface MPVolumeSlider
- (BOOL)_isOffScreen;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isTracking;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (MPVolumeSlider)initWithFrame:(CGRect)frame style:(int64_t)style;
- (MPVolumeSlider)initWithFrame:(CGRect)frame style:(int64_t)style endpointRoute:(id)route outputDeviceRoute:(id)deviceRoute;
- (NSString)description;
- (UIEdgeInsets)hitRectInsets;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (double)expansionFactor;
- (id)_routeName;
- (id)createThumbView;
- (void)_commitVolumeChange;
- (void)_setIsOffScreen:(BOOL)screen;
- (void)_sliderFluidInteractionWillEnd:(id)end;
- (void)_updateVolumeAnimated:(BOOL)animated silenceVolumeHUD:(BOOL)d;
- (void)cancelTrackingWithEvent:(id)event;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)setAlpha:(double)alpha;
- (void)setEnabled:(BOOL)enabled;
- (void)setExpansionFactor:(double)factor;
- (void)setGroupRoute:(id)route;
- (void)setHidden:(BOOL)hidden;
- (void)setOutputDeviceRoute:(id)route;
- (void)setRoute:(id)route;
- (void)setValue:(float)value animated:(BOOL)animated;
- (void)setVolumeController:(id)controller;
- (void)setVolumeDataSource:(id)source;
- (void)updateConstraints;
- (void)updateVolume;
- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change;
- (void)volumeController:(id)controller volumeControlCapabilitiesDidChange:(unsigned int)change;
- (void)volumeController:(id)controller volumeControlLabelDidChange:(id)change;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change silenceVolumeHUD:(BOOL)d;
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
  volumeController = [(MPVolumeSlider *)self volumeController];
  dataSource = [volumeController dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    volumeController2 = [(MPVolumeSlider *)self volumeController];
    dataSource2 = [volumeController2 dataSource];

    outputDeviceRoute = [dataSource2 outputDeviceRoute];
    routeName = [outputDeviceRoute routeName];
    v10 = routeName;
    if (routeName)
    {
      routeName2 = routeName;
    }

    else
    {
      groupRoute = [(MPVolumeSlider *)self groupRoute];
      routeName2 = [groupRoute routeName];
    }
  }

  else
  {
    MRAVEndpointGetLocalEndpoint();
    routeName2 = MRAVEndpointCopyLocalizedName();
  }

  return routeName2;
}

- (void)_updateVolumeAnimated:(BOOL)animated silenceVolumeHUD:(BOOL)d
{
  animatedCopy = animated;
  isVolumeControlAvailable = [(MPVolumeController *)self->_volumeController isVolumeControlAvailable];
  [(MPVolumeController *)self->_volumeController volumeValue];
  v9 = v8;
  [(MPVolumeSlider *)self setEnabled:isVolumeControlAvailable];
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
    [(MPVolumeSlider *)&v11 setValue:animatedCopy animated:v10];
    if (!d)
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

- (void)_setIsOffScreen:(BOOL)screen
{
  self->_forcingOffscreenVisibility = 1;
  if (self->_isOffScreen != screen)
  {
    self->_isOffScreen = screen;
    v5 = +[MPVolumeHUDController sharedInstance];
    [v5 setNeedsUpdate];

    if (!screen)
    {
      superview = [(MPVolumeSlider *)self superview];

      if (superview)
      {
        volumeController = [(MPVolumeSlider *)self volumeController];
        [volumeController updateVolumeValue];
      }
    }
  }
}

- (BOOL)_isOffScreen
{
  window = [(MPVolumeSlider *)self window];

  if (window)
  {
    if (self->_forcingOffscreenVisibility)
    {
      LOBYTE(superview) = self->_isOffScreen;
    }

    else
    {
      selfCopy = self;
      while (([(MPVolumeSlider *)selfCopy isHidden]& 1) == 0)
      {
        [(MPVolumeSlider *)selfCopy alpha];
        if (v6 < 0.00000011920929)
        {
          break;
        }

        superview = [(MPVolumeSlider *)selfCopy superview];

        selfCopy = superview;
        if (!superview)
        {
          goto LABEL_11;
        }
      }

      LOBYTE(superview) = 1;
LABEL_11:
    }
  }

  else
  {
    LOBYTE(superview) = 1;
  }

  return superview & 1;
}

- (void)_sliderFluidInteractionWillEnd:(id)end
{
  self->_isFluidTracking = 0;
  [(MPVolumeSlider *)self _commitVolumeChange];

  [(MPVolumeSlider *)self sendActionsForControlEvents:64];
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change silenceVolumeHUD:(BOOL)d
{
  dCopy = d;
  if (![(MPVolumeSlider *)self isTracking])
  {

    [(MPVolumeSlider *)self _updateVolumeAnimated:1 silenceVolumeHUD:dCopy];
  }
}

- (void)volumeController:(id)controller volumeControlLabelDidChange:(id)change
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPVolumeSliderVolumeControlLabelDidChangeNotification" object:self];
}

- (void)volumeController:(id)controller volumeControlCapabilitiesDidChange:(unsigned int)change
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPVolumeSliderVolumeControlCapabilitiesDidChangeNotification" object:self];
}

- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change
{
  [(MPVolumeSlider *)self _updateVolumeAnimated:1 silenceVolumeHUD:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPVolumeSliderVolumeControlAvailabilityDidChangeNotification" object:self];
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  window = [(MPVolumeSlider *)self window];
  windowScene = [window windowScene];

  return windowScene;
}

- (void)updateVolume
{
  volumeController = [(MPVolumeSlider *)self volumeController];

  if (volumeController)
  {

    [(MPVolumeSlider *)self _updateVolumeAnimated:0 silenceVolumeHUD:0];
  }
}

- (void)setExpansionFactor:(double)factor
{
  configuration = [(MPVolumeSlider *)self configuration];
  [configuration setExpansionFactor:factor];
  [(MPVolumeSlider *)self _setSliderConfiguration:configuration];
}

- (double)expansionFactor
{
  configuration = [(MPVolumeSlider *)self configuration];
  [configuration expansionFactor];
  v4 = v3;

  return v4;
}

- (void)setVolumeDataSource:(id)source
{
  v13 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = sourceCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[MPVolumeSlider] <%@: %p> setVolumeDataSource: %@", &v7, 0x20u);
  }

  [(MPVolumeController *)self->_volumeController setDataSource:sourceCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPVolumeSliderVolumeControlLabelDidChangeNotification" object:self];
}

- (void)setOutputDeviceRoute:(id)route
{
  routeCopy = route;
  if (self->_outputDeviceRoute != routeCopy)
  {
    objc_storeStrong(&self->_outputDeviceRoute, route);
    if (self->_groupRoute)
    {
      v5 = [[MPVolumeControllerRouteDataSource alloc] initWithGroupRoute:self->_groupRoute outputDeviceRoute:self->_outputDeviceRoute];
      [(MPVolumeSlider *)self setVolumeDataSource:v5];
    }
  }
}

- (void)setGroupRoute:(id)route
{
  routeCopy = route;
  if (self->_groupRoute != routeCopy)
  {
    v8 = routeCopy;
    objc_storeStrong(&self->_groupRoute, route);
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

    routeCopy = v8;
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPVolumeSlider.m" lineNumber:248 description:@"MPVolumeSlider.route must be an MPAVEndpointRoute"];
  }

  [(MPVolumeSlider *)self setGroupRoute:routeCopy];
}

- (void)setVolumeController:(id)controller
{
  controllerCopy = controller;
  if (self->_volumeController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_volumeController, controller);
    [(MPVolumeController *)self->_volumeController setDelegate:self];
    [(MPVolumeController *)self->_volumeController updateVolumeValue];
    controllerCopy = v6;
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(MPVolumeSlider *)self isEnabled]!= enabled)
  {
    v7.receiver = self;
    v7.super_class = MPVolumeSlider;
    [(MPVolumeSlider *)&v7 setEnabled:enabledCopy];
    [(MPVolumeSlider *)self _setMinimumTrackVisible:enabledCopy withDuration:0.0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __29__MPVolumeSlider_setEnabled___block_invoke;
    v5[3] = &unk_1E7682280;
    v5[4] = self;
    v6 = enabledCopy;
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

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v4 setHidden:hidden];
  v3 = +[MPVolumeHUDController sharedInstance];
  [v3 setNeedsUpdate];
}

- (void)setAlpha:(double)alpha
{
  v4.receiver = self;
  v4.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v4 setAlpha:alpha];
  v3 = +[MPVolumeHUDController sharedInstance];
  [v3 setNeedsUpdate];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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
  window = [(MPVolumeSlider *)self window];

  v4 = +[MPVolumeHUDController sharedInstance];
  v5 = v4;
  if (window)
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
  superview = [(MPVolumeSlider *)self superview];

  if (superview)
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
    selfCopy = self;
  }

  else
  {
    selfCopy = [(MPVolumeSlider *)self _maxTrackView];
  }

  v4 = selfCopy;
  if (!self->_configuredLayoutGuide && selfCopy)
  {
    self->_configuredLayoutGuide = 1;
    v14 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILayoutGuide *)self->_trackLayoutGuide topAnchor];
    topAnchor2 = [(MPVolumeSlider *)v4 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v20[0] = v16;
    bottomAnchor = [(UILayoutGuide *)self->_trackLayoutGuide bottomAnchor];
    bottomAnchor2 = [(MPVolumeSlider *)v4 bottomAnchor];
    v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v20[1] = v6;
    leadingAnchor = [(UILayoutGuide *)self->_trackLayoutGuide leadingAnchor];
    leadingAnchor2 = [(MPVolumeSlider *)v4 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v20[2] = v9;
    trailingAnchor = [(UILayoutGuide *)self->_trackLayoutGuide trailingAnchor];
    trailingAnchor2 = [(MPVolumeSlider *)v4 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v20[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    [v14 activateConstraints:v13];
  }
}

- (void)cancelTrackingWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v4 cancelTrackingWithEvent:event];
  if (!self->_configuration)
  {
    [(MPVolumeSlider *)self _commitVolumeChange];
  }
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MPVolumeSlider;
  [(MPVolumeSlider *)&v5 endTrackingWithTouch:touch withEvent:event];
  if (!self->_configuration)
  {
    [(MPVolumeSlider *)self _commitVolumeChange];
  }
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = MPVolumeSlider;
  v5 = [(MPVolumeSlider *)&v7 continueTrackingWithTouch:touch withEvent:event];
  if (!self->_configuration)
  {
    [(MPVolumeSlider *)self _commitVolumeChange];
  }

  return v5;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  isEnabled = [(MPVolumeSlider *)self isEnabled];
  if ([(MPVolumeSlider *)self isEnabled])
  {
    [(MPVolumeController *)self->_volumeController setMuted:0];
    v10.receiver = self;
    v10.super_class = MPVolumeSlider;
    [(MPVolumeSlider *)&v10 beginTrackingWithTouch:touchCopy withEvent:eventCopy];
  }

  return isEnabled;
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(MPVolumeSlider *)self isTracking])
  {
    LODWORD(v8) = 1.0;
    *&v7 = value;
    [(MPVolumeController *)self->_volumeController setVolume:v7 withNotificationDelay:v8];
  }

  v9.receiver = self;
  v9.super_class = MPVolumeSlider;
  *&v7 = value;
  [(MPVolumeSlider *)&v9 setValue:animatedCopy animated:v7];
}

- (id)createThumbView
{
  v7.receiver = self;
  v7.super_class = MPVolumeSlider;
  createThumbView = [(MPVolumeSlider *)&v7 createThumbView];
  thumbImageView = self->_thumbImageView;
  self->_thumbImageView = createThumbView;

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
  volumeController = [(MPVolumeSlider *)self volumeController];
  dataSource = [volumeController dataSource];
  v9 = [v3 stringWithFormat:@"<%@: %p value: %f dataSource: %@", v4, self, *&v6, dataSource];

  return v9;
}

- (MPVolumeSlider)initWithFrame:(CGRect)frame style:(int64_t)style endpointRoute:(id)route outputDeviceRoute:(id)deviceRoute
{
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  deviceRouteCopy = deviceRoute;
  routeCopy = route;
  v15 = [(MPVolumeSlider *)self initWithFrame:style style:v9, v10, v11, v12];
  v16 = [MPVolumeController alloc];
  v17 = [[MPVolumeControllerRouteDataSource alloc] initWithGroupRoute:routeCopy outputDeviceRoute:deviceRouteCopy];

  v18 = [(MPVolumeController *)v16 initWithDataSource:v17];
  [(MPVolumeSlider *)v15 setVolumeController:v18];

  volumeController = [(MPVolumeSlider *)v15 volumeController];
  [volumeController setDelegate:v15];

  return v15;
}

- (MPVolumeSlider)initWithFrame:(CGRect)frame style:(int64_t)style
{
  if (frame.size.height < 34.0)
  {
    frame.size.height = 34.0;
  }

  v21.receiver = self;
  v21.super_class = MPVolumeSlider;
  v5 = [(MPVolumeSlider *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    v7 = _os_feature_enabled_impl();
    if (style == 1)
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice userInterfaceIdiom];
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