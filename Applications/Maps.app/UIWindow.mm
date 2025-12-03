@interface UIWindow
- (BOOL)_car_isHybridInstrumentCluster;
- (BOOL)_car_shouldHorizontallyCenterMapInsets;
- (id)_car_debugDescription;
- (int64_t)_car_hybridInstrumentClusterAlignment;
- (int64_t)_car_hybridInstrumentClusterAlignmentStyle;
- (int64_t)_car_hybridInstrumentClusterLayout;
- (unint64_t)_car_hybridInstrumentClusterDisplayLocation;
- (unint64_t)_car_hybridInstrumentClusterPresentationType;
- (void)_maps_registerEventTap:(id)tap;
@end

@implementation UIWindow

- (unint64_t)_car_hybridInstrumentClusterPresentationType
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetUInteger();
  }

  else
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = selfCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    currentSceneSettings = [(UIWindow *)v6 currentSceneSettings];

    hostedAltScreenPresentationType = [currentSceneSettings hostedAltScreenPresentationType];
    v9 = 0;
    if (hostedAltScreenPresentationType <= 4)
    {
      v9 = qword_101215D30[hostedAltScreenPresentationType];
    }

    return v9;
  }
}

- (BOOL)_car_isHybridInstrumentCluster
{
  windowScene = [(UIWindow *)self windowScene];
  delegate = [windowScene delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 sceneType] == 6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_maps_registerEventTap:(id)tap
{
  tapCopy = tap;
  if ([(UIWindow *)self conformsToProtocol:&OBJC_PROTOCOL___EventSourceHandler])
  {
    [(UIWindow *)self registerEventTap:tapCopy];
  }
}

- (id)_car_debugDescription
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"%@:%p\n", objc_opt_class(), self];
  if ([(UIWindow *)self _car_isHybridInstrumentCluster])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"isHybridInstrumentCluster:%@\n", v4];
  if ([(UIWindow *)self _car_shouldHorizontallyCenterMapInsets])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"shouldHorizontallyCenterMapInsets:%@\n", v5];
  _car_hybridInstrumentClusterAlignment = [(UIWindow *)self _car_hybridInstrumentClusterAlignment];
  v7 = @"?";
  v8 = @"?";
  if (_car_hybridInstrumentClusterAlignment <= 2)
  {
    v8 = *(&off_1016552C8 + _car_hybridInstrumentClusterAlignment);
  }

  [v3 appendFormat:@"hybridInstrumentClusterAlignment:%@\n", v8];
  _car_hybridInstrumentClusterAlignmentStyle = [(UIWindow *)self _car_hybridInstrumentClusterAlignmentStyle];
  v10 = @"Wide";
  if (_car_hybridInstrumentClusterAlignmentStyle != 1)
  {
    v10 = @"?";
  }

  if (!_car_hybridInstrumentClusterAlignmentStyle)
  {
    v10 = @"Narrow";
  }

  [v3 appendFormat:@"hybridInstrumentClusterAlignmentStyle:%@\n", v10];
  _car_hybridInstrumentClusterLayout = [(UIWindow *)self _car_hybridInstrumentClusterLayout];
  if (_car_hybridInstrumentClusterLayout <= 2)
  {
    v7 = *(&off_1016552E0 + _car_hybridInstrumentClusterLayout);
  }

  [v3 appendFormat:@"hybridInstrumentClusterLayout:%@\n", v7];
  _car_hybridInstrumentClusterPresentationType = [(UIWindow *)self _car_hybridInstrumentClusterPresentationType];
  if (_car_hybridInstrumentClusterPresentationType > 2)
  {
    v13 = @"?";
  }

  else
  {
    v13 = *(&off_1016552F8 + _car_hybridInstrumentClusterPresentationType);
  }

  [v3 appendFormat:@"hybridInstrumentClusterPresentationType:%@\n", v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentSceneSettings = [(UIWindow *)self currentSceneSettings];
    [v3 appendFormat:@"currentSceneSettings:%@\n", currentSceneSettings];
  }

  return v3;
}

- (BOOL)_car_shouldHorizontallyCenterMapInsets
{
  safeAreaLayoutGuide = [(UIWindow *)self safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  MidX = CGRectGetMidX(v22);
  [(UIWindow *)self frame];
  if (vabdd_f64(MidX, CGRectGetMidX(v23)) > 2.22044605e-16 || ![(UIWindow *)self _car_hybridInstrumentClusterAlignment])
  {
    return 0;
  }

  screen = [(UIWindow *)self screen];
  [screen nativeScale];
  v15 = v14 * v9;

  GEOConfigGetDouble();
  v17 = v16;
  screen2 = [(UIWindow *)self screen];
  [screen2 _car_baselineScaledManeuverPixelWidth];
  v20 = v15 >= v19 * v17;

  return v20;
}

- (unint64_t)_car_hybridInstrumentClusterDisplayLocation
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4 && (-[UIWindow currentSceneSettings](v4, "currentSceneSettings"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 displayLocation], v5, v6 <= 3))
  {
    v7 = qword_101215D58[v6];
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (int64_t)_car_hybridInstrumentClusterLayout
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetInteger();
  }

  else if ([(UIWindow *)self _car_hybridInstrumentClusterAlignmentStyle]== 1 || !GEOConfigGetBOOL())
  {
    return 2;
  }

  else
  {
    safeAreaLayoutGuide = [(UIWindow *)self safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v6 = v5;

    screen = [(UIWindow *)self screen];
    [screen nativeScale];
    v9 = v8 * v6;

    GEOConfigGetDouble();
    v11 = v10;
    GEOConfigGetDouble();
    v13 = v12;
    screen2 = [(UIWindow *)self screen];
    [screen2 _car_baselineScaledManeuverPixelHeight];
    v16 = v15;

    if (v16 <= v11 * v9)
    {
      screen3 = [(UIWindow *)self screen];
      [screen3 _car_baselineScaledManeuverPixelHeight];
      v19 = v9 - v18 / v13;
      screen4 = [(UIWindow *)self screen];
      [screen4 _car_baselineScaledETATrayPixelHeight];
      v22 = v21;

      if (v19 < v22)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 0;
    }
  }
}

- (int64_t)_car_hybridInstrumentClusterAlignmentStyle
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetInteger();
  }

  else
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = selfCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6 && (-[UIWindow currentSceneSettings](v6, "currentSceneSettings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 layoutJustification], v7, v8))
    {
      currentSceneSettings = [(UIWindow *)v6 currentSceneSettings];
      v10 = [currentSceneSettings layoutJustification] != 1;
    }

    else
    {
      safeAreaLayoutGuide = [(UIWindow *)selfCopy safeAreaLayoutGuide];
      [safeAreaLayoutGuide layoutFrame];
      v13 = v12;

      screen = [(UIWindow *)selfCopy screen];
      [screen nativeScale];
      v16 = v15 * v13;

      currentSceneSettings = [(UIWindow *)selfCopy screen];
      [currentSceneSettings _car_baselineScaledManeuverPixelWidth];
      v18 = v17;
      GEOConfigGetDouble();
      v10 = v16 >= v19 * v18;
    }

    return v10;
  }
}

- (int64_t)_car_hybridInstrumentClusterAlignment
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetInteger();
  }

  else
  {
    if (!GEOConfigGetBOOL() || ![(UIWindow *)self _car_hybridInstrumentClusterAlignmentStyle])
    {
      return 0;
    }

    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = selfCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6 && (-[UIWindow currentSceneSettings](v6, "currentSceneSettings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 layoutJustification], v7, v8))
    {
      currentSceneSettings = [(UIWindow *)v6 currentSceneSettings];
      layoutJustification = [currentSceneSettings layoutJustification];
      if (layoutJustification == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (layoutJustification == 3);
      }
    }

    else
    {
      screen = [(UIWindow *)selfCopy screen];
      currentSceneSettings = [screen _car_screenInfo];

      v13 = +[MapsExternalDevice sharedInstance];
      rightHandDrive = [v13 rightHandDrive];

      v15 = [[CPSInstrumentClusterCardLayout alloc] initWithCarScreenInfo:currentSceneSettings isRightHandDrive:rightHandDrive];
      layoutForCard = [v15 layoutForCard];
      if (layoutForCard == 3)
      {
        v11 = 2;
      }

      else
      {
        v11 = layoutForCard == 2;
      }
    }

    return v11;
  }
}

@end