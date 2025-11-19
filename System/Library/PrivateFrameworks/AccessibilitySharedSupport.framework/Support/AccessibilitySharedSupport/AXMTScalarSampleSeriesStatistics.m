@interface AXMTScalarSampleSeriesStatistics
- (AXMTScalarSampleSeriesStatistics)initWithQueue:(id)a3;
- (BOOL)valid;
- (void)queue:(id)a3 dequeuedValue:(id)a4;
- (void)queue:(id)a3 enqueuedValue:(id)a4;
@end

@implementation AXMTScalarSampleSeriesStatistics

- (AXMTScalarSampleSeriesStatistics)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXMTScalarSampleSeriesStatistics;
  v6 = [(AXMTScalarSampleSeriesStatistics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__samplesQueue, a3);
    [(AXMTQueue *)v7->__samplesQueue setDelegate:v7];
  }

  return v7;
}

- (BOOL)valid
{
  v2 = [(AXMTScalarSampleSeriesStatistics *)self _samplesQueue];
  v3 = [v2 filled];

  return v3;
}

- (void)queue:(id)a3 enqueuedValue:(id)a4
{
  v14 = a3;
  [a4 doubleValue];
  v7 = v6;
  v8 = [v14 count];
  [(AXMTScalarSampleSeriesStatistics *)self setCount:v8];
  if (v8 == 1)
  {
    [(AXMTScalarSampleSeriesStatistics *)self setMean:v7];
    [(AXMTScalarSampleSeriesStatistics *)self setMaximumValue:v7];
    [(AXMTScalarSampleSeriesStatistics *)self setMinimumValue:v7];
    [(AXMTScalarSampleSeriesStatistics *)self setStandardDeviation:0.0];
  }

  else
  {
    [(AXMTScalarSampleSeriesStatistics *)self mean];
    [(AXMTScalarSampleSeriesStatistics *)self setMean:(v7 + v9 * (v8 - 1)) / v8];
    [(AXMTScalarSampleSeriesStatistics *)self maximumValue];
    if (v10 < v7)
    {
      v10 = v7;
    }

    [(AXMTScalarSampleSeriesStatistics *)self setMaximumValue:v10];
    [(AXMTScalarSampleSeriesStatistics *)self minimumValue];
    if (v11 >= v7)
    {
      v11 = v7;
    }

    [(AXMTScalarSampleSeriesStatistics *)self setMinimumValue:v11];
    v12 = [v14 values];
    [(AXMTScalarSampleSeriesStatistics *)self mean];
    [(AXMTScalarSampleSeriesStatistics *)self setStandardDeviation:AXMTMathStandardDeviationOfValuesWithPrecalculatedMean(v12, v13)];
  }
}

- (void)queue:(id)a3 dequeuedValue:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [v21 count];
  [(AXMTScalarSampleSeriesStatistics *)self setCount:v7];
  if (v7 > 1)
  {
    [v6 doubleValue];
    v13 = v12;
    [(AXMTScalarSampleSeriesStatistics *)self mean];
    [(AXMTScalarSampleSeriesStatistics *)self setMean:-(v13 - v14 * (v7 + 1)) / v7];
    [(AXMTScalarSampleSeriesStatistics *)self maximumValue];
    if (vabdd_f64(v13, v15) <= 0.00001)
    {
      v17 = [v21 values];
      v18 = [v17 valueForKeyPath:@"@max.doubleValue"];
      [v18 doubleValue];
      [(AXMTScalarSampleSeriesStatistics *)self setMaximumValue:?];
    }

    else
    {
      [(AXMTScalarSampleSeriesStatistics *)self minimumValue];
      if (vabdd_f64(v13, v16) > 0.00001)
      {
LABEL_10:
        v19 = [v21 values];
        [(AXMTScalarSampleSeriesStatistics *)self mean];
        [(AXMTScalarSampleSeriesStatistics *)self setStandardDeviation:AXMTMathStandardDeviationOfValuesWithPrecalculatedMean(v19, v20)];

        goto LABEL_11;
      }

      v17 = [v21 values];
      v18 = [v17 valueForKeyPath:@"@min.doubleValue"];
      [v18 doubleValue];
      [(AXMTScalarSampleSeriesStatistics *)self setMinimumValue:?];
    }

    goto LABEL_10;
  }

  v8 = 0.0;
  if (v7 == 1)
  {
    v9 = [v21 values];
    v10 = [v9 firstObject];
    [v10 doubleValue];
    v8 = v11;
  }

  [(AXMTScalarSampleSeriesStatistics *)self setMean:v8];
  [(AXMTScalarSampleSeriesStatistics *)self setMaximumValue:v8];
  [(AXMTScalarSampleSeriesStatistics *)self setMinimumValue:v8];
  [(AXMTScalarSampleSeriesStatistics *)self setStandardDeviation:0.0];
LABEL_11:
}

@end