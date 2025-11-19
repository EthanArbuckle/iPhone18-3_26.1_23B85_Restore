@interface GAXMathUtilities
+ (double)minimizeFunctionWithBlock:(id)a3 intervalStart:(double)a4 intervalEnd:(double)a5 precision:(double)a6;
@end

@implementation GAXMathUtilities

+ (double)minimizeFunctionWithBlock:(id)a3 intervalStart:(double)a4 intervalEnd:(double)a5 precision:(double)a6
{
  v10 = a3;
  v11 = v10[2](a4);
  (v10[2])(v10, a5);
  if (vabdd_f64(a5, a4) >= fabs(a6))
  {
    if (vabdd_f64(v12, v11) >= 2.22044605e-16)
    {
      v19 = (a4 + a5) * 0.5;
      v20 = v11 < v12;
      if (v11 >= v12)
      {
        v21 = (a4 + a5) * 0.5;
      }

      else
      {
        v21 = a4;
      }

      if (!v20)
      {
        v19 = a5;
      }

      [a1 minimizeFunctionWithBlock:v10 intervalStart:v21 intervalEnd:v19 precision:a6];
      v13 = v22;
    }

    else
    {
      v14 = (a4 + a5) * 0.5;
      [a1 minimizeFunctionWithBlock:v10 intervalStart:a4 intervalEnd:v14 precision:a6];
      v16 = v15;
      [a1 minimizeFunctionWithBlock:v10 intervalStart:v14 intervalEnd:a5 precision:a6];
      v13 = v17;
      v18 = (v10[2])(v10, v16);
      if (v18 < (v10[2])(v10, v13))
      {
        v13 = v16;
      }
    }
  }

  else if (v11 >= v12)
  {
    v13 = a5;
  }

  else
  {
    v13 = a4;
  }

  return v13;
}

@end