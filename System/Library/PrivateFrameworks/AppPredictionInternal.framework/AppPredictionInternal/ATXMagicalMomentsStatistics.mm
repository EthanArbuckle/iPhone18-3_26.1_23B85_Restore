@interface ATXMagicalMomentsStatistics
+ (double)betaDistributionCdfAtX:(double)x paramA:(double)a paramB:(double)b;
+ (double)calculateModelConfidenceWithCorrectPredictions:(double)predictions incorrectPredictions:(double)incorrectPredictions;
@end

@implementation ATXMagicalMomentsStatistics

+ (double)calculateModelConfidenceWithCorrectPredictions:(double)predictions incorrectPredictions:(double)incorrectPredictions
{
  v6 = 0.0;
  v7 = 20;
  v8 = 1.0;
  do
  {
    [objc_opt_class() betaDistributionCdfAtX:(v8 + v6) * 0.5 paramA:predictions paramB:incorrectPredictions];
    if (1.0 - v9 >= 0.95)
    {
      v6 = (v8 + v6) * 0.5;
    }

    else
    {
      v8 = (v8 + v6) * 0.5;
    }

    --v7;
  }

  while (v7);
  return (v8 + v6) * 0.5;
}

+ (double)betaDistributionCdfAtX:(double)x paramA:(double)a paramB:(double)b
{
  i = -1.0;
  if (x >= 0.0 && x <= 1.0)
  {
    i = 0.0;
    if (x != 0.0)
    {
      i = 1.0;
      if (x != 1.0)
      {
        v10 = 0.0005;
        for (i = 0.0; v10 <= x; v10 = v10 + 0.001)
        {
          v11 = log(v10);
          v12 = log(1.0 - v10);
          i = i + exp((b + -1.0) * v12 + (a + -1.0) * v11) * 0.001;
        }
      }
    }
  }

  v13 = lgamma(a);
  v14 = v13 + lgamma(b);
  v15 = lgamma(a + b);
  result = i / exp(v14 - v15);
  if (result > 1.0)
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

@end