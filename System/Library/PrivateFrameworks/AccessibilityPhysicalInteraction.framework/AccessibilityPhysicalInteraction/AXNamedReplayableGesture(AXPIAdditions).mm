@interface AXNamedReplayableGesture(AXPIAdditions)
+ (id)_pinchGestureWithCenter:()AXPIAdditions bounds:radiusDelta:angleDelta:startingWidth:;
+ (id)_tapGestureAtPoint:()AXPIAdditions isDoubleTap:numberOfFingers:force:;
+ (id)flickGestureStartingAtPoint:()AXPIAdditions endingAtPoint:numberOfFingers:;
+ (id)forceTouchGestureAtPoint:()AXPIAdditions;
+ (id)holdGestureAtPoint:()AXPIAdditions withDuration:numberOfFingers:;
+ (id)lineGestureBetweenPoints:()AXPIAdditions duration:numberOfFingers:initialHoldDuration:;
+ (id)scrollGestureFromPoint:()AXPIAdditions toPoint:duration:;
+ (uint64_t)flickGestureAtPoint:()AXPIAdditions angle:numberOfFingers:;
+ (void)_addAllFingerPointsForPoint:()AXPIAdditions numberOfFingers:toReplayableGesture:atTime:;
+ (void)_addFingerPoints:()AXPIAdditions toReplayableGesture:atTime:;
@end

@implementation AXNamedReplayableGesture(AXPIAdditions)

+ (id)_tapGestureAtPoint:()AXPIAdditions isDoubleTap:numberOfFingers:force:
{
  v9 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:a7 aroundPoint:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__AXNamedReplayableGesture_AXPIAdditions___tapGestureAtPoint_isDoubleTap_numberOfFingers_force___block_invoke;
  v16[3] = &unk_278BE6700;
  v12 = dictionary;
  v17 = v12;
  v13 = dictionary2;
  v18 = v13;
  v19 = a3;
  [v9 enumerateObjectsUsingBlock:v16];
  v14 = objc_alloc_init(objc_opt_class());
  [v14 addPointsByFingerIdentifier:v12 forces:v13 atTime:0.0];
  [v14 addPointsByFingerIdentifier:MEMORY[0x277CBEC10] forces:MEMORY[0x277CBEC10] atTime:0.1];
  if (a6)
  {
    [v14 addPointsByFingerIdentifier:v12 forces:v13 atTime:0.15];
    [v14 addPointsByFingerIdentifier:MEMORY[0x277CBEC10] forces:MEMORY[0x277CBEC10] atTime:0.25];
  }

  return v14;
}

+ (id)holdGestureAtPoint:()AXPIAdditions withDuration:numberOfFingers:
{
  v4 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:"defaultLocationsForNumberOfFingers:aroundPoint:" aroundPoint:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __91__AXNamedReplayableGesture_AXPIAdditions__holdGestureAtPoint_withDuration_numberOfFingers___block_invoke;
  v14 = &unk_278BE6728;
  v15 = dictionary;
  v16 = dictionary2;
  v7 = dictionary2;
  v8 = dictionary;
  [v4 enumerateObjectsUsingBlock:&v11];
  v9 = objc_alloc_init(objc_opt_class());
  [v9 addPointsByFingerIdentifier:v8 forces:v7 atTime:{0.0, v11, v12, v13, v14}];
  [v9 addPointsByFingerIdentifier:MEMORY[0x277CBEC10] forces:MEMORY[0x277CBEC10] atTime:a3];

  return v9;
}

+ (uint64_t)flickGestureAtPoint:()AXPIAdditions angle:numberOfFingers:
{
  v10 = __sincos_stret(a4);

  return [self flickGestureStartingAtPoint:a6 endingAtPoint:a2 numberOfFingers:{a3, a2 + v10.__cosval * 100.0, a3 + v10.__sinval * 100.0}];
}

+ (id)flickGestureStartingAtPoint:()AXPIAdditions endingAtPoint:numberOfFingers:
{
  v16[2] = *MEMORY[0x277D85DE8];
  v11 = NSStringFromCGPoint(*&a2);
  v16[0] = v11;
  v18.x = a4;
  v18.y = a5;
  v12 = NSStringFromCGPoint(v18);
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v14 = [self lineGestureBetweenPoints:v13 duration:a7 numberOfFingers:0.1];

  return v14;
}

+ (id)lineGestureBetweenPoints:()AXPIAdditions duration:numberOfFingers:initialHoldDuration:
{
  v8 = a5;
  v9 = [v8 count];
  v10 = 0.0;
  if (v9 >= 2)
  {
    for (i = 1; i != v9; ++i)
    {
      v12 = [v8 objectAtIndex:i - 1];
      CGPointFromString(v12);

      v13 = [v8 objectAtIndex:i];
      CGPointFromString(v13);

      AX_CGPointGetDistanceToPoint();
      v10 = v10 + v14;
    }
  }

  v15 = ceil(v10 / 20.0);
  if (vcvtpd_u64_f64(v10 / 20.0) && a2 / v15 > 0.05)
  {
    v15 = ceil(a2 / 0.05);
  }

  v16 = objc_alloc_init(objc_opt_class());
  if (v9 >= 2)
  {
    v17 = 1;
    v18 = 0.0;
    v35 = v10 / v15;
    v36 = v10;
    do
    {
      v40 = v18;
      v19 = a3;
      if (v17 != 1)
      {
        v19 = 0.0;
      }

      v39 = v19;
      v20 = [v8 objectAtIndex:{v17 - 1, *&v35}];
      v21 = CGPointFromString(v20);

      v22 = [v8 objectAtIndex:v17];
      CGPointFromString(v22);

      AX_CGPointGetDistanceToPoint();
      v24 = vcvtpd_u64_f64(v23 / v35);
      v25 = v23 / v10 * a2;
      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          AX_CGPointGetOffsetAlongVectorWithDistance();
          v28 = v21.x + v27;
          v30 = v21.y + v29;
          v31 = v40 + j / v24 * v25;
          if (j)
          {
            v31 = v39 + v31;
          }

          [self _addAllFingerPointsForPoint:a6 numberOfFingers:v16 toReplayableGesture:v28 atTime:{v30, v31}];
        }
      }

      v18 = v40 + v39 + v25;
      ++v17;
      v10 = v36;
    }

    while (v17 != v9);
  }

  lastObject = [v8 lastObject];
  v33 = CGPointFromString(lastObject);

  [self _addAllFingerPointsForPoint:a6 numberOfFingers:v16 toReplayableGesture:v33.x atTime:{v33.y, a2 + a3}];

  return v16;
}

+ (id)scrollGestureFromPoint:()AXPIAdditions toPoint:duration:
{
  v11 = a2 < a4;
  if (a3 != a5)
  {
    v11 = a3 < a5;
  }

  v12 = -0.5;
  if (v11)
  {
    v13 = 0.5;
  }

  else
  {
    v13 = -0.5;
  }

  if (!v11)
  {
    v12 = 0.5;
  }

  v14 = a3 == a5;
  if (a3 == a5)
  {
    v15 = a4;
  }

  else
  {
    v15 = a5;
  }

  v16 = v15 + v13;
  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = a4 + 1.0;
  }

  if (v14)
  {
    v18 = a5 + 1.0;
  }

  else
  {
    v18 = v16;
  }

  v19 = v15 + v12;
  if (v14)
  {
    v20 = v19;
  }

  else
  {
    v20 = a4 + -1.0;
  }

  if (v14)
  {
    v21 = a5 + -1.0;
  }

  else
  {
    v21 = v19;
  }

  array = [MEMORY[0x277CBEB18] array];
  v32.x = a2;
  v32.y = a3;
  v23 = NSStringFromPoint(v32);
  [array addObject:v23];

  v33.x = v17;
  v33.y = v18;
  v24 = NSStringFromPoint(v33);
  [array addObject:v24];

  v34.x = v20;
  v34.y = v21;
  v25 = NSStringFromPoint(v34);
  [array addObject:v25];

  v35.x = a4;
  v35.y = a5;
  v26 = NSStringFromPoint(v35);
  [array addObject:v26];

  v36.x = a4;
  v36.y = a5;
  v27 = NSStringFromPoint(v36);
  [array addObject:v27];

  v28 = [self lineGestureBetweenPoints:array duration:a6];

  return v28;
}

+ (id)forceTouchGestureAtPoint:()AXPIAdditions
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(objc_opt_class());
  AXForceTouchThreshold();
  v6 = v5;
  v18 = &unk_284FC7880;
  v7 = [MEMORY[0x277CCAE60] valueWithCGPoint:{self, a2}];
  v19[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v9 = MEMORY[0x277CE7BE8];
  v10 = *MEMORY[0x277CE7BE8];
  if (*MEMORY[0x277CE7BE8] > 0.0)
  {
    v11 = 0.0;
    v12 = MEMORY[0x277CE7BF0];
    do
    {
      v16 = &unk_284FC7880;
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v6 * v11 / v10];
      v17 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

      [v4 addPointsByFingerIdentifier:v8 forces:v14 atTime:v11];
      v11 = v11 + *v12;
      v10 = *v9;
    }

    while (v11 < *v9);
  }

  [v4 addPointsByFingerIdentifier:MEMORY[0x277CBEC10] forces:MEMORY[0x277CBEC10] atTime:v10];

  return v4;
}

+ (id)_pinchGestureWithCenter:()AXPIAdditions bounds:radiusDelta:angleDelta:startingWidth:
{
  v74[2] = *MEMORY[0x277D85DE8];
  v21 = [AXPIFingerUtilities defaultPinchLocationsAroundPoint:"defaultPinchLocationsAroundPoint:withinBounds:" withinBounds:?];
  v71.x = 0.0;
  v71.y = 0.0;
  firstObject = [v21 firstObject];
  v23 = CGPointFromString(firstObject);

  v70.x = 0.0;
  v70.y = 0.0;
  lastObject = [v21 lastObject];
  v25 = CGPointFromString(lastObject);

  if (a10 == 0.0)
  {
    AX_CGPointGetMidpointToPoint();
    v27 = v26;
    v29 = v28;
    AX_CGPointGetDistanceToPoint();
    v31 = v30;
    v78.origin.x = a4;
    v78.origin.y = a5;
    v78.size.width = a6;
    v78.size.height = a7;
    v32 = fmax(v27, v31 + CGRectGetMinX(v78));
    v79.origin.x = a4;
    v79.origin.y = a5;
    v79.size.width = a6;
    v79.size.height = a7;
    v63 = fmin(v32, CGRectGetMaxX(v79) - v31);
    v80.origin.x = a4;
    v80.origin.y = a5;
    v80.size.width = a6;
    v80.size.height = a7;
    v33 = fmax(v29, v31 + CGRectGetMinY(v80));
    v81.origin.x = a4;
    v81.origin.y = a5;
    v81.size.width = a6;
    v81.size.height = a7;
    v34 = fmin(v33, CGRectGetMaxY(v81) - v31);
    v35 = v23.x + v63 - v27;
    v36 = v34 - v29;
    v37 = v23.y + v36;
    v71.x = v35;
    v71.y = v23.y + v36;
    v38 = v63 - v27 + v25.x;
    v39 = v36 + v25.y;
    v70.x = v38;
    v70.y = v36 + v25.y;
    v40 = a8;
  }

  else
  {
    v35 = a2 - a10 * 0.5;
    v71.x = v35;
    v71.y = a3;
    v38 = a2 + a10 * 0.5;
    v70.x = v38;
    v70.y = a3;
    v64 = a3;
    v40 = a8;
    v41 = fmax(a8, 0.0);
    v82.origin.x = a4;
    v82.origin.y = a5;
    v82.size.width = a6;
    v82.size.height = a7;
    if (v35 - v41 < CGRectGetMinX(v82))
    {
      v83.origin.x = a4;
      v83.origin.y = a5;
      v83.size.width = a6;
      v83.size.height = a7;
      v42 = CGRectGetMinX(v83) - (v35 - v41);
      v35 = v35 + v42;
      v71.x = v35;
      v38 = v42 + v38;
      v70.x = v38;
    }

    v84.origin.x = a4;
    v84.origin.y = a5;
    v84.size.width = a6;
    v84.size.height = a7;
    if (v41 + v38 > CGRectGetMaxX(v84))
    {
      v85.origin.x = a4;
      v85.origin.y = a5;
      v85.size.width = a6;
      v85.size.height = a7;
      v43 = CGRectGetMaxX(v85) - (v41 + v38);
      v35 = v35 + v43;
      v71.x = v35;
      v38 = v43 + v38;
      v70.x = v38;
    }

    v39 = v64;
    v37 = v64;
  }

  objc_opt_class();
  v44 = objc_opt_new();
  v76.x = v35;
  v76.y = v37;
  v45 = NSStringFromCGPoint(v76);
  v74[0] = v45;
  v77.x = v38;
  v77.y = v39;
  v46 = NSStringFromCGPoint(v77);
  v74[1] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  [self _addFingerPoints:v47 toReplayableGesture:v44 atTime:0.0];

  v48 = -5.0;
  if (v40 >= 0.0)
  {
    v48 = 0.0;
  }

  if (v40 > 0.0)
  {
    v48 = 5.0;
  }

  v49 = -0.0872664626;
  if (a9 >= 0.0)
  {
    v49 = 0.0;
  }

  if (a9 > 0.0)
  {
    v49 = 0.0872664626;
  }

  v50 = (v40 - v48) / 18.0;
  v51 = v48 / 6.0;
  v52 = (a9 - v49) / 18.0;
  v53 = 1;
  v54 = v49 / 6.0;
  do
  {
    [AXPIFingerUtilities updateFirstLocation:&v71 secondLocation:&v70 forPinchWithRadiusDelta:v50 angleDelta:v52, *&v63];
    v55 = NSStringFromCGPoint(v71);
    v73[0] = v55;
    v56 = NSStringFromCGPoint(v70);
    v73[1] = v56;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    [self _addFingerPoints:v57 toReplayableGesture:v44 atTime:v53 * 0.0166666667];

    if (v53 == 18)
    {
      for (i = 19; i != 25; ++i)
      {
        [AXPIFingerUtilities updateFirstLocation:&v71 secondLocation:&v70 forPinchWithRadiusDelta:v51 angleDelta:v54];
        v59 = NSStringFromCGPoint(v71);
        v72[0] = v59;
        v60 = NSStringFromCGPoint(v70);
        v72[1] = v60;
        v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
        [self _addFingerPoints:v61 toReplayableGesture:v44 atTime:i * 0.0166666667];
      }
    }

    ++v53;
  }

  while (v53 != 19);

  return v44;
}

+ (void)_addAllFingerPointsForPoint:()AXPIAdditions numberOfFingers:toReplayableGesture:atTime:
{
  v12 = a7;
  v13 = [AXPIFingerUtilities defaultLocationsForNumberOfFingers:a6 aroundPoint:a2, a3];
  [self _addFingerPoints:v13 toReplayableGesture:v12 atTime:a4];
}

+ (void)_addFingerPoints:()AXPIAdditions toReplayableGesture:atTime:
{
  v17 = a4;
  v7 = a5;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [v17 count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [v17 objectAtIndex:i];
      v13 = MEMORY[0x277CCAE60];
      v14 = CGPointFromString(v12);
      v15 = [v13 valueWithCGPoint:{v14.x, v14.y}];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      [dictionary setObject:v15 forKeyedSubscript:v16];
    }
  }

  [v7 addPointsByFingerIdentifier:dictionary forces:MEMORY[0x277CBEC10] atTime:self];
}

@end