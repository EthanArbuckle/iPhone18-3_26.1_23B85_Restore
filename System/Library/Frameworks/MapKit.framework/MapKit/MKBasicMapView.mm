@interface MKBasicMapView
- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toCameraModelPointToView:(id)view;
- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(id)view;
- (CGSize)calloutContainerCanvasSize;
- (CLLocationCoordinate2D)convertPoint:(CGPoint)point toCoordinateFromView:(id)view;
- (MKBasicMapView)initWithFrame:(CGRect)frame andGlobe:(BOOL)globe shouldRasterize:(BOOL)rasterize allowsAntialiasing:(BOOL)antialiasing carDisplayType:(int64_t)type;
- (UIEdgeInsets)edgeInsets;
- (void)_animateCanvasForBounds:(CGRect)bounds;
- (void)_didEnterBackground;
- (void)_finishChangingViewSize;
- (void)_registerSceneNotifications;
- (void)_unregisterSceneNotifications;
- (void)_updateBackgroundState;
- (void)_updateBackgroundState:(int64_t)state;
- (void)_updateForCurrentLocale;
- (void)_updateForCurrentScreen;
- (void)_updateMapViewHidden;
- (void)_updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:(BOOL)flyover ignoreIfViewInWindow:(BOOL)window;
- (void)_updateStatsForTrafficEnabledTime:(BOOL)time;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setInactive:(BOOL)inactive;
- (void)setRendersInBackground:(BOOL)background;
- (void)updateStatsForSwitchingToMapType:(int)type;
- (void)willMoveToWindow:(id)window;
@end

@implementation MKBasicMapView

- (void)_updateForCurrentLocale
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  -[VKMapView setPreferredUnits:](self->_mapView, "setPreferredUnits:", [currentLocale usesMetricSystem]);
}

- (void)_updateBackgroundState
{
  v16 = *MEMORY[0x1E69E9840];
  window = [(MKBasicMapView *)self window];
  windowScene = [window windowScene];

  if (windowScene && (v5 = [windowScene activationState] + 1, v5 <= 3))
  {
    v6 = qword_1A30F7618[v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = MKGetMKDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138413058;
    v9 = objc_opt_class();
    v10 = 2048;
    selfCopy = self;
    v12 = 2048;
    activationState = [windowScene activationState];
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_INFO, "%@<%p> updateBackgroundState: determined activation state %ld == map scene state %ld", &v8, 0x2Au);
  }

  [(MKBasicMapView *)self _updateBackgroundState:v6];
}

- (void)_updateMapViewHidden
{
  if (([(MKBasicMapView *)self isHidden]& 1) != 0)
  {
    mapView = self->_mapView;

    [(VKMapView *)mapView setHidden:1];
  }

  else
  {
    window = [(MKBasicMapView *)self window];
    if (window)
    {
      v4 = 0;
    }

    else
    {
      v4 = [(MKBasicMapView *)self rendersInBackground]^ 1;
    }

    [(VKMapView *)self->_mapView setHidden:v4];
  }
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = MKBasicMapView;
  [(MKBasicMapView *)&v8 didMoveToWindow];
  [(MKBasicMapView *)self _updateMapViewHidden];
  window = [(MKBasicMapView *)self window];
  if (window)
  {
  }

  else if ([(MKBasicMapView *)self isChangingViewSize])
  {
    [(MKBasicMapView *)self bounds];
    [(UIView *)self->_hostView setFrame:?];
  }

  window2 = [(MKBasicMapView *)self window];

  if (window2)
  {
    [(MKBasicMapView *)self _registerSceneNotifications];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69DE7C0];
    window3 = [(MKBasicMapView *)self window];
    [defaultCenter addObserver:self selector:sel__updateForCurrentScreen name:v6 object:window3];

    self->_mapModeStartTime = CFAbsoluteTimeGetCurrent();
    self->_trafficStartTime = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    [(MKBasicMapView *)self _updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:0 ignoreIfViewInWindow:1];
    [(MKBasicMapView *)self _updateStatsForTrafficEnabledTime:1];
  }

  [(MKBasicMapView *)self _updateBackgroundState];
  [(MKBasicMapView *)self _updateForCurrentScreen];
}

- (void)_registerSceneNotifications
{
  window = [(MKBasicMapView *)self window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:windowScene];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:windowScene];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__finishedSnapshot_ name:*MEMORY[0x1E69DEA28] object:windowScene];
  }
}

- (void)_updateForCurrentScreen
{
  window = [(MKBasicMapView *)self window];
  screen = [window screen];

  v4 = screen;
  if (screen)
  {
    [screen nativeScale];
    v6 = v5;
    v7 = GEOResourceFilterScaleForScale();
    [screen scale];
    v8 = GEOResourceFilterScaleForScale();
    _userInterfaceIdiom = [screen _userInterfaceIdiom];
    modernManager = [MEMORY[0x1E69A2478] modernManager];
    [modernManager activateResourceScale:v8];

    if (v8 != v7)
    {
      modernManager2 = [MEMORY[0x1E69A2478] modernManager];
      [modernManager2 activateResourceScale:v7];
    }

    if (_userInterfaceIdiom == 3)
    {
      modernManager3 = [MEMORY[0x1E69A2478] modernManager];
      [modernManager3 activateResourceScenario:1];
    }

    modernManager4 = [MEMORY[0x1E69A2478] modernManager];
    activeTileGroup = [modernManager4 activeTileGroup];

    [activeTileGroup readAll:1];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v16 = GEOResourceFilterScaleForScale();

    if (_userInterfaceIdiom == 3 && activeTileGroup && v7 != v16)
    {
      if ([activeTileGroup activeScalesCount])
      {
        v17 = 0;
        while ([activeTileGroup activeScaleAtIndex:v17] != v7)
        {
          if (++v17 >= [activeTileGroup activeScalesCount])
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen2 nativeScale];
        v6 = v19;
      }
    }

    [(VKMapView *)self->_mapView setContentsScale:v6];
    [(VKMapView *)self->_mapView setTargetDisplay:_userInterfaceIdiom == 3];
    _mapkit_display = [screen _mapkit_display];
    [(VKMapView *)self->_mapView setHostDisplay:_mapkit_display];

    v4 = screen;
  }
}

- (void)_didEnterBackground
{
  [(VKMapView *)self->_mapView closeLoaderConnection];
  [(VKMapView *)self->_mapView didEnterBackground];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [mainBundle objectForInfoDictionaryKey:@"CAProcessCanAccessGPU"];

  if (!v6 || (v4 = [v6 BOOLValue], v5 = v6, (v4 & 1) == 0))
  {
    [(VKMapView *)self->_mapView flushTileLoads];
    v5 = v6;
  }
}

- (void)_updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:(BOOL)flyover ignoreIfViewInWindow:(BOOL)window
{
  windowCopy = window;
  flyoverCopy = flyover;
  window = [(MKBasicMapView *)self window];

  if ((window || windowCopy) && CFAbsoluteTimeGetCurrent() - self->_mapModeStartTime >= 1.0)
  {
    mapView = [(MKBasicMapView *)self mapView];
    mapType = [mapView mapType];

    isPitched = [(VKMapView *)self->_mapView isPitched];
    if (mapType <= 3)
    {
      if (mapType <= 1)
      {
        if (!mapType)
        {
LABEL_20:
          v11 = @"com.apple.maps.standardMode.time";
          v12 = @"com.apple.maps.standardPitchedMode.time";
          goto LABEL_23;
        }

        if (mapType != 1)
        {
LABEL_35:
          self->_mapModeStartTime = CFAbsoluteTimeGetCurrent();
          return;
        }

LABEL_13:
        v11 = @"com.apple.maps.satelliteMode.time";
        v12 = @"com.apple.maps.satellitePitchedMode.time";
        goto LABEL_23;
      }

      if (mapType == 2)
      {
        v11 = @"com.apple.maps.hybridMode.time";
        v12 = @"com.apple.maps.hybridPitchedMode.time";
        goto LABEL_23;
      }

      v11 = @"com.apple.maps.satelliteGlobeMode.time";
      v13 = !flyoverCopy;
      v14 = @"com.apple.maps.satelliteGlobePitchedMode.time";
      if (flyoverCopy)
      {
        v11 = @"com.apple.maps.satelliteGlobeFlyoverMode.time";
      }

      v15 = @"com.apple.maps.satelliteGlobePitchedFlyoverMode.time";
    }

    else
    {
      if (mapType > 5)
      {
        if (mapType != 8)
        {
          if (mapType != 7)
          {
            if (mapType != 6)
            {
              goto LABEL_35;
            }

            goto LABEL_20;
          }

          goto LABEL_13;
        }

        v11 = @"com.apple.maps.transitMode.time";
        v12 = @"com.apple.maps.transitPitchedMode.time";
LABEL_23:
        if (isPitched)
        {
          v11 = v12;
        }

LABEL_34:
        v16 = v11;
        ADClientAddValueForScalarKey();

        goto LABEL_35;
      }

      if (mapType != 4)
      {
        v11 = @"com.apple.maps.navigationMode.time";
        v12 = @"com.apple.maps.navigationPitchedMode.time";
        goto LABEL_23;
      }

      v11 = @"com.apple.maps.hybridGlobeMode.time";
      v13 = !flyoverCopy;
      v14 = @"com.apple.maps.hybridGlobePitchedMode.time";
      if (flyoverCopy)
      {
        v11 = @"com.apple.maps.hybridGlobeFlyoverMode.time";
      }

      v15 = @"com.apple.maps.hybridGlobePitchedFlyoverMode.time";
    }

    if (v13)
    {
      v15 = v14;
    }

    if (isPitched)
    {
      v11 = v15;
    }

    goto LABEL_34;
  }
}

- (void)updateStatsForSwitchingToMapType:(int)type
{
  if (type <= 8)
  {
    ADClientAddValueForScalarKey();
  }
}

- (void)_updateStatsForTrafficEnabledTime:(BOOL)time
{
  timeCopy = time;
  window = [(MKBasicMapView *)self window];

  if ((window || timeCopy) && CFAbsoluteTimeGetCurrent() - self->_trafficStartTime >= 1.0)
  {
    if (([(VKMapView *)self->_mapView trafficEnabled]& 1) == 0)
    {
      [(VKMapView *)self->_mapView hasTraffic];
    }

    ADClientAddValueForScalarKey();
    self->_trafficStartTime = CFAbsoluteTimeGetCurrent();
  }
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = MKBasicMapView;
  [(MKBasicMapView *)&v4 setHidden:hidden];
  [(MKBasicMapView *)self _updateMapViewHidden];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  window = [(MKBasicMapView *)self window];

  if (window)
  {
    [(MKBasicMapView *)self _unregisterSceneNotifications];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69DE7C0];
    window2 = [(MKBasicMapView *)self window];
    [defaultCenter removeObserver:self name:v7 object:window2];
  }

  v9.receiver = self;
  v9.super_class = MKBasicMapView;
  [(MKBasicMapView *)&v9 willMoveToWindow:windowCopy];
}

- (void)_unregisterSceneNotifications
{
  window = [(MKBasicMapView *)self window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE360] object:windowScene];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE348] object:windowScene];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DEA28] object:windowScene];
  }
}

- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toCameraModelPointToView:(id)view
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  mapView = self->_mapView;
  layer = [view layer];
  [(VKMapView *)mapView convertCoordinate:layer toCameraModelPointToLayer:latitude, longitude];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)coordinate toPointToView:(id)view
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  mapView = self->_mapView;
  layer = [view layer];
  [(VKMapView *)mapView convertCoordinate:layer toPointToLayer:latitude, longitude];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CLLocationCoordinate2D)convertPoint:(CGPoint)point toCoordinateFromView:(id)view
{
  y = point.y;
  x = point.x;
  mapView = self->_mapView;
  layer = [view layer];
  [(VKMapView *)mapView convertPoint:layer toCoordinateFromLayer:x, y];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.longitude = v13;
  result.latitude = v12;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MKBasicMapView *)self bounds];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
    {
      [(MKBasicMapView *)self _animateCanvasForBounds:0.0, 0.0, width, height];
    }

    else
    {
      [(MKBasicMapView *)self _beginChangingViewSize];
      [(UIView *)self->_hostView setFrame:0.0, 0.0, width, height];
      if (self->_hasRenderedSomething && !self->_inBackground)
      {
        [(VKMapView *)self->_mapView forceFrame];
      }

      [(MKBasicMapView *)self _finishChangingViewSize];
    }
  }

  v12.receiver = self;
  v12.super_class = MKBasicMapView;
  [(MKBasicMapView *)&v12 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MKBasicMapView *)self bounds];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
    {
      [(MKBasicMapView *)self _animateCanvasForBounds:x, y, width, height];
    }

    else
    {
      [(MKBasicMapView *)self _beginChangingViewSize];
      [(UIView *)self->_hostView setFrame:x, y, width, height];
      if (self->_hasRenderedSomething && !self->_inBackground)
      {
        [(VKMapView *)self->_mapView forceFrame];
      }

      [(MKBasicMapView *)self _finishChangingViewSize];
    }
  }

  v12.receiver = self;
  v12.super_class = MKBasicMapView;
  [(MKBasicMapView *)&v12 setBounds:x, y, width, height];
}

- (void)_animateCanvasForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  [(MKBasicMapView *)self frame:bounds.origin.x];
  v6 = width;
  if (width <= v7)
  {
    [(MKBasicMapView *)self frame];
    v6 = v8;
  }

  [(MKBasicMapView *)self frame];
  v9 = height;
  if (height <= v10)
  {
    [(MKBasicMapView *)self frame];
    v9 = v11;
  }

  [(MKBasicMapView *)self bounds];
  v12 = CGRectGetMidX(v17) - v6 * 0.5;
  [(MKBasicMapView *)self bounds];
  v13 = CGRectGetMidY(v18) - v9 * 0.5;
  [(MKBasicMapView *)self _beginChangingViewSize];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__MKBasicMapView__animateCanvasForBounds___block_invoke;
  v16[3] = &unk_1E76CD348;
  v16[4] = self;
  *&v16[5] = v12;
  *&v16[6] = v13;
  *&v16[7] = v6;
  *&v16[8] = v9;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__MKBasicMapView__animateCanvasForBounds___block_invoke_2;
  v15[3] = &unk_1E76CD348;
  v15[4] = self;
  *&v15[5] = width * 0.5 - v6 * 0.5;
  *&v15[6] = height * 0.5 - v9 * 0.5;
  *&v15[7] = v6;
  *&v15[8] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__MKBasicMapView__animateCanvasForBounds___block_invoke_3;
  v14[3] = &unk_1E76CA670;
  v14[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v15 animations:v14 completion:0.0];
}

uint64_t __42__MKBasicMapView__animateCanvasForBounds___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 416);

  return [v2 forceLayout];
}

uint64_t __42__MKBasicMapView__animateCanvasForBounds___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if ((a2 & 1) != 0 || v3[55] == 1)
  {
    [v3 bounds];
    [*(*(a1 + 32) + 408) setFrame:?];
    [*(*(a1 + 32) + 416) forceLayout];
    v3 = *(a1 + 32);
  }

  return [v3 _finishChangingViewSize];
}

- (void)setInactive:(BOOL)inactive
{
  inactiveCopy = inactive;
  v16 = *MEMORY[0x1E69E9840];
  v5 = MKGetMKDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    inactive = self->_inactive;
    v8 = 138413058;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    v12 = 1024;
    inactiveCopy2 = inactive;
    v14 = 1024;
    v15 = inactiveCopy;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "%@<%p> setInactive: %d -> %d", &v8, 0x22u);
  }

  if (self->_inactive != inactiveCopy)
  {
    self->_inactive = inactiveCopy;
    [(MKBasicMapView *)self _updateBackgroundState];
  }
}

- (void)setRendersInBackground:(BOOL)background
{
  backgroundCopy = background;
  v16 = *MEMORY[0x1E69E9840];
  v5 = MKGetMKDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    rendersInBackground = [(VKMapView *)self->_mapView rendersInBackground];
    v8 = 138413058;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    v12 = 1024;
    v13 = rendersInBackground;
    v14 = 1024;
    v15 = backgroundCopy;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "%@<%p> setRendersInBackground: %d -> %d", &v8, 0x22u);
  }

  [(VKMapView *)self->_mapView setRendersInBackground:backgroundCopy];
  [(MKBasicMapView *)self _updateBackgroundState];
  [(MKBasicMapView *)self _updateMapViewHidden];
}

- (CGSize)calloutContainerCanvasSize
{
  [(UIView *)self->_hostView frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  [(VKMapView *)self->_mapView edgeInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result.right = v9;
  result.bottom = v7;
  result.left = v5;
  result.top = v3;
  return result;
}

- (void)dealloc
{
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  [modernManager removeTileGroupObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = MKBasicMapView;
  [(MKBasicMapView *)&v5 dealloc];
}

- (MKBasicMapView)initWithFrame:(CGRect)frame andGlobe:(BOOL)globe shouldRasterize:(BOOL)rasterize allowsAntialiasing:(BOOL)antialiasing carDisplayType:(int64_t)type
{
  antialiasingCopy = antialiasing;
  rasterizeCopy = rasterize;
  v32[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = MKBasicMapView;
  v10 = [(MKBasicMapView *)&v30 initWithFrame:globe, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v10)
  {
    if (initWithFrame_andGlobe_shouldRasterize_allowsAntialiasing_carDisplayType__once != -1)
    {
      dispatch_once(&initWithFrame_andGlobe_shouldRasterize_allowsAntialiasing_carDisplayType__once, &__block_literal_global_14711);
    }

    [(MKBasicMapView *)v10 _updateBackgroundState:0];
    v11 = [_MKMapLayerHostingView alloc];
    [(MKBasicMapView *)v10 bounds];
    v12 = [(_MKMapLayerHostingView *)v11 initWithFrame:?];
    hostView = v10->_hostView;
    v10->_hostView = &v12->super;
    v14 = v12;

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen nativeScale];
    v17 = v16;

    v18 = [MEMORY[0x1E69DF458] descriptorWithShouldRasterize:rasterizeCopy inBackground:v10->_inBackground contentScale:0 auditToken:0 mapViewPurpose:antialiasingCopy allowsAntialiasing:v17];
    [v18 setCarDisplayType:type];
    v19 = [objc_alloc(MEMORY[0x1E69DF450]) initWithDescriptor:v18];
    mapView = v10->_mapView;
    v10->_mapView = v19;

    [(_MKMapLayerHostingView *)v14 setMapView:v10->_mapView];
    v31[0] = @"bounds";
    null = [MEMORY[0x1E695DFB0] null];
    v32[0] = null;
    v31[1] = @"position";
    null2 = [MEMORY[0x1E695DFB0] null];
    v32[1] = null2;
    v31[2] = @"hidden";
    null3 = [MEMORY[0x1E695DFB0] null];
    v32[2] = null3;
    v31[3] = @"sublayers";
    null4 = [MEMORY[0x1E695DFB0] null];
    v32[3] = null4;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
    [(VKMapView *)v10->_mapView setActions:v25];

    [(UIView *)v10->_hostView bounds];
    [(VKMapView *)v10->_mapView setFrame:?];
    [(VKMapView *)v10->_mapView setHidden:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__updateForCurrentLocale name:*MEMORY[0x1E695D8F0] object:0];

    [(MKBasicMapView *)v10 _updateForCurrentLocale];
    layer = [(UIView *)v10->_hostView layer];
    [layer addSublayer:v10->_mapView];

    [(MKBasicMapView *)v10 addSubview:v10->_hostView];
    [(MKBasicMapView *)v10 setClipsToBounds:1];
    v10->_mapModeStartTime = CFAbsoluteTimeGetCurrent();
    v10->_trafficStartTime = CFAbsoluteTimeGetCurrent();
    modernManager = [MEMORY[0x1E69A2478] modernManager];

    [modernManager addTileGroupObserver:v10 queue:MEMORY[0x1E69E96A0]];
  }

  return v10;
}

- (void)_updateBackgroundState:(int64_t)state
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_inactive)
  {
    v5 = 1;
  }

  else
  {
    v6 = state & 0xFFFFFFFFFFFFFFFDLL;
    v7 = [(VKMapView *)self->_mapView rendersInBackground]^ 1;
    if (v6 == 1)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = MKGetMKDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    if (v5)
    {
      v10 = "";
    }

    else
    {
      v10 = " not";
    }

    inBackground = self->_inBackground;
    inactive = self->_inactive;
    v13 = 138413826;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2080;
    v18 = v10;
    v19 = 1024;
    v20 = inBackground;
    v21 = 2048;
    stateCopy = state;
    v23 = 1024;
    v24 = inactive;
    v25 = 1024;
    rendersInBackground = [(MKBasicMapView *)self rendersInBackground];
    _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "%@<%p> updateBackgroundState: determined is%s in background (was background: %d, scene state: %ld, inactive: %d, rendersInBackground: %d)", &v13, 0x3Cu);
  }

  if (self->_inBackground != v5)
  {
    self->_inBackground = v5;
    if (v5)
    {
      [(MKBasicMapView *)self _didEnterBackground];
    }

    else
    {
      [(VKMapView *)self->_mapView openLoaderConnection];
      [(VKMapView *)self->_mapView willEnterForeground];
    }
  }
}

- (void)_finishChangingViewSize
{
  changingViewSizeCount = self->_changingViewSizeCount;
  if (changingViewSizeCount)
  {
    self->_changingViewSizeCount = changingViewSizeCount - 1;
  }
}

@end