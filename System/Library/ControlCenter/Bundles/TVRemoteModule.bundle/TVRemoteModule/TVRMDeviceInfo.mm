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
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

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

    currentDevice2 = [MEMORY[0x29EDC7A58] currentDevice];
    if ([currentDevice2 userInterfaceIdiom])
    {
    }

    else
    {
      mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
      [mainScreen bounds];
      v20 = v19;

      mainScreen2 = [MEMORY[0x29EDC7C40] mainScreen];
      [mainScreen2 bounds];
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

    currentDevice3 = [MEMORY[0x29EDC7A58] currentDevice];
    if ([currentDevice3 userInterfaceIdiom])
    {
    }

    else
    {
      mainScreen3 = [MEMORY[0x29EDC7C40] mainScreen];
      [mainScreen3 bounds];
      v26 = v25;

      mainScreen4 = [MEMORY[0x29EDC7C40] mainScreen];
      [mainScreen4 bounds];
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
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

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
  v3 = MEMORY[0x29EDC80C8];
  v4 = *MEMORY[0x29EDC80C8];
  v5 = *(MEMORY[0x29EDC80C8] + 16);
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
  }

  else
  {
    needsLandscapeOrientationForCurrentDevice = [self needsLandscapeOrientationForCurrentDevice];

    v8 = 27.0;
    if ((needsLandscapeOrientationForCurrentDevice & 1) == 0)
    {
      v9 = 27.0;
      goto LABEL_9;
    }
  }

  v9 = *(v3 + 8);
  v10 = *(v3 + 24);
  currentDevice2 = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v5 = 27.0;
    v8 = 27.0;
  }

  else
  {
    v8 = v10;
  }

  if (userInterfaceIdiom == 1)
  {
    v4 = 27.0;
  }

LABEL_9:
  v13 = v4;
  v14 = v9;
  v15 = v5;
  result.right = v8;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
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
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v11 = v6 > v7 && userInterfaceIdiom == 0;

  return v11;
}

+ (BOOL)needsCompactLayoutForCurrentDevice
{
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    v3 = 0;
  }

  else
  {
    mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
    [mainScreen bounds];
    v6 = v5;

    mainScreen2 = [MEMORY[0x29EDC7C40] mainScreen];
    [mainScreen2 bounds];
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
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {

    MEMORY[0x2A1C5FAB8]();
  }

  else if (+[TVRMDeviceInfo deviceHasRoundedCorners])
  {
    mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
    traitCollection = [mainScreen traitCollection];
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