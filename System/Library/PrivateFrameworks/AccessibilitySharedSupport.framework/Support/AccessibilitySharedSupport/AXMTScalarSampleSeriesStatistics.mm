@interface AXMTScalarSampleSeriesStatistics
- (AXMTScalarSampleSeriesStatistics)initWithQueue:(id)queue;
- (BOOL)valid;
- (void)queue:(id)queue dequeuedValue:(id)value;
- (void)queue:(id)queue enqueuedValue:(id)value;
@end

@implementation AXMTScalarSampleSeriesStatistics

- (AXMTScalarSampleSeriesStatistics)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = AXMTScalarSampleSeriesStatistics;
  v6 = [(AXMTScalarSampleSeriesStatistics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__samplesQueue, queue);
    [(AXMTQueue *)v7->__samplesQueue setDelegate:v7];
  }

  return v7;
}

- (BOOL)valid
{
  _samplesQueue = [(AXMTScalarSampleSeriesStatistics *)self _samplesQueue];
  filled = [_samplesQueue filled];

  return filled;
}

- (void)queue:(id)queue enqueuedValue:(id)value
{
  queueCopy = queue;
  [value doubleValue];
  v7 = v6;
  v8 = [queueCopy count];
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
    values = [queueCopy values];
    [(AXMTScalarSampleSeriesStatistics *)self mean];
    [(AXMTScalarSampleSeriesStatistics *)self setStandardDeviation:AXMTMathStandardDeviationOfValuesWithPrecalculatedMean(values, v13)];
  }
}

- (void)queue:(id)queue dequeuedValue:(id)value
{
  queueCopy = queue;
  valueCopy = value;
  v7 = [queueCopy count];
  [(AXMTScalarSampleSeriesStatistics *)self setCount:v7];
  if (v7 > 1)
  {
    [valueCopy doubleValue];
    v13 = v12;
    [(AXMTScalarSampleSeriesStatistics *)self mean];
    [(AXMTScalarSampleSeriesStatistics *)self setMean:-(v13 - v14 * (v7 + 1)) / v7];
    [(AXMTScalarSampleSeriesStatistics *)self maximumValue];
    if (vabdd_f64(v13, v15) <= 0.00001)
    {
      values = [queueCopy values];
      v18 = [values valueForKeyPath:@"@max.doubleValue"];
      [v18 doubleValue];
      [(AXMTScalarSampleSeriesStatistics *)self setMaximumValue:?];
    }

    else
    {
      [(AXMTScalarSampleSeriesStatistics *)self minimumValue];
      if (vabdd_f64(v13, v16) > 0.00001)
      {
LABEL_10:
        values2 = [queueCopy values];
        [(AXMTScalarSampleSeriesStatistics *)self mean];
        [(AXMTScalarSampleSeriesStatistics *)self setStandardDeviation:AXMTMathStandardDeviationOfValuesWithPrecalculatedMean(values2, v20)];

        goto LABEL_11;
      }

      values = [queueCopy values];
      v18 = [values valueForKeyPath:@"@min.doubleValue"];
      [v18 doubleValue];
      [(AXMTScalarSampleSeriesStatistics *)self setMinimumValue:?];
    }

    goto LABEL_10;
  }

  v8 = 0.0;
  if (v7 == 1)
  {
    values3 = [queueCopy values];
    firstObject = [values3 firstObject];
    [firstObject doubleValue];
    v8 = v11;
  }

  [(AXMTScalarSampleSeriesStatistics *)self setMean:v8];
  [(AXMTScalarSampleSeriesStatistics *)self setMaximumValue:v8];
  [(AXMTScalarSampleSeriesStatistics *)self setMinimumValue:v8];
  [(AXMTScalarSampleSeriesStatistics *)self setStandardDeviation:0.0];
LABEL_11:
}

@end