@interface MXSignpostIntervalData
- (MXSignpostIntervalData)initWithCoder:(id)coder;
- (MXSignpostIntervalData)initWithHistogramDurationData:(id)data withCumulativeCPUTime:(id)time withAverageMemory:(id)memory withCumulativeLogicalWrites:(id)writes;
- (MXSignpostIntervalData)initWithHistogramDurationData:(id)data withCumulativeCPUTime:(id)time withAverageMemory:(id)memory withCumulativeLogicalWrites:(id)writes withCumulativeHitchTimeRatio:(id)ratio;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXSignpostIntervalData

- (MXSignpostIntervalData)initWithHistogramDurationData:(id)data withCumulativeCPUTime:(id)time withAverageMemory:(id)memory withCumulativeLogicalWrites:(id)writes
{
  dataCopy = data;
  timeCopy = time;
  memoryCopy = memory;
  writesCopy = writes;
  v23.receiver = self;
  v23.super_class = MXSignpostIntervalData;
  v14 = [(MXSignpostIntervalData *)&v23 init];
  if (v14)
  {
    if (!dataCopy)
    {
      v21 = 0;
      goto LABEL_6;
    }

    v15 = [[MXHistogram alloc] initWithHistogramBucketData:dataCopy];
    histogrammedSignpostDuration = v14->_histogrammedSignpostDuration;
    v14->_histogrammedSignpostDuration = v15;

    objc_storeStrong(&v14->_cumulativeCPUTime, time);
    objc_storeStrong(&v14->_averageMemory, memory);
    objc_storeStrong(&v14->_cumulativeLogicalWrites, writes);
    v17 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v14->_measurementFormatter;
    v14->_measurementFormatter = v17;

    v19 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v14->_measurementFormatter setLocale:v19];

    [(NSMeasurementFormatter *)v14->_measurementFormatter setUnitOptions:1];
    [(NSMeasurementFormatter *)v14->_measurementFormatter setUnitStyle:2];
    numberFormatter = [(NSMeasurementFormatter *)v14->_measurementFormatter numberFormatter];
    [numberFormatter setMaximumFractionDigits:0];
  }

  v21 = v14;
LABEL_6:

  return v21;
}

- (MXSignpostIntervalData)initWithHistogramDurationData:(id)data withCumulativeCPUTime:(id)time withAverageMemory:(id)memory withCumulativeLogicalWrites:(id)writes withCumulativeHitchTimeRatio:(id)ratio
{
  dataCopy = data;
  timeCopy = time;
  memoryCopy = memory;
  writesCopy = writes;
  ratioCopy = ratio;
  v21.receiver = self;
  v21.super_class = MXSignpostIntervalData;
  v17 = [(MXSignpostIntervalData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    if (!dataCopy)
    {
      v19 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v17->_cumulativeHitchTimeRatio, ratio);
  }

  v18 = [(MXSignpostIntervalData *)v18 initWithHistogramDurationData:dataCopy withCumulativeCPUTime:timeCopy withAverageMemory:memoryCopy withCumulativeLogicalWrites:writesCopy];
  v19 = v18;
LABEL_6:

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  histogrammedSignpostDuration = self->_histogrammedSignpostDuration;
  coderCopy = coder;
  [coderCopy encodeObject:histogrammedSignpostDuration forKey:@"histogrammedSignpostDurations"];
  [coderCopy encodeObject:self->_cumulativeCPUTime forKey:@"signpostCumulativeCPUTime"];
  [coderCopy encodeObject:self->_averageMemory forKey:@"signpostAverageMemory"];
  [coderCopy encodeObject:self->_cumulativeLogicalWrites forKey:@"signpostCumulativeLogicalWrites"];
  [coderCopy encodeObject:self->_cumulativeHitchTimeRatio forKey:@"signpostCumulativeHitchTimeRatio"];
}

- (MXSignpostIntervalData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = MXSignpostIntervalData;
  v5 = [(MXSignpostIntervalData *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostCumulativeCPUTime"];
    cumulativeCPUTime = v5->_cumulativeCPUTime;
    v5->_cumulativeCPUTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostAverageMemory"];
    averageMemory = v5->_averageMemory;
    v5->_averageMemory = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostCumulativeLogicalWrites"];
    cumulativeLogicalWrites = v5->_cumulativeLogicalWrites;
    v5->_cumulativeLogicalWrites = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedSignpostDurations"];
    histogrammedSignpostDuration = v5->_histogrammedSignpostDuration;
    v5->_histogrammedSignpostDuration = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signpostCumulativeHitchTimeRatio"];
    cumulativeHitchTimeRatio = v5->_cumulativeHitchTimeRatio;
    v5->_cumulativeHitchTimeRatio = v14;

    v16 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v5->_measurementFormatter;
    v5->_measurementFormatter = v16;

    v18 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v5->_measurementFormatter setLocale:v18];

    [(NSMeasurementFormatter *)v5->_measurementFormatter setUnitOptions:1];
    [(NSMeasurementFormatter *)v5->_measurementFormatter setUnitStyle:2];
    numberFormatter = [(NSMeasurementFormatter *)v5->_measurementFormatter numberFormatter];
    [numberFormatter setMaximumFractionDigits:0];
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  histogrammedSignpostDuration = self->_histogrammedSignpostDuration;
  if (histogrammedSignpostDuration)
  {
    toDictionary = [(MXHistogram *)histogrammedSignpostDuration toDictionary];
    [v3 setObject:toDictionary forKey:@"histogrammedSignpostDurations"];
  }

  if (self->_cumulativeCPUTime)
  {
    measurementFormatter = [(MXSignpostIntervalData *)self measurementFormatter];
    v7 = [measurementFormatter stringFromMeasurement:self->_cumulativeCPUTime];
    [v3 setObject:v7 forKey:@"signpostCumulativeCPUTime"];
  }

  if (self->_averageMemory)
  {
    measurementFormatter2 = [(MXSignpostIntervalData *)self measurementFormatter];
    averageMeasurement = [(MXAverage *)self->_averageMemory averageMeasurement];
    v10 = [measurementFormatter2 stringFromMeasurement:averageMeasurement];
    [v3 setObject:v10 forKey:@"signpostAverageMemory"];
  }

  if (self->_cumulativeLogicalWrites)
  {
    measurementFormatter3 = [(MXSignpostIntervalData *)self measurementFormatter];
    v12 = [measurementFormatter3 stringFromMeasurement:self->_cumulativeLogicalWrites];
    [v3 setObject:v12 forKey:@"signpostCumulativeLogicalWrites"];
  }

  if (self->_cumulativeHitchTimeRatio)
  {
    measurementFormatter4 = [(MXSignpostIntervalData *)self measurementFormatter];
    v14 = [measurementFormatter4 stringFromMeasurement:self->_cumulativeHitchTimeRatio];
    [v3 setObject:v14 forKey:@"signpostCumulativeHitchTimeRatio"];
  }

  return v3;
}

@end