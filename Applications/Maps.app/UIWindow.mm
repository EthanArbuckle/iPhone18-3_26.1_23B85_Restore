@interface UIWindow
- (BOOL)_car_isHybridInstrumentCluster;
- (BOOL)_car_shouldHorizontallyCenterMapInsets;
- (id)_car_debugDescription;
- (int64_t)_car_hybridInstrumentClusterAlignment;
- (int64_t)_car_hybridInstrumentClusterAlignmentStyle;
- (int64_t)_car_hybridInstrumentClusterLayout;
- (unint64_t)_car_hybridInstrumentClusterDisplayLocation;
- (unint64_t)_car_hybridInstrumentClusterPresentationType;
- (void)_maps_registerEventTap:(id)a3;
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
    v4 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [(UIWindow *)v6 currentSceneSettings];

    v8 = [v7 hostedAltScreenPresentationType];
    v9 = 0;
    if (v8 <= 4)
    {
      v9 = qword_101215D30[v8];
    }

    return v9;
  }
}

- (BOOL)_car_isHybridInstrumentCluster
{
  v2 = [(UIWindow *)self windowScene];
  v3 = [v2 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

- (void)_maps_registerEventTap:(id)a3
{
  v4 = a3;
  if ([(UIWindow *)self conformsToProtocol:&OBJC_PROTOCOL___EventSourceHandler])
  {
    [(UIWindow *)self registerEventTap:v4];
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
  v6 = [(UIWindow *)self _car_hybridInstrumentClusterAlignment];
  v7 = @"?";
  v8 = @"?";
  if (v6 <= 2)
  {
    v8 = *(&off_1016552C8 + v6);
  }

  [v3 appendFormat:@"hybridInstrumentClusterAlignment:%@\n", v8];
  v9 = [(UIWindow *)self _car_hybridInstrumentClusterAlignmentStyle];
  v10 = @"Wide";
  if (v9 != 1)
  {
    v10 = @"?";
  }

  if (!v9)
  {
    v10 = @"Narrow";
  }

  [v3 appendFormat:@"hybridInstrumentClusterAlignmentStyle:%@\n", v10];
  v11 = [(UIWindow *)self _car_hybridInstrumentClusterLayout];
  if (v11 <= 2)
  {
    v7 = *(&off_1016552E0 + v11);
  }

  [v3 appendFormat:@"hybridInstrumentClusterLayout:%@\n", v7];
  v12 = [(UIWindow *)self _car_hybridInstrumentClusterPresentationType];
  if (v12 > 2)
  {
    v13 = @"?";
  }

  else
  {
    v13 = *(&off_1016552F8 + v12);
  }

  [v3 appendFormat:@"hybridInstrumentClusterPresentationType:%@\n", v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(UIWindow *)self currentSceneSettings];
    [v3 appendFormat:@"currentSceneSettings:%@\n", v14];
  }

  return v3;
}

- (BOOL)_car_shouldHorizontallyCenterMapInsets
{
  v3 = [(UIWindow *)self safeAreaLayoutGuide];
  [v3 layoutFrame];
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

  v13 = [(UIWindow *)self screen];
  [v13 nativeScale];
  v15 = v14 * v9;

  GEOConfigGetDouble();
  v17 = v16;
  v18 = [(UIWindow *)self screen];
  [v18 _car_baselineScaledManeuverPixelWidth];
  v20 = v15 >= v19 * v17;

  return v20;
}

- (unint64_t)_car_hybridInstrumentClusterDisplayLocation
{
  v2 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
    v4 = [(UIWindow *)self safeAreaLayoutGuide];
    [v4 layoutFrame];
    v6 = v5;

    v7 = [(UIWindow *)self screen];
    [v7 nativeScale];
    v9 = v8 * v6;

    GEOConfigGetDouble();
    v11 = v10;
    GEOConfigGetDouble();
    v13 = v12;
    v14 = [(UIWindow *)self screen];
    [v14 _car_baselineScaledManeuverPixelHeight];
    v16 = v15;

    if (v16 <= v11 * v9)
    {
      v17 = [(UIWindow *)self screen];
      [v17 _car_baselineScaledManeuverPixelHeight];
      v19 = v9 - v18 / v13;
      v20 = [(UIWindow *)self screen];
      [v20 _car_baselineScaledETATrayPixelHeight];
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
    v4 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6 && (-[UIWindow currentSceneSettings](v6, "currentSceneSettings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 layoutJustification], v7, v8))
    {
      v9 = [(UIWindow *)v6 currentSceneSettings];
      v10 = [v9 layoutJustification] != 1;
    }

    else
    {
      v11 = [(UIWindow *)v4 safeAreaLayoutGuide];
      [v11 layoutFrame];
      v13 = v12;

      v14 = [(UIWindow *)v4 screen];
      [v14 nativeScale];
      v16 = v15 * v13;

      v9 = [(UIWindow *)v4 screen];
      [v9 _car_baselineScaledManeuverPixelWidth];
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

    v4 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6 && (-[UIWindow currentSceneSettings](v6, "currentSceneSettings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 layoutJustification], v7, v8))
    {
      v9 = [(UIWindow *)v6 currentSceneSettings];
      v10 = [v9 layoutJustification];
      if (v10 == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (v10 == 3);
      }
    }

    else
    {
      v12 = [(UIWindow *)v4 screen];
      v9 = [v12 _car_screenInfo];

      v13 = +[MapsExternalDevice sharedInstance];
      v14 = [v13 rightHandDrive];

      v15 = [[CPSInstrumentClusterCardLayout alloc] initWithCarScreenInfo:v9 isRightHandDrive:v14];
      v16 = [v15 layoutForCard];
      if (v16 == 3)
      {
        v11 = 2;
      }

      else
      {
        v11 = v16 == 2;
      }
    }

    return v11;
  }
}

@end