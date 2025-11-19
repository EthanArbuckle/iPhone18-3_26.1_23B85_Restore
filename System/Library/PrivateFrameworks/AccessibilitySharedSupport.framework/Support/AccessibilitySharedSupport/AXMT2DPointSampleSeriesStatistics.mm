@interface AXMT2DPointSampleSeriesStatistics
- (AXMT2DPointSampleSeriesStatistics)initWithQueue:(id)a3;
- (BOOL)valid;
- (CGPoint)mean;
- (void)queue:(id)a3 dequeuedValue:(id)a4;
- (void)queue:(id)a3 enqueuedValue:(id)a4;
@end

@implementation AXMT2DPointSampleSeriesStatistics

- (AXMT2DPointSampleSeriesStatistics)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXMT2DPointSampleSeriesStatistics;
  v6 = [(AXMT2DPointSampleSeriesStatistics *)&v9 init];
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
  v2 = [(AXMT2DPointSampleSeriesStatistics *)self _samplesQueue];
  v3 = [v2 filled];

  return v3;
}

- (void)queue:(id)a3 enqueuedValue:(id)a4
{
  v15 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 pointValue];
    v8 = v7;
    v10 = v9;
    v11 = [v15 count];
    [(AXMT2DPointSampleSeriesStatistics *)self setCount:v11];
    if (v11 == 1)
    {
      [(AXMT2DPointSampleSeriesStatistics *)self setMean:v8, v10];
      [(AXMT2DPointSampleSeriesStatistics *)self setStandardDeviation:0.0];
    }

    else
    {
      v12 = [v15 values];
      [(AXMT2DPointSampleSeriesStatistics *)self setMean:AXMTGeometryCentroidOfPoints(v12)];
      [(AXMT2DPointSampleSeriesStatistics *)self mean];
      [(AXMT2DPointSampleSeriesStatistics *)self setStandardDeviation:AXMTGeometryStandardDeviationOfPointsWithPrecalculatedCentroid(v12, v13, v14)];
    }
  }
}

- (void)queue:(id)a3 dequeuedValue:(id)a4
{
  v5 = a3;
  v6 = [v5 count];
  [(AXMT2DPointSampleSeriesStatistics *)self setCount:v6];
  if (v6 > 1)
  {
    v15 = [v5 values];

    [(AXMT2DPointSampleSeriesStatistics *)self setMean:AXMTGeometryCentroidOfPoints(v15)];
    [(AXMT2DPointSampleSeriesStatistics *)self mean];
    v12 = AXMTGeometryStandardDeviationOfPointsWithPrecalculatedCentroid(v15, v13, v14);
  }

  else
  {
    x = NSZeroPoint.x;
    y = NSZeroPoint.y;
    v9 = [v5 values];

    v15 = [v9 firstObject];

    if (v6 == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 pointValue];
        x = v10;
        y = v11;
      }
    }

    [(AXMT2DPointSampleSeriesStatistics *)self setMean:x, y];
    v12 = 0.0;
  }

  [(AXMT2DPointSampleSeriesStatistics *)self setStandardDeviation:v12];
}

- (CGPoint)mean
{
  x = self->_mean.x;
  y = self->_mean.y;
  result.y = y;
  result.x = x;
  return result;
}

@end