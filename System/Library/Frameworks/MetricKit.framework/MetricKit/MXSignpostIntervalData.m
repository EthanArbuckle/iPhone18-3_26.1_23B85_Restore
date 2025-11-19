@interface MXSignpostIntervalData
- (MXSignpostIntervalData)initWithCoder:(id)a3;
- (MXSignpostIntervalData)initWithHistogramDurationData:(id)a3 withCumulativeCPUTime:(id)a4 withAverageMemory:(id)a5 withCumulativeLogicalWrites:(id)a6;
- (MXSignpostIntervalData)initWithHistogramDurationData:(id)a3 withCumulativeCPUTime:(id)a4 withAverageMemory:(id)a5 withCumulativeLogicalWrites:(id)a6 withCumulativeHitchTimeRatio:(id)a7;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXSignpostIntervalData

- (MXSignpostIntervalData)initWithHistogramDurationData:(id)a3 withCumulativeCPUTime:(id)a4 withAverageMemory:(id)a5 withCumulativeLogicalWrites:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = MXSignpostIntervalData;
  v14 = [(MXSignpostIntervalData *)&v23 init];
  if (v14)
  {
    if (!v10)
    {
      v21 = 0;
      goto LABEL_6;
    }

    v15 = [[MXHistogram alloc] initWithHistogramBucketData:v10];
    histogrammedSignpostDuration = v14->_histogrammedSignpostDuration;
    v14->_histogrammedSignpostDuration = v15;

    objc_storeStrong(&v14->_cumulativeCPUTime, a4);
    objc_storeStrong(&v14->_averageMemory, a5);
    objc_storeStrong(&v14->_cumulativeLogicalWrites, a6);
    v17 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v14->_measurementFormatter;
    v14->_measurementFormatter = v17;

    v19 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v14->_measurementFormatter setLocale:v19];

    [(NSMeasurementFormatter *)v14->_measurementFormatter setUnitOptions:1];
    [(NSMeasurementFormatter *)v14->_measurementFormatter setUnitStyle:2];
    v20 = [(NSMeasurementFormatter *)v14->_measurementFormatter numberFormatter];
    [v20 setMaximumFractionDigits:0];
  }

  v21 = v14;
LABEL_6:

  return v21;
}

- (MXSignpostIntervalData)initWithHistogramDurationData:(id)a3 withCumulativeCPUTime:(id)a4 withAverageMemory:(id)a5 withCumulativeLogicalWrites:(id)a6 withCumulativeHitchTimeRatio:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = MXSignpostIntervalData;
  v17 = [(MXSignpostIntervalData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    if (!v12)
    {
      v19 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v17->_cumulativeHitchTimeRatio, a7);
  }

  v18 = [(MXSignpostIntervalData *)v18 initWithHistogramDurationData:v12 withCumulativeCPUTime:v13 withAverageMemory:v14 withCumulativeLogicalWrites:v15];
  v19 = v18;
LABEL_6:

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  histogrammedSignpostDuration = self->_histogrammedSignpostDuration;
  v5 = a3;
  [v5 encodeObject:histogrammedSignpostDuration forKey:@"histogrammedSignpostDurations"];
  [v5 encodeObject:self->_cumulativeCPUTime forKey:@"signpostCumulativeCPUTime"];
  [v5 encodeObject:self->_averageMemory forKey:@"signpostAverageMemory"];
  [v5 encodeObject:self->_cumulativeLogicalWrites forKey:@"signpostCumulativeLogicalWrites"];
  [v5 encodeObject:self->_cumulativeHitchTimeRatio forKey:@"signpostCumulativeHitchTimeRatio"];
}

- (MXSignpostIntervalData)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MXSignpostIntervalData;
  v5 = [(MXSignpostIntervalData *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signpostCumulativeCPUTime"];
    cumulativeCPUTime = v5->_cumulativeCPUTime;
    v5->_cumulativeCPUTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signpostAverageMemory"];
    averageMemory = v5->_averageMemory;
    v5->_averageMemory = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signpostCumulativeLogicalWrites"];
    cumulativeLogicalWrites = v5->_cumulativeLogicalWrites;
    v5->_cumulativeLogicalWrites = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedSignpostDurations"];
    histogrammedSignpostDuration = v5->_histogrammedSignpostDuration;
    v5->_histogrammedSignpostDuration = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signpostCumulativeHitchTimeRatio"];
    cumulativeHitchTimeRatio = v5->_cumulativeHitchTimeRatio;
    v5->_cumulativeHitchTimeRatio = v14;

    v16 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v5->_measurementFormatter;
    v5->_measurementFormatter = v16;

    v18 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v5->_measurementFormatter setLocale:v18];

    [(NSMeasurementFormatter *)v5->_measurementFormatter setUnitOptions:1];
    [(NSMeasurementFormatter *)v5->_measurementFormatter setUnitStyle:2];
    v19 = [(NSMeasurementFormatter *)v5->_measurementFormatter numberFormatter];
    [v19 setMaximumFractionDigits:0];
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  histogrammedSignpostDuration = self->_histogrammedSignpostDuration;
  if (histogrammedSignpostDuration)
  {
    v5 = [(MXHistogram *)histogrammedSignpostDuration toDictionary];
    [v3 setObject:v5 forKey:@"histogrammedSignpostDurations"];
  }

  if (self->_cumulativeCPUTime)
  {
    v6 = [(MXSignpostIntervalData *)self measurementFormatter];
    v7 = [v6 stringFromMeasurement:self->_cumulativeCPUTime];
    [v3 setObject:v7 forKey:@"signpostCumulativeCPUTime"];
  }

  if (self->_averageMemory)
  {
    v8 = [(MXSignpostIntervalData *)self measurementFormatter];
    v9 = [(MXAverage *)self->_averageMemory averageMeasurement];
    v10 = [v8 stringFromMeasurement:v9];
    [v3 setObject:v10 forKey:@"signpostAverageMemory"];
  }

  if (self->_cumulativeLogicalWrites)
  {
    v11 = [(MXSignpostIntervalData *)self measurementFormatter];
    v12 = [v11 stringFromMeasurement:self->_cumulativeLogicalWrites];
    [v3 setObject:v12 forKey:@"signpostCumulativeLogicalWrites"];
  }

  if (self->_cumulativeHitchTimeRatio)
  {
    v13 = [(MXSignpostIntervalData *)self measurementFormatter];
    v14 = [v13 stringFromMeasurement:self->_cumulativeHitchTimeRatio];
    [v3 setObject:v14 forKey:@"signpostCumulativeHitchTimeRatio"];
  }

  return v3;
}

@end