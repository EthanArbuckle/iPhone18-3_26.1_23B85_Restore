@interface TVRMDeviceInfo
+ (BOOL)needsCompactLayoutForCurrentDevice;
+ (BOOL)needsLandscapeOrientationForCurrentDevice;
+ (UIEdgeInsets)contentEdgeInsets;
+ (double)expandedRoundedCornerRadius;
+ (double)heightForCurrentDeviceWithOrientation:(int64_t)orientation;
+ (double)widthForCurrentDevice;
@end

@implementation TVRMDeviceInfo

+ (double)heightForCurrentDeviceWithOrientation:(int64_t)orientation
{
  CCUIScreenBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v13 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    if ((orientation - 1) >= 2)
    {
      v34.origin.x = v6;
      v34.origin.y = v8;
      v34.size.width = v10;
      v34.size.height = v12;
      return fmin(CGRectGetHeight(v34) + -128.0, 682.0);
    }

    else
    {
      return 682.0;
    }
  }

  else
  {
    if ([self needsLandscapeOrientationForCurrentDevice])
    {
      v33.origin.x = v6;
      v33.origin.y = v8;
      v33.size.width = v10;
      v33.size.height = v12;
      return CGRectGetHeight(v33) + -54.0;
    }

    v16 = +[UIDevice currentDevice];
    if ([v16 userInterfaceIdiom])
    {
    }

    else
    {
      v18 = +[UIScreen mainScreen];
      [v18 bounds];
      v20 = v19;

      v21 = +[UIScreen mainScreen];
      [v21 bounds];
      v23 = v22;

      if (v20 < v23)
      {
        v20 = v23;
      }

      if (v20 == 812.0)
      {
        return 539.0;
      }
    }

    v17 = +[UIDevice currentDevice];
    if ([v17 userInterfaceIdiom])
    {
    }

    else
    {
      v24 = +[UIScreen mainScreen];
      [v24 bounds];
      v26 = v25;

      v27 = +[UIScreen mainScreen];
      [v27 bounds];
      v29 = v28;

      if (v26 < v29)
      {
        v26 = v29;
      }

      if (v26 > 812.0)
      {
        return 682.0;
      }
    }

    needsCompactLayoutForCurrentDevice = [self needsCompactLayoutForCurrentDevice];
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    Height = CGRectGetHeight(v35);
    v32 = Height + -128.0;
    result = Height + -96.0;
    if (!needsCompactLayoutForCurrentDevice)
    {
      return v32;
    }
  }

  return result;
}

+ (double)widthForCurrentDevice
{
  CCUIScreenBounds();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v11 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 360.0;
  }

  needsLandscapeOrientationForCurrentDevice = [self needsLandscapeOrientationForCurrentDevice];
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  result = CGRectGetWidth(v15);
  if (needsLandscapeOrientationForCurrentDevice)
  {
    return result + -128.0;
  }

  return result;
}

+ (UIEdgeInsets)contentEdgeInsets
{
  top = UIEdgeInsetsZero.top;
  bottom = UIEdgeInsetsZero.bottom;
  v5 = +[UIDevice currentDevice];
  if ([v5 userInterfaceIdiom])
  {
  }

  else
  {
    needsLandscapeOrientationForCurrentDevice = [self needsLandscapeOrientationForCurrentDevice];

    v7 = 27.0;
    if ((needsLandscapeOrientationForCurrentDevice & 1) == 0)
    {
      left = 27.0;
      goto LABEL_9;
    }
  }

  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v10 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v10 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    bottom = 27.0;
    v7 = 27.0;
  }

  else
  {
    v7 = right;
  }

  if (userInterfaceIdiom == 1)
  {
    top = 27.0;
  }

LABEL_9:
  v12 = top;
  v13 = left;
  v14 = bottom;
  result.right = v7;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

+ (BOOL)needsLandscapeOrientationForCurrentDevice
{
  CCUIScreenBounds();
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v6 = CGRectGetWidth(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v7 = CGRectGetHeight(v14);
  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];
  v11 = v6 > v7 && userInterfaceIdiom == 0;

  return v11;
}

+ (BOOL)needsCompactLayoutForCurrentDevice
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom])
  {
    v3 = 0;
  }

  else
  {
    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    v6 = v5;

    v7 = +[UIScreen mainScreen];
    [v7 bounds];
    v9 = v8;

    if (v6 >= v9)
    {
      v10 = v6;
    }

    else
    {
      v10 = v9;
    }

    v3 = v10 == 568.0;
  }

  return v3;
}

+ (double)expandedRoundedCornerRadius
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {

    _CCUIExpandedModuleContinuousCornerRadius();
  }

  else if (+[TVRMDeviceInfo deviceHasRoundedCorners])
  {
    v4 = +[UIScreen mainScreen];
    traitCollection = [v4 traitCollection];
    [traitCollection displayCornerRadius];
    v7 = v6;

    return v7;
  }

  else
  {
    return 0.0;
  }

  return result;
}

@end