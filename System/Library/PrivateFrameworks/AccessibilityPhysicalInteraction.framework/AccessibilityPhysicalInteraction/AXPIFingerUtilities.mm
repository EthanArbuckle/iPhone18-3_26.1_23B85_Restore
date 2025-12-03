@interface AXPIFingerUtilities
+ (BOOL)laserEnabled;
+ (id)_points:(id)_points adjustedForBounds:(CGRect)bounds;
+ (id)defaultLocationsForNumberOfFingers:(unint64_t)fingers aroundPoint:(CGPoint)point withinBounds:(CGRect)bounds;
+ (id)defaultPinchLocationsAroundPoint:(CGPoint)point withinBounds:(CGRect)bounds;
+ (id)fingerModelsForPointStrings:(id)strings;
+ (id)pointStringsForFingerModels:(id)models;
+ (id)pointerAnimationSettings;
+ (id)pointerFiltersForLuminanceLevel:(unint64_t)level;
+ (unint64_t)fingerShapeForCorner:(unint64_t)corner;
+ (void)updateFirstLocation:(CGPoint *)location secondLocation:(CGPoint *)secondLocation forPinchWithRadiusDelta:(double)delta angleDelta:(double)angleDelta;
@end

@implementation AXPIFingerUtilities

+ (id)defaultLocationsForNumberOfFingers:(unint64_t)fingers aroundPoint:(CGPoint)point withinBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = point.y;
  v10 = point.x;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  if (fingers <= 3)
  {
    if (fingers == 2)
    {
      v34 = height;
      v16 = 20.0;
      v17 = 100.0;
      v18 = v10;
      v15 = v9;
    }

    else
    {
      if (fingers != 3)
      {
        goto LABEL_17;
      }

      v34 = height;
      v36.x = v10 + -100.0;
      v36.y = v9 + 20.0;
      v14 = NSStringFromCGPoint(v36);
      [v13 addObject:v14];

      v15 = v9 + -20.0;
      v16 = 40.0;
      v17 = 100.0;
      v18 = v10;
    }

    goto LABEL_16;
  }

  if (fingers == 4)
  {
    v34 = height;
    if (AXDeviceIsPad())
    {
      v40.x = v10 + -100.0;
      v40.y = v9 + 20.0;
      v22 = NSStringFromCGPoint(v40);
      [v13 addObject:v22];

      v41.y = v9 + -40.0;
      v41.x = v10;
      v23 = NSStringFromCGPoint(v41);
      [v13 addObject:v23];

      v18 = v10 + 100.0;
      v15 = v9 + -30.0;
      v16 = 30.0;
      goto LABEL_12;
    }

    v25 = v10 + -80.0;
    v15 = v9 + 10.0;
LABEL_15:
    v26 = v15;
    v27 = NSStringFromCGPoint(*&v25);
    [v13 addObject:v27];

    v43.y = v9 + -10.0;
    v43.x = v10;
    v28 = NSStringFromCGPoint(v43);
    [v13 addObject:v28];

    v18 = v10 + 80.0;
    v16 = 50.0;
    v17 = 160.0;
    goto LABEL_16;
  }

  if (fingers != 5)
  {
    goto LABEL_17;
  }

  v34 = height;
  if (!AXDeviceIsPad())
  {
    v42.y = v9 + 200.0;
    v42.x = v10 + -80.0;
    v24 = NSStringFromCGPoint(v42);
    [v13 addObject:v24];

    v15 = v9 + 10.0;
    v25 = v10 + -80.0;
    goto LABEL_15;
  }

  v37.x = v10 + -120.0;
  v37.y = v9 + 300.0;
  v19 = NSStringFromCGPoint(v37);
  [v13 addObject:v19];

  v38.x = v10 + -100.0;
  v38.y = v9 + 20.0;
  v20 = NSStringFromCGPoint(v38);
  [v13 addObject:v20];

  v39.y = v9 + -20.0;
  v39.x = v10;
  v21 = NSStringFromCGPoint(v39);
  [v13 addObject:v21];

  v18 = v10 + 100.0;
  v15 = v9 + 40.0;
  v16 = 120.0;
LABEL_12:
  v17 = 220.0;
LABEL_16:
  v29 = v15;
  v30 = NSStringFromCGPoint(*&v18);
  [v13 addObject:v30];

  v10 = v10 + v17;
  v9 = v9 + v16;
  height = v34;
LABEL_17:
  v44.x = v10;
  v44.y = v9;
  v31 = NSStringFromCGPoint(v44);
  [v13 addObject:v31];

  v32 = [self _points:v13 adjustedForBounds:{x, y, width, height}];

  return v32;
}

+ (id)defaultPinchLocationsAroundPoint:(CGPoint)point withinBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = point.y;
  v9 = point.x;
  array = [MEMORY[0x277CBEB18] array];
  if (AXDeviceIsPad())
  {
    v12 = 75.0;
  }

  else
  {
    v12 = 45.0;
  }

  v13 = v9 - v12;
  if (AXDeviceIsPad())
  {
    v14 = 75.0;
  }

  else
  {
    v14 = 45.0;
  }

  v15 = v8 + v14;
  v24.x = v13;
  v24.y = v15;
  v16 = NSStringFromCGPoint(v24);
  [array addObject:v16];

  if (AXDeviceIsPad())
  {
    v17 = 150.0;
  }

  else
  {
    v17 = 90.0;
  }

  v18 = v13 + v17;
  if (AXDeviceIsPad())
  {
    v19 = 150.0;
  }

  else
  {
    v19 = 90.0;
  }

  v25.y = v15 - v19;
  v25.x = v18;
  v20 = NSStringFromCGPoint(v25);
  [array addObject:v20];

  v21 = [self _points:array adjustedForBounds:{x, y, width, height}];

  return v21;
}

+ (void)updateFirstLocation:(CGPoint *)location secondLocation:(CGPoint *)secondLocation forPinchWithRadiusDelta:(double)delta angleDelta:(double)angleDelta
{
  x = location->x;
  y = location->y;
  AX_CGPointGetMidpointToPoint();
  v13 = v12;
  v15 = v14;
  AX_CGPointGetDistanceToPoint();
  v17 = v16 + delta;
  v18 = atan2(y - v15, x - v13) + angleDelta;
  v19 = __sincos_stret(v18);
  v20 = __sincos_stret(v18 + 3.14159265);
  location->x = v13 + v17 * v19.__cosval;
  location->y = v15 + v17 * v19.__sinval;
  secondLocation->x = v13 + v17 * v20.__cosval;
  secondLocation->y = v15 + v17 * v20.__sinval;
}

+ (id)fingerModelsForPointStrings:(id)strings
{
  v18 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(stringsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = stringsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = CGPointFromString(*(*(&v13 + 1) + 8 * i));
        v11 = [AXPIFingerModel fingerModelForLocation:v10.x, v10.y, v13];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)pointStringsForFingerModels:(id)models
{
  v17 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(modelsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = modelsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * i) location];
        v10 = NSStringFromCGPoint(v19);
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)_points:(id)_points adjustedForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v48 = *MEMORY[0x277D85DE8];
  _pointsCopy = _points;
  v50.origin.x = x;
  v50.origin.y = y;
  v35 = width;
  v36 = height;
  v50.size.width = width;
  v50.size.height = height;
  if (!CGRectEqualToRect(v50, *MEMORY[0x277CBF3A0]))
  {
    v10 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = _pointsCopy;
    v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
    v33 = v9;
    v34 = v10;
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          v37 = v9;
          if (*v43 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = CGPointFromString(*(*(&v42 + 1) + 8 * i));
          v51.origin.x = x;
          v51.origin.y = y;
          v51.size.width = v35;
          v51.size.height = v36;
          MinX = CGRectGetMinX(v51);
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = v35;
          v52.size.height = v36;
          MaxX = CGRectGetMaxX(v52);
          v53.origin.x = x;
          v53.origin.y = y;
          v53.size.width = v35;
          v53.size.height = v36;
          MinY = CGRectGetMinY(v53);
          v54.origin.x = x;
          v54.origin.y = y;
          v54.size.width = v35;
          v54.size.height = v36;
          MaxY = CGRectGetMaxY(v54);
          v21 = MaxX - v16.x;
          if (v10 + v16.x <= MaxX)
          {
            v21 = v10;
          }

          if (v10 + v16.x < MinX)
          {
            v10 = MinX - v16.x;
          }

          else
          {
            v10 = v21;
          }

          v9 = v37;
          v22 = v37 + v16.y;
          if (v37 + v16.y >= MinY)
          {
            if (v22 > MaxY)
            {
              v9 = MaxY - v16.y;
            }
          }

          else
          {
            v9 = MinY - v16.y;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:{16, MaxY, v22}];
      }

      while (v13);
    }

    if (v10 == v34 && v9 == v33)
    {
      _pointsCopy = v11;
    }

    else
    {
      _pointsCopy = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = v11;
      v25 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v39;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = CGPointFromString(*(*(&v38 + 1) + 8 * j));
            v49.x = v10 + v29.x;
            v49.y = v9 + v29.y;
            v30 = NSStringFromCGPoint(v49);
            [_pointsCopy addObject:v30];
          }

          v26 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v26);
      }
    }
  }

  v31 = _pointsCopy;

  return _pointsCopy;
}

+ (unint64_t)fingerShapeForCorner:(unint64_t)corner
{
  if (corner - 1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_23D75AC80[corner - 1];
  }
}

+ (BOOL)laserEnabled
{
  if (laserEnabled_onceToken != -1)
  {
    +[AXPIFingerUtilities laserEnabled];
  }

  return laserEnabled__LaserEnabled;
}

void __35__AXPIFingerUtilities_laserEnabled__block_invoke()
{
  v0 = [MEMORY[0x277CE7E18] sharedInstance];
  laserEnabled__LaserEnabled = [v0 laserEnabled];
}

+ (id)pointerFiltersForLuminanceLevel:(unint64_t)level
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  v4 = PSPointerVibrantColorMatrixForLuminance();
  [v3 setValue:v4 forKey:*MEMORY[0x277CDA440]];
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

+ (id)pointerAnimationSettings
{
  if (pointerAnimationSettings_onceToken != -1)
  {
    +[AXPIFingerUtilities pointerAnimationSettings];
  }

  v3 = pointerAnimationSettings__PointerAnimationSettings;

  return v3;
}

uint64_t __47__AXPIFingerUtilities_pointerAnimationSettings__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  v1 = pointerAnimationSettings__PointerAnimationSettings;
  pointerAnimationSettings__PointerAnimationSettings = v0;

  [pointerAnimationSettings__PointerAnimationSettings setDampingRatio:1.0];
  v2 = pointerAnimationSettings__PointerAnimationSettings;

  return [v2 setResponse:0.15];
}

@end