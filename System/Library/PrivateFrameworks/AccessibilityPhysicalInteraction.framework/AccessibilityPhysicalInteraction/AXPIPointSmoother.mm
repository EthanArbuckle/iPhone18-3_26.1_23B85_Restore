@interface AXPIPointSmoother
+ (CGPoint)_averagePointsInArray:(id)array;
- (AXPIPointSmoother)init;
- (AXPIPointSmootherClientDelegate)delegate;
- (CGPoint)medianFilterPointForPoint:(CGPoint)point;
- (CGPoint)point;
- (CGSize)_deltaForPoint:(CGPoint)point;
- (id)_gaussianBlurredArrayFromArray:(id)array;
- (id)_gaussianBlurredPointBuffer;
- (unint64_t)bufferSize;
- (void)addPoint:(CGPoint)point;
- (void)removeAllPoints;
- (void)updateFPS;
@end

@implementation AXPIPointSmoother

- (AXPIPointSmoother)init
{
  v9.receiver = self;
  v9.super_class = AXPIPointSmoother;
  v2 = [(AXPIPointSmoother *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_bufferSize = 1;
    *&v2->_smoothingMaxDelta = xmmword_23D75ADD0;
    v2->_shouldOffsetBufferPoints = 0;
    v2->_xOffset = 0.0;
    v2->_yOffset = 0.0;
    v2->_yOrder = 1.0;
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v2->_bufferSize];
    pointBuffer = v3->_pointBuffer;
    v3->_pointBuffer = v4;

    v6 = objc_opt_new();
    medianPointBuffer = v3->_medianPointBuffer;
    v3->_medianPointBuffer = v6;
  }

  return v3;
}

- (CGPoint)medianFilterPointForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  medianPointBuffer = [(AXPIPointSmoother *)self medianPointBuffer];
  v6 = [MEMORY[0x277CCAE60] valueWithPoint:{x, y}];
  [medianPointBuffer addObject:v6];

  if ([medianPointBuffer count] >= 8)
  {
    do
    {
      [medianPointBuffer removeObjectAtIndex:0];
    }

    while ([medianPointBuffer count] > 7);
  }

  if ([medianPointBuffer count] >= 7)
  {
    v7 = [medianPointBuffer ax_mappedArrayUsingBlock:&__block_literal_global_5];
    v8 = [v7 sortedArrayUsingSelector:sel_compare_];

    v9 = [medianPointBuffer ax_mappedArrayUsingBlock:&__block_literal_global_6];
    v10 = [v9 sortedArrayUsingSelector:sel_compare_];

    v11 = [v8 objectAtIndexedSubscript:{objc_msgSend(v8, "count") >> 1}];
    v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") >> 1}];
    [v11 floatValue];
    x = v13;
    [v12 floatValue];
    y = v14;
  }

  v15 = x;
  v16 = y;
  result.y = v16;
  result.x = v15;
  return result;
}

uint64_t __47__AXPIPointSmoother_medianFilterPointForPoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 pointValue];

  return [v2 numberWithDouble:?];
}

uint64_t __47__AXPIPointSmoother_medianFilterPointForPoint___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 pointValue];

  return [v2 numberWithDouble:v3];
}

- (void)addPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AXPIPointSmoother *)self updateFPS];
  if ([(AXPIPointSmoother *)self useMedianFilter])
  {
    [(AXPIPointSmoother *)self medianFilterPointForPoint:x, y];
    x = v6;
    y = v7;
  }

  pointBuffer = [(AXPIPointSmoother *)self pointBuffer];
  v9 = [pointBuffer count];

  if (v9)
  {
    [(AXPIPointSmoother *)self smoothingMaxDelta];
    if (v10 > 0.0)
    {
      pointBuffer2 = [(AXPIPointSmoother *)self pointBuffer];
      pointBuffer3 = [(AXPIPointSmoother *)self pointBuffer];
      v13 = [pointBuffer2 subarrayWithRange:{0, objc_msgSend(pointBuffer3, "count")}];

      [objc_opt_class() _averagePointsInArray:v13];
      AX_CGPointGetDistanceToPoint();
      v15 = v14;
      [(AXPIPointSmoother *)self smoothingMaxDelta];
      v17 = v16;
      if ([(AXPIPointSmoother *)self bufferSize])
      {
        v18 = 0;
        v19 = v15 >= v17;
        v20 = -1;
        while (1)
        {
          pointBuffer4 = [(AXPIPointSmoother *)self pointBuffer];
          v22 = [pointBuffer4 count];

          if (v18 >= v22 || !v19)
          {
            break;
          }

          ++v18;
          pointBuffer5 = [(AXPIPointSmoother *)self pointBuffer];
          pointBuffer6 = [(AXPIPointSmoother *)self pointBuffer];
          v25 = [pointBuffer5 subarrayWithRange:{v18, objc_msgSend(pointBuffer6, "count") + v20}];

          [objc_opt_class() _averagePointsInArray:v25];
          AX_CGPointGetDistanceToPoint();
          v27 = v26;
          [(AXPIPointSmoother *)self smoothingMaxDelta];
          v19 = v27 >= v28;
          --v20;
          v13 = v25;
          if (v18 >= [(AXPIPointSmoother *)self bufferSize])
          {
            goto LABEL_12;
          }
        }

        v25 = v13;
        if (!v18)
        {
          goto LABEL_13;
        }

LABEL_12:
        pointBuffer7 = [(AXPIPointSmoother *)self pointBuffer];
        [pointBuffer7 removeObjectsInRange:{0, v18}];

        v13 = v25;
      }

LABEL_13:
    }

    while (1)
    {
      pointBuffer8 = [(AXPIPointSmoother *)self pointBuffer];
      v32 = [pointBuffer8 count];
      bufferSize = [(AXPIPointSmoother *)self bufferSize];

      if (v32 < bufferSize)
      {
        break;
      }

      pointBuffer9 = [(AXPIPointSmoother *)self pointBuffer];
      [pointBuffer9 removeObjectAtIndex:0];
    }
  }

  if ([(AXPIPointSmoother *)self shouldOffsetBufferPoints])
  {
    [(AXPIPointSmoother *)self _deltaForPoint:x, y];
    x = x + v34;
    y = y + v35;
  }

  pointBuffer10 = [(AXPIPointSmoother *)self pointBuffer];
  v36 = [MEMORY[0x277CCAE60] valueWithPoint:{x, y}];
  [pointBuffer10 addObject:v36];
}

- (id)_gaussianBlurredArrayFromArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy count];
  if (v4 >= [&unk_284FC7910 count])
  {
    v7 = [&unk_284FC7910 count] + 1;
    v8 = v7 >> 1;
    v5 = objc_opt_new();
    v9 = (v7 >> 1) - 1;
    if (v7 >> 1 != 1)
    {
      v10 = 0;
      do
      {
        v11 = [arrayCopy objectAtIndexedSubscript:v10];
        [v5 addObject:v11];

        ++v10;
      }

      while (v9 != v10);
    }

    if (v9 < [arrayCopy count] - v8)
    {
      v12 = (v7 & 0xFFFFFFFFFFFFFFFELL) - 1;
      do
      {
        v13 = objc_opt_new();
        v14 = v9 - v8 + 1;
        v15 = v12;
        if (v14 < v9 + v8)
        {
          do
          {
            v16 = [arrayCopy objectAtIndexedSubscript:v14];
            [v13 addObject:v16];

            ++v14;
            --v15;
          }

          while (v15);
        }

        if ([v13 count])
        {
          v17 = 0;
          v18 = 0.0;
          do
          {
            v19 = [&unk_284FC7910 objectAtIndexedSubscript:v17];
            [v19 doubleValue];
            v21 = v20;

            v22 = [v13 objectAtIndexedSubscript:v17];
            [v22 doubleValue];
            v24 = v23;

            v18 = v18 + v21 * v24;
            ++v17;
          }

          while ([v13 count] > v17);
        }

        else
        {
          v18 = 0.0;
        }

        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        [v5 addObject:v25];

        ++v9;
      }

      while (v9 < [arrayCopy count] - v8);
    }

    for (i = [arrayCopy count] - v8; i < objc_msgSend(arrayCopy, "count"); ++i)
    {
      v27 = [arrayCopy objectAtIndexedSubscript:i];
      [v5 addObject:v27];
    }
  }

  else
  {
    v5 = arrayCopy;
  }

  return v5;
}

- (id)_gaussianBlurredPointBuffer
{
  pointBuffer = [(AXPIPointSmoother *)self pointBuffer];
  v4 = [pointBuffer ax_mappedArrayUsingBlock:&__block_literal_global_16];
  v5 = [pointBuffer ax_mappedArrayUsingBlock:&__block_literal_global_18];
  v18 = v4;
  v6 = [(AXPIPointSmoother *)self _gaussianBlurredArrayFromArray:v4];
  v7 = [(AXPIPointSmoother *)self _gaussianBlurredArrayFromArray:v5];
  v8 = objc_opt_new();
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
      v11 = [v7 objectAtIndexedSubscript:v9];
      v12 = MEMORY[0x277CCAE60];
      [v10 doubleValue];
      v14 = v13;
      [v11 doubleValue];
      v19[0] = v14;
      v19[1] = v15;
      v16 = [v12 valueWithBytes:v19 objCType:"{CGPoint=dd}"];
      [v8 addObject:v16];

      ++v9;
    }

    while ([v6 count] > v9);
  }

  return v8;
}

uint64_t __48__AXPIPointSmoother__gaussianBlurredPointBuffer__block_invoke(uint64_t a1, void *a2)
{
  [a2 CGPointValue];
  v2 = MEMORY[0x277CCABB0];

  return [v2 numberWithDouble:?];
}

uint64_t __48__AXPIPointSmoother__gaussianBlurredPointBuffer__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 CGPointValue];
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithDouble:v2];
}

- (CGPoint)point
{
  if ([(AXPIPointSmoother *)self useGaussianBlur])
  {
    [(AXPIPointSmoother *)self _gaussianBlurredPointBuffer];
  }

  else
  {
    [(AXPIPointSmoother *)self pointBuffer];
  }
  v3 = ;
  if ([(AXPIPointSmoother *)self useWeightedMovingAverage])
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
    v6 = [v3 count];
    v7 = [v3 count];
    if ([v3 count])
    {
      v8 = 0;
      v9 = ((v6 + v6 * v7) >> 1);
      do
      {
        v10 = [v3 objectAtIndexedSubscript:v8];
        [v10 CGPointValue];
        v12 = v11;
        v14 = v13;

        v4 = v4 + v12 * ++v8 / v9;
        v5 = v5 + v14 * v8 / v9;
      }

      while ([v3 count] > v8);
    }
  }

  else
  {
    [objc_opt_class() _averagePointsInArray:v3];
    v4 = v15;
    v5 = v16;
  }

  if (![(AXPIPointSmoother *)self shouldOffsetBufferPoints])
  {
    [(AXPIPointSmoother *)self _deltaForPoint:v4, v5];
    v4 = v4 + v17;
    v5 = v5 + v18;
  }

  v19 = v4;
  v20 = v5;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGSize)_deltaForPoint:(CGPoint)point
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  delegate = [(AXPIPointSmoother *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = v4;
  if (v9)
  {
    delegate2 = [(AXPIPointSmoother *)self delegate];
    [delegate2 rotatedScreenBounds];
    v13 = v15;
    v12 = v16;
    v11 = v17;
    v10 = v18;
  }

  v44.origin.x = v13;
  v44.origin.y = v12;
  v44.size.width = v11;
  v44.size.height = v10;
  v47.origin.x = v4;
  v47.origin.y = v5;
  v47.size.width = v6;
  v47.size.height = v7;
  if (CGRectEqualToRect(v44, v47))
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v13 = v20;
    v12 = v21;
    v11 = v22;
    v10 = v23;
  }

  v45.origin.x = v13;
  v45.origin.y = v12;
  v45.size.width = v11;
  v45.size.height = v10;
  MidX = CGRectGetMidX(v45);
  v46.origin.x = v13;
  v46.origin.y = v12;
  v46.size.width = v11;
  v46.size.height = v10;
  v25 = fmax(MidX, 1.0);
  v26 = fmax(CGRectGetMidY(v46), 1.0);
  *&MidX = vabdd_f64(v25, point.x) / v25;
  [(AXPIPointSmoother *)self xOrder];
  v28 = v27;
  v29 = powf(*&MidX, v28);
  [(AXPIPointSmoother *)self xOffset];
  v31 = v30;
  v32 = v30 * v29;
  [(AXPIPointSmoother *)self yOrder];
  v35 = v34;
  v33 = vabdd_f64(v26, point.y) / v26;
  v36 = powf(v33, v35);
  [(AXPIPointSmoother *)self yOffset];
  v38 = v37 * v36;
  v39 = -(v31 * v29);
  if (point.x > v25)
  {
    v39 = v32;
  }

  v40 = -(v37 * v36);
  if (point.y <= v26)
  {
    v38 = v40;
  }

  v41 = v39;
  result.height = v38;
  result.width = v41;
  return result;
}

- (void)removeAllPoints
{
  pointBuffer = [(AXPIPointSmoother *)self pointBuffer];
  [pointBuffer removeAllObjects];
}

- (unint64_t)bufferSize
{
  if ([(AXPIPointSmoother *)self lowFPSDetectedCount]<= 0x31)
  {
    bufferSize = self->_bufferSize;
  }

  else
  {
    bufferSize = 1;
  }

  if (bufferSize <= 1)
  {
    return 1;
  }

  else
  {
    return bufferSize;
  }
}

- (void)updateFPS
{
  v3 = mach_absolute_time();
  [(AXPIPointSmoother *)self lastTimePointAdded];
  [(AXPIPointSmoother *)self setFramesPerSecond:(1.0 / (AXMachTimeToNanoseconds() / 1000000000.0))];
  [(AXPIPointSmoother *)self setLastTimePointAdded:v3];
  if ([(AXPIPointSmoother *)self framesPerSecond]> 0xA)
  {
    v5 = 0;
  }

  else
  {
    lowFPSDetectedCount = [(AXPIPointSmoother *)self lowFPSDetectedCount];
    if (lowFPSDetectedCount + 1 < 0x32)
    {
      v5 = lowFPSDetectedCount + 1;
    }

    else
    {
      v5 = 50;
    }
  }

  [(AXPIPointSmoother *)self setLowFPSDetectedCount:v5];
}

+ (CGPoint)_averagePointsInArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(arrayCopy);
        }

        [*(*(&v15 + 1) + 8 * i) CGPointValue];
        v8 = v8 + v10;
        v7 = v7 + v11;
      }

      v5 = [arrayCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
  }

  v12 = [arrayCopy count];

  v13 = v8 / v12;
  v14 = v7 / v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (AXPIPointSmootherClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end