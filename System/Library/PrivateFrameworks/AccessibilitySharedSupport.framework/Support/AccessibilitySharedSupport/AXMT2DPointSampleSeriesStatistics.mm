@interface AXMT2DPointSampleSeriesStatistics
- (AXMT2DPointSampleSeriesStatistics)initWithQueue:(id)queue;
- (BOOL)valid;
- (CGPoint)mean;
- (void)queue:(id)queue dequeuedValue:(id)value;
- (void)queue:(id)queue enqueuedValue:(id)value;
@end

@implementation AXMT2DPointSampleSeriesStatistics

- (AXMT2DPointSampleSeriesStatistics)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = AXMT2DPointSampleSeriesStatistics;
  v6 = [(AXMT2DPointSampleSeriesStatistics *)&v9 init];
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
  _samplesQueue = [(AXMT2DPointSampleSeriesStatistics *)self _samplesQueue];
  filled = [_samplesQueue filled];

  return filled;
}

- (void)queue:(id)queue enqueuedValue:(id)value
{
  queueCopy = queue;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy pointValue];
    v8 = v7;
    v10 = v9;
    v11 = [queueCopy count];
    [(AXMT2DPointSampleSeriesStatistics *)self setCount:v11];
    if (v11 == 1)
    {
      [(AXMT2DPointSampleSeriesStatistics *)self setMean:v8, v10];
      [(AXMT2DPointSampleSeriesStatistics *)self setStandardDeviation:0.0];
    }

    else
    {
      values = [queueCopy values];
      [(AXMT2DPointSampleSeriesStatistics *)self setMean:AXMTGeometryCentroidOfPoints(values)];
      [(AXMT2DPointSampleSeriesStatistics *)self mean];
      [(AXMT2DPointSampleSeriesStatistics *)self setStandardDeviation:AXMTGeometryStandardDeviationOfPointsWithPrecalculatedCentroid(values, v13, v14)];
    }
  }
}

- (void)queue:(id)queue dequeuedValue:(id)value
{
  queueCopy = queue;
  v6 = [queueCopy count];
  [(AXMT2DPointSampleSeriesStatistics *)self setCount:v6];
  if (v6 > 1)
  {
    values = [queueCopy values];

    [(AXMT2DPointSampleSeriesStatistics *)self setMean:AXMTGeometryCentroidOfPoints(values)];
    [(AXMT2DPointSampleSeriesStatistics *)self mean];
    v12 = AXMTGeometryStandardDeviationOfPointsWithPrecalculatedCentroid(values, v13, v14);
  }

  else
  {
    x = NSZeroPoint.x;
    y = NSZeroPoint.y;
    values2 = [queueCopy values];

    values = [values2 firstObject];

    if (v6 == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [values pointValue];
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