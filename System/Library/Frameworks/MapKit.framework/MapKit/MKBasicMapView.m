@interface MKBasicMapView
- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)a3 toCameraModelPointToView:(id)a4;
- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)a3 toPointToView:(id)a4;
- (CGSize)calloutContainerCanvasSize;
- (CLLocationCoordinate2D)convertPoint:(CGPoint)a3 toCoordinateFromView:(id)a4;
- (MKBasicMapView)initWithFrame:(CGRect)a3 andGlobe:(BOOL)a4 shouldRasterize:(BOOL)a5 allowsAntialiasing:(BOOL)a6 carDisplayType:(int64_t)a7;
- (UIEdgeInsets)edgeInsets;
- (void)_animateCanvasForBounds:(CGRect)a3;
- (void)_didEnterBackground;
- (void)_finishChangingViewSize;
- (void)_registerSceneNotifications;
- (void)_unregisterSceneNotifications;
- (void)_updateBackgroundState;
- (void)_updateBackgroundState:(int64_t)a3;
- (void)_updateForCurrentLocale;
- (void)_updateForCurrentScreen;
- (void)_updateMapViewHidden;
- (void)_updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:(BOOL)a3 ignoreIfViewInWindow:(BOOL)a4;
- (void)_updateStatsForTrafficEnabledTime:(BOOL)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setInactive:(BOOL)a3;
- (void)setRendersInBackground:(BOOL)a3;
- (void)updateStatsForSwitchingToMapType:(int)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation MKBasicMapView

- (void)_updateForCurrentLocale
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  -[VKMapView setPreferredUnits:](self->_mapView, "setPreferredUnits:", [v3 usesMetricSystem]);
}

- (void)_updateBackgroundState
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(MKBasicMapView *)self window];
  v4 = [v3 windowScene];

  if (v4 && (v5 = [v4 activationState] + 1, v5 <= 3))
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
    v11 = self;
    v12 = 2048;
    v13 = [v4 activationState];
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
    v5 = [(MKBasicMapView *)self window];
    if (v5)
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
  v3 = [(MKBasicMapView *)self window];
  if (v3)
  {
  }

  else if ([(MKBasicMapView *)self isChangingViewSize])
  {
    [(MKBasicMapView *)self bounds];
    [(UIView *)self->_hostView setFrame:?];
  }

  v4 = [(MKBasicMapView *)self window];

  if (v4)
  {
    [(MKBasicMapView *)self _registerSceneNotifications];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69DE7C0];
    v7 = [(MKBasicMapView *)self window];
    [v5 addObserver:self selector:sel__updateForCurrentScreen name:v6 object:v7];

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
  v3 = [(MKBasicMapView *)self window];
  v7 = [v3 windowScene];

  if (v7)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:v7];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:v7];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel__finishedSnapshot_ name:*MEMORY[0x1E69DEA28] object:v7];
  }
}

- (void)_updateForCurrentScreen
{
  v3 = [(MKBasicMapView *)self window];
  v21 = [v3 screen];

  v4 = v21;
  if (v21)
  {
    [v21 nativeScale];
    v6 = v5;
    v7 = GEOResourceFilterScaleForScale();
    [v21 scale];
    v8 = GEOResourceFilterScaleForScale();
    v9 = [v21 _userInterfaceIdiom];
    v10 = [MEMORY[0x1E69A2478] modernManager];
    [v10 activateResourceScale:v8];

    if (v8 != v7)
    {
      v11 = [MEMORY[0x1E69A2478] modernManager];
      [v11 activateResourceScale:v7];
    }

    if (v9 == 3)
    {
      v12 = [MEMORY[0x1E69A2478] modernManager];
      [v12 activateResourceScenario:1];
    }

    v13 = [MEMORY[0x1E69A2478] modernManager];
    v14 = [v13 activeTileGroup];

    [v14 readAll:1];
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 scale];
    v16 = GEOResourceFilterScaleForScale();

    if (v9 == 3 && v14 && v7 != v16)
    {
      if ([v14 activeScalesCount])
      {
        v17 = 0;
        while ([v14 activeScaleAtIndex:v17] != v7)
        {
          if (++v17 >= [v14 activeScalesCount])
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        v18 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v18 nativeScale];
        v6 = v19;
      }
    }

    [(VKMapView *)self->_mapView setContentsScale:v6];
    [(VKMapView *)self->_mapView setTargetDisplay:v9 == 3];
    v20 = [v21 _mapkit_display];
    [(VKMapView *)self->_mapView setHostDisplay:v20];

    v4 = v21;
  }
}

- (void)_didEnterBackground
{
  [(VKMapView *)self->_mapView closeLoaderConnection];
  [(VKMapView *)self->_mapView didEnterBackground];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v3 objectForInfoDictionaryKey:@"CAProcessCanAccessGPU"];

  if (!v6 || (v4 = [v6 BOOLValue], v5 = v6, (v4 & 1) == 0))
  {
    [(VKMapView *)self->_mapView flushTileLoads];
    v5 = v6;
  }
}

- (void)_updateStatsForTimeSpentInCurrentMapTypeIsShowingFlyover:(BOOL)a3 ignoreIfViewInWindow:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(MKBasicMapView *)self window];

  if ((v7 || v4) && CFAbsoluteTimeGetCurrent() - self->_mapModeStartTime >= 1.0)
  {
    v8 = [(MKBasicMapView *)self mapView];
    v9 = [v8 mapType];

    v10 = [(VKMapView *)self->_mapView isPitched];
    if (v9 <= 3)
    {
      if (v9 <= 1)
      {
        if (!v9)
        {
LABEL_20:
          v11 = @"com.apple.maps.standardMode.time";
          v12 = @"com.apple.maps.standardPitchedMode.time";
          goto LABEL_23;
        }

        if (v9 != 1)
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

      if (v9 == 2)
      {
        v11 = @"com.apple.maps.hybridMode.time";
        v12 = @"com.apple.maps.hybridPitchedMode.time";
        goto LABEL_23;
      }

      v11 = @"com.apple.maps.satelliteGlobeMode.time";
      v13 = !v5;
      v14 = @"com.apple.maps.satelliteGlobePitchedMode.time";
      if (v5)
      {
        v11 = @"com.apple.maps.satelliteGlobeFlyoverMode.time";
      }

      v15 = @"com.apple.maps.satelliteGlobePitchedFlyoverMode.time";
    }

    else
    {
      if (v9 > 5)
      {
        if (v9 != 8)
        {
          if (v9 != 7)
          {
            if (v9 != 6)
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
        if (v10)
        {
          v11 = v12;
        }

LABEL_34:
        v16 = v11;
        ADClientAddValueForScalarKey();

        goto LABEL_35;
      }

      if (v9 != 4)
      {
        v11 = @"com.apple.maps.navigationMode.time";
        v12 = @"com.apple.maps.navigationPitchedMode.time";
        goto LABEL_23;
      }

      v11 = @"com.apple.maps.hybridGlobeMode.time";
      v13 = !v5;
      v14 = @"com.apple.maps.hybridGlobePitchedMode.time";
      if (v5)
      {
        v11 = @"com.apple.maps.hybridGlobeFlyoverMode.time";
      }

      v15 = @"com.apple.maps.hybridGlobePitchedFlyoverMode.time";
    }

    if (v13)
    {
      v15 = v14;
    }

    if (v10)
    {
      v11 = v15;
    }

    goto LABEL_34;
  }
}

- (void)updateStatsForSwitchingToMapType:(int)a3
{
  if (a3 <= 8)
  {
    ADClientAddValueForScalarKey();
  }
}

- (void)_updateStatsForTrafficEnabledTime:(BOOL)a3
{
  v3 = a3;
  v5 = [(MKBasicMapView *)self window];

  if ((v5 || v3) && CFAbsoluteTimeGetCurrent() - self->_trafficStartTime >= 1.0)
  {
    if (([(VKMapView *)self->_mapView trafficEnabled]& 1) == 0)
    {
      [(VKMapView *)self->_mapView hasTraffic];
    }

    ADClientAddValueForScalarKey();
    self->_trafficStartTime = CFAbsoluteTimeGetCurrent();
  }
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MKBasicMapView;
  [(MKBasicMapView *)&v4 setHidden:a3];
  [(MKBasicMapView *)self _updateMapViewHidden];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v5 = [(MKBasicMapView *)self window];

  if (v5)
  {
    [(MKBasicMapView *)self _unregisterSceneNotifications];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69DE7C0];
    v8 = [(MKBasicMapView *)self window];
    [v6 removeObserver:self name:v7 object:v8];
  }

  v9.receiver = self;
  v9.super_class = MKBasicMapView;
  [(MKBasicMapView *)&v9 willMoveToWindow:v4];
}

- (void)_unregisterSceneNotifications
{
  v3 = [(MKBasicMapView *)self window];
  v7 = [v3 windowScene];

  if (v7)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x1E69DE360] object:v7];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x1E69DE348] object:v7];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x1E69DEA28] object:v7];
  }
}

- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)a3 toCameraModelPointToView:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  mapView = self->_mapView;
  v7 = [a4 layer];
  [(VKMapView *)mapView convertCoordinate:v7 toCameraModelPointToLayer:latitude, longitude];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)convertCoordinate:(CLLocationCoordinate2D)a3 toPointToView:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  mapView = self->_mapView;
  v7 = [a4 layer];
  [(VKMapView *)mapView convertCoordinate:v7 toPointToLayer:latitude, longitude];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CLLocationCoordinate2D)convertPoint:(CGPoint)a3 toCoordinateFromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  mapView = self->_mapView;
  v7 = [a4 layer];
  [(VKMapView *)mapView convertPoint:v7 toCoordinateFromLayer:x, y];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.longitude = v13;
  result.latitude = v12;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)_animateCanvasForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(MKBasicMapView *)self frame:a3.origin.x];
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

- (void)setInactive:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v5 = MKGetMKDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    inactive = self->_inactive;
    v8 = 138413058;
    v9 = v6;
    v10 = 2048;
    v11 = self;
    v12 = 1024;
    v13 = inactive;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "%@<%p> setInactive: %d -> %d", &v8, 0x22u);
  }

  if (self->_inactive != v3)
  {
    self->_inactive = v3;
    [(MKBasicMapView *)self _updateBackgroundState];
  }
}

- (void)setRendersInBackground:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v5 = MKGetMKDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = [(VKMapView *)self->_mapView rendersInBackground];
    v8 = 138413058;
    v9 = v6;
    v10 = 2048;
    v11 = self;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "%@<%p> setRendersInBackground: %d -> %d", &v8, 0x22u);
  }

  [(VKMapView *)self->_mapView setRendersInBackground:v3];
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
  v3 = [MEMORY[0x1E69A2478] modernManager];
  [v3 removeTileGroupObserver:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MKBasicMapView;
  [(MKBasicMapView *)&v5 dealloc];
}

- (MKBasicMapView)initWithFrame:(CGRect)a3 andGlobe:(BOOL)a4 shouldRasterize:(BOOL)a5 allowsAntialiasing:(BOOL)a6 carDisplayType:(int64_t)a7
{
  v8 = a6;
  v9 = a5;
  v32[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = MKBasicMapView;
  v10 = [(MKBasicMapView *)&v30 initWithFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 nativeScale];
    v17 = v16;

    v18 = [MEMORY[0x1E69DF458] descriptorWithShouldRasterize:v9 inBackground:v10->_inBackground contentScale:0 auditToken:0 mapViewPurpose:v8 allowsAntialiasing:v17];
    [v18 setCarDisplayType:a7];
    v19 = [objc_alloc(MEMORY[0x1E69DF450]) initWithDescriptor:v18];
    mapView = v10->_mapView;
    v10->_mapView = v19;

    [(_MKMapLayerHostingView *)v14 setMapView:v10->_mapView];
    v31[0] = @"bounds";
    v21 = [MEMORY[0x1E695DFB0] null];
    v32[0] = v21;
    v31[1] = @"position";
    v22 = [MEMORY[0x1E695DFB0] null];
    v32[1] = v22;
    v31[2] = @"hidden";
    v23 = [MEMORY[0x1E695DFB0] null];
    v32[2] = v23;
    v31[3] = @"sublayers";
    v24 = [MEMORY[0x1E695DFB0] null];
    v32[3] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
    [(VKMapView *)v10->_mapView setActions:v25];

    [(UIView *)v10->_hostView bounds];
    [(VKMapView *)v10->_mapView setFrame:?];
    [(VKMapView *)v10->_mapView setHidden:1];
    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 addObserver:v10 selector:sel__updateForCurrentLocale name:*MEMORY[0x1E695D8F0] object:0];

    [(MKBasicMapView *)v10 _updateForCurrentLocale];
    v27 = [(UIView *)v10->_hostView layer];
    [v27 addSublayer:v10->_mapView];

    [(MKBasicMapView *)v10 addSubview:v10->_hostView];
    [(MKBasicMapView *)v10 setClipsToBounds:1];
    v10->_mapModeStartTime = CFAbsoluteTimeGetCurrent();
    v10->_trafficStartTime = CFAbsoluteTimeGetCurrent();
    v28 = [MEMORY[0x1E69A2478] modernManager];

    [v28 addTileGroupObserver:v10 queue:MEMORY[0x1E69E96A0]];
  }

  return v10;
}

- (void)_updateBackgroundState:(int64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_inactive)
  {
    v5 = 1;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFFFFDLL;
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
    v16 = self;
    v17 = 2080;
    v18 = v10;
    v19 = 1024;
    v20 = inBackground;
    v21 = 2048;
    v22 = a3;
    v23 = 1024;
    v24 = inactive;
    v25 = 1024;
    v26 = [(MKBasicMapView *)self rendersInBackground];
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