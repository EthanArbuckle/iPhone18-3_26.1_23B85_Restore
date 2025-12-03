@interface GAXMathUtilities
+ (double)minimizeFunctionWithBlock:(id)block intervalStart:(double)start intervalEnd:(double)end precision:(double)precision;
@end

@implementation GAXMathUtilities

+ (double)minimizeFunctionWithBlock:(id)block intervalStart:(double)start intervalEnd:(double)end precision:(double)precision
{
  blockCopy = block;
  v11 = blockCopy[2](start);
  (blockCopy[2])(blockCopy, end);
  if (vabdd_f64(end, start) >= fabs(precision))
  {
    if (vabdd_f64(v12, v11) >= 2.22044605e-16)
    {
      endCopy = (start + end) * 0.5;
      v20 = v11 < v12;
      if (v11 >= v12)
      {
        startCopy = (start + end) * 0.5;
      }

      else
      {
        startCopy = start;
      }

      if (!v20)
      {
        endCopy = end;
      }

      [self minimizeFunctionWithBlock:blockCopy intervalStart:startCopy intervalEnd:endCopy precision:precision];
      startCopy2 = v22;
    }

    else
    {
      v14 = (start + end) * 0.5;
      [self minimizeFunctionWithBlock:blockCopy intervalStart:start intervalEnd:v14 precision:precision];
      v16 = v15;
      [self minimizeFunctionWithBlock:blockCopy intervalStart:v14 intervalEnd:end precision:precision];
      startCopy2 = v17;
      v18 = (blockCopy[2])(blockCopy, v16);
      if (v18 < (blockCopy[2])(blockCopy, startCopy2))
      {
        startCopy2 = v16;
      }
    }
  }

  else if (v11 >= v12)
  {
    startCopy2 = end;
  }

  else
  {
    startCopy2 = start;
  }

  return startCopy2;
}

@end