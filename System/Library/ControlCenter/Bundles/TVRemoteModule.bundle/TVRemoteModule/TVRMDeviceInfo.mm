@interface TVRMDeviceInfo
+ (BOOL)needsCompactLayoutForCurrentDevice;
+ (BOOL)needsLandscapeOrientationForCurrentDevice;
+ (UIEdgeInsets)contentEdgeInsets;
+ (double)expandedRoundedCornerRadius;
+ (double)heightForCurrentDeviceWithOrientation:(int64_t)a3;
+ (double)widthForCurrentDevice;
@end

@implementation TVRMDeviceInfo

+ (double)heightForCurrentDeviceWithOrientation:(int64_t)a3
{
  CCUIScreenBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [MEMORY[0x29EDC7A58] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14)
  {
    if ((a3 - 1) >= 2)
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
    if ([a1 needsLandscapeOrientationForCurrentDevice])
    {
      v33.origin.x = v6;
      v33.origin.y = v8;
      v33.size.width = v10;
      v33.size.height = v12;
      return CGRectGetHeight(v33) + -54.0;
    }

    v16 = [MEMORY[0x29EDC7A58] currentDevice];
    if ([v16 userInterfaceIdiom])
    {
    }

    else
    {
      v18 = [MEMORY[0x29EDC7C40] mainScreen];
      [v18 bounds];
      v20 = v19;

      v21 = [MEMORY[0x29EDC7C40] mainScreen];
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

    v17 = [MEMORY[0x29EDC7A58] currentDevice];
    if ([v17 userInterfaceIdiom])
    {
    }

    else
    {
      v24 = [MEMORY[0x29EDC7C40] mainScreen];
      [v24 bounds];
      v26 = v25;

      v27 = [MEMORY[0x29EDC7C40] mainScreen];
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

    v30 = [a1 needsCompactLayoutForCurrentDevice];
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    Height = CGRectGetHeight(v35);
    v32 = Height + -128.0;
    result = Height + -96.0;
    if (!v30)
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
  v11 = [MEMORY[0x29EDC7A58] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12)
  {
    return 360.0;
  }

  v14 = [a1 needsLandscapeOrientationForCurrentDevice];
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  result = CGRectGetWidth(v15);
  if (v14)
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
  v6 = [MEMORY[0x29EDC7A58] currentDevice];
  if ([v6 userInterfaceIdiom])
  {
  }

  else
  {
    v7 = [a1 needsLandscapeOrientationForCurrentDevice];

    v8 = 27.0;
    if ((v7 & 1) == 0)
    {
      v9 = 27.0;
      goto LABEL_9;
    }
  }

  v9 = *(v3 + 8);
  v10 = *(v3 + 24);
  v11 = [MEMORY[0x29EDC7A58] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    v5 = 27.0;
    v8 = 27.0;
  }

  else
  {
    v8 = v10;
  }

  if (v12 == 1)
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
  v8 = [MEMORY[0x29EDC7A58] currentDevice];
  v9 = [v8 userInterfaceIdiom];
  v11 = v6 > v7 && v9 == 0;

  return v11;
}

+ (BOOL)needsCompactLayoutForCurrentDevice
{
  v2 = [MEMORY[0x29EDC7A58] currentDevice];
  if ([v2 userInterfaceIdiom])
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x29EDC7C40] mainScreen];
    [v4 bounds];
    v6 = v5;

    v7 = [MEMORY[0x29EDC7C40] mainScreen];
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
  v2 = [MEMORY[0x29EDC7A58] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {

    MEMORY[0x2A1C5FAB8]();
  }

  else if (+[TVRMDeviceInfo deviceHasRoundedCorners])
  {
    v4 = [MEMORY[0x29EDC7C40] mainScreen];
    v5 = [v4 traitCollection];
    [v5 displayCornerRadius];
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