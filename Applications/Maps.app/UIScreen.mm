@interface UIScreen
- (BOOL)_car_hasDebugPhysicalSizeOverride;
- (BOOL)_car_hasScreenInfo;
- (CARScreenInfo)_car_screenInfo;
- (CGSize)_car_physicalSize;
- (CGSize)_car_pixelSize;
- (double)_car_baselineETATrayPointHeight;
- (double)_car_baselineManeuverPointHeight;
- (double)_car_baselineManeuverPointWidth;
- (double)_car_baselinePixelSize;
- (double)_car_baselineScaledETATrayPixelHeight;
- (double)_car_baselineScaledManeuverPixelHeight;
- (double)_car_baselineScaledManeuverPixelWidth;
- (double)_car_dynamicPixelScaleValue;
- (double)_car_dynamicPointScaleValue;
- (double)_car_physicalPixelSize;
- (double)_car_physicalPointSize;
- (id)_car_debugDescription;
@end

@implementation UIScreen

- (id)_car_debugDescription
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"%@:%p\n", objc_opt_class(), self];
  [(UIScreen *)self _car_physicalPixelSize];
  [v3 appendFormat:@"physicalPixelSize:%f\n", v4];
  [(UIScreen *)self _car_physicalPointSize];
  [v3 appendFormat:@"physicalPointSize:%f\n", v5];
  [(UIScreen *)self _car_dynamicPixelScaleValue];
  [v3 appendFormat:@"dynamicPixelScaleValue:%f\n", v6];
  [(UIScreen *)self _car_dynamicPointScaleValue];
  [v3 appendFormat:@"dynamicPointScaleValue:%f\n", v7];
  _car_screenInfo = [(UIScreen *)self _car_screenInfo];
  [v3 appendFormat:@"screenInfo:%@\n", _car_screenInfo];

  [(UIScreen *)self scale];
  [v3 appendFormat:@"scale:%f\n", v9];
  [(UIScreen *)self nativeScale];
  [v3 appendFormat:@"nativeScale:%f\n", v10];
  [(UIScreen *)self _car_physicalSize];
  v11 = NSStringFromCGSize(v25);
  [v3 appendFormat:@"physicalSize:%@\n", v11];

  [(UIScreen *)self _car_pixelSize];
  v12 = NSStringFromCGSize(v26);
  [v3 appendFormat:@"pixelSize:%@\n", v12];

  [(UIScreen *)self _car_baselinePixelSize];
  [v3 appendFormat:@"baselinePixelSize:%f\n", v13];
  [(UIScreen *)self _car_baselineManeuverPixelWidth];
  [v3 appendFormat:@"baselineManeuverPixelWidth:%f\n", v14];
  [(UIScreen *)self _car_baselineManeuverPixelHeight];
  [v3 appendFormat:@"baselineManeuverPixelHeight:%f\n", v15];
  [(UIScreen *)self _car_baselineETATrayPixelHeight];
  [v3 appendFormat:@"baselineETATrayPixelHeight:%f\n", v16];
  [(UIScreen *)self _car_baselineManeuverPointWidth];
  [v3 appendFormat:@"baselineManeuverPointWidth:%f\n", v17];
  [(UIScreen *)self _car_baselineManeuverPointHeight];
  [v3 appendFormat:@"baselineManeuverPointHeight:%f\n", v18];
  [(UIScreen *)self _car_baselineETATrayPointHeight];
  [v3 appendFormat:@"baselineETATrayPointHeight:%f\n", v19];
  [(UIScreen *)self _car_baselineScaledManeuverPixelWidth];
  [v3 appendFormat:@"baselineScaledManeuverPixelWidth:%f\n", v20];
  [(UIScreen *)self _car_baselineScaledManeuverPixelHeight];
  [v3 appendFormat:@"baselineScaledManeuverPixelHeight:%f\n", v21];
  [(UIScreen *)self _car_baselineScaledETATrayPixelHeight];
  [v3 appendFormat:@"baselineScaledETATrayPixelHeight:%f\n", v22];

  return v3;
}

- (double)_car_baselineScaledETATrayPixelHeight
{
  [(UIScreen *)self _car_baselineETATrayPixelHeight];
  v4 = v3;
  [(UIScreen *)self _car_dynamicPixelScaleValue];
  return v5 * v4;
}

- (double)_car_baselineScaledManeuverPixelHeight
{
  [(UIScreen *)self _car_baselineManeuverPixelHeight];
  v4 = v3;
  [(UIScreen *)self _car_dynamicPixelScaleValue];
  return v5 * v4;
}

- (double)_car_baselineScaledManeuverPixelWidth
{
  [(UIScreen *)self _car_baselineManeuverPixelWidth];
  v4 = v3;
  [(UIScreen *)self _car_dynamicPixelScaleValue];
  return v5 * v4;
}

- (double)_car_baselineETATrayPointHeight
{
  GEOConfigGetDouble();
  v3 = v2;
  GEOConfigGetDouble();
  return v3 / v4;
}

- (double)_car_baselineManeuverPointHeight
{
  GEOConfigGetDouble();
  v3 = v2;
  GEOConfigGetDouble();
  return v3 / v4;
}

- (double)_car_baselineManeuverPointWidth
{
  GEOConfigGetDouble();
  v3 = v2;
  GEOConfigGetDouble();
  return v3 / v4;
}

- (double)_car_baselinePixelSize
{
  GEOConfigGetDouble();
  v3 = v2;
  GEOConfigGetDouble();
  return v3 / v4;
}

- (BOOL)_car_hasDebugPhysicalSizeOverride
{
  if (_GEOConfigHasValue())
  {
    return 1;
  }

  return _GEOConfigHasValue();
}

- (BOOL)_car_hasScreenInfo
{
  _car_screenInfo = [(UIScreen *)self _car_screenInfo];
  v3 = _car_screenInfo != 0;

  return v3;
}

- (CGSize)_car_physicalSize
{
  _car_screenInfo = [(UIScreen *)self _car_screenInfo];
  [_car_screenInfo physicalSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_car_pixelSize
{
  _car_screenInfo = [(UIScreen *)self _car_screenInfo];
  [_car_screenInfo pixelSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CARScreenInfo)_car_screenInfo
{
  v3 = +[CarDisplayController sharedInstance];
  connectedCarScreenInfos = [v3 connectedCarScreenInfos];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100979A8C;
  v14[3] = &unk_10165FE40;
  v14[4] = self;
  v5 = sub_100030774(connectedCarScreenInfos, v14);

  if (v5 && [(UIScreen *)self _isCarInstrumentsScreen]&& [(UIScreen *)self _car_hasDebugPhysicalSizeOverride])
  {
    [v5 physicalSize];
    v7 = v6;
    v9 = v8;
    if (_GEOConfigHasValue())
    {
      GEOConfigGetDouble();
      v7 = v10;
    }

    if (_GEOConfigHasValue())
    {
      GEOConfigGetDouble();
      v9 = v11;
    }

    v12 = [NSValue valueWithCGSize:v7, v9];
    [v5 setValue:v12 forKey:@"_physicalSize"];
  }

  return v5;
}

- (double)_car_dynamicPointScaleValue
{
  v4 = objc_getAssociatedObject(self, a2);
  v5 = v4;
  if (v4)
  {
    [v4 cgFloatValue];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
    if ([(UIScreen *)self _car_hasScreenInfo]&& GEOConfigGetBOOL())
    {
      if (_GEOConfigHasValue())
      {
        GEOConfigGetDouble();
        v7 = v8;
      }

      else
      {
        [(UIScreen *)self _car_physicalPixelSize];
        v10 = v9;
        if (fabs(v9) <= 2.22044605e-16)
        {
          goto LABEL_10;
        }

        [(UIScreen *)self _car_baselinePixelSize];
        v12 = v11;
        [(UIScreen *)self _car_baselineManeuverPixelHeight];
        v14 = v13 * v12;
        [(UIScreen *)self _car_baselineManeuverPointHeight];
        v16 = v15;
        [(UIScreen *)self nativeScale];
        v7 = v14 / (v16 * v10 * v17);
      }

      v18 = [NSNumber numberWithDouble:v7];
      objc_setAssociatedObject(self, a2, v18, 1);
    }
  }

LABEL_10:

  return v7;
}

- (double)_car_dynamicPixelScaleValue
{
  v4 = objc_getAssociatedObject(self, a2);
  v5 = v4;
  if (v4)
  {
    [v4 cgFloatValue];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
    if ([(UIScreen *)self _car_hasScreenInfo]&& GEOConfigGetBOOL())
    {
      if (_GEOConfigHasValue())
      {
        GEOConfigGetDouble();
        v7 = v8;
      }

      else
      {
        [(UIScreen *)self _car_physicalPixelSize];
        v10 = v9;
        if (fabs(v9) <= 2.22044605e-16)
        {
          goto LABEL_10;
        }

        [(UIScreen *)self _car_baselinePixelSize];
        v7 = v11 / v10;
      }

      v12 = [NSNumber numberWithDouble:v7];
      objc_setAssociatedObject(self, a2, v12, 1);
    }
  }

LABEL_10:

  return v7;
}

- (double)_car_physicalPointSize
{
  [(UIScreen *)self nativeScale];
  v4 = v3;
  [(UIScreen *)self _car_physicalPixelSize];
  return v5 * v4;
}

- (double)_car_physicalPixelSize
{
  v4 = objc_getAssociatedObject(self, a2);
  v5 = v4;
  if (v4)
  {
    [v4 cgFloatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
    if ([(UIScreen *)self _car_hasScreenInfo])
    {
      [(UIScreen *)self _car_physicalSize];
      v9 = v8;
      [(UIScreen *)self _car_pixelSize];
      v7 = v9 / v10;
      v11 = [NSNumber numberWithDouble:v7];
      objc_setAssociatedObject(self, a2, v11, 1);
    }
  }

  return v7;
}

@end