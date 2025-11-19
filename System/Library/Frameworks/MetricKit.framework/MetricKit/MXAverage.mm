@interface MXAverage
- (MXAverage)initWithCoder:(id)a3;
- (MXAverage)initWithDoubleValue:(double)a3 sampleCount:(int64_t)a4 standardDeviation:(double)a5 unit:(id)a6;
- (MXAverage)initWithMeasurement:(id)a3 sampleCount:(int64_t)a4 standardDeviation:(double)a5;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXAverage

- (MXAverage)initWithDoubleValue:(double)a3 sampleCount:(int64_t)a4 standardDeviation:(double)a5 unit:(id)a6
{
  v10 = a6;
  v19.receiver = self;
  v19.super_class = MXAverage;
  v11 = [(MXAverage *)&v19 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB10]) initWithDoubleValue:v10 unit:a3];
    averageMeasurement = v11->_averageMeasurement;
    v11->_averageMeasurement = v12;

    v11->_sampleCount = a4;
    v11->_standardDeviation = a5;
    v14 = objc_alloc_init(MEMORY[0x277CCAB18]);
    averageMeasurementFormatter = v11->_averageMeasurementFormatter;
    v11->_averageMeasurementFormatter = v14;

    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setUnitOptions:1];
    v16 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setLocale:v16];

    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setUnitStyle:2];
    v17 = [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter numberFormatter];
    [v17 setMaximumFractionDigits:0];
  }

  return v11;
}

- (MXAverage)initWithMeasurement:(id)a3 sampleCount:(int64_t)a4 standardDeviation:(double)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = MXAverage;
  v10 = [(MXAverage *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_averageMeasurement, a3);
    v11->_sampleCount = a4;
    v11->_standardDeviation = a5;
    v12 = objc_alloc_init(MEMORY[0x277CCAB18]);
    averageMeasurementFormatter = v11->_averageMeasurementFormatter;
    v11->_averageMeasurementFormatter = v12;

    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setUnitOptions:1];
    v14 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setLocale:v14];

    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setUnitStyle:2];
    v15 = [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter numberFormatter];
    [v15 setMaximumFractionDigits:0];
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"NSMeasurement cannot be encoded by non-keyed archivers"];
  }

  [v4 encodeObject:self->_averageMeasurement forKey:@"averageValue"];
  [v4 encodeInteger:self->_sampleCount forKey:@"sampleCount"];
  [v4 encodeDouble:@"standardDeviation" forKey:self->_standardDeviation];
}

- (MXAverage)initWithCoder:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"averageValue"];
    v6 = [v4 decodeIntegerForKey:@"sampleCount"];
    [v4 decodeDoubleForKey:@"standardDeviation"];
    if (v5)
    {
      v8 = v7;
      [v5 doubleValue];
      v10 = v9;
      v11 = [v5 unit];
      self = [(MXAverage *)self initWithDoubleValue:v6 sampleCount:v11 standardDeviation:v10 unit:v8];

      v12 = self;
    }

    else
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA050];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"Measurement class object has been corrupted!";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v16 = [v13 errorWithDomain:v14 code:4864 userInfo:v15];
      [v4 failWithError:v16];

      v12 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"NSMeasurement cannot be decoded by non-keyed archivers"];
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_averageMeasurement)
  {
    v4 = [(NSMeasurementFormatter *)self->_averageMeasurementFormatter stringFromMeasurement:?];
    [v3 setObject:v4 forKey:@"averageValue"];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sampleCount];
  [v3 setObject:v5 forKey:@"sampleCount"];

  v6 = [MEMORY[0x277CCA980] numberWithDouble:self->_standardDeviation];
  [v3 setObject:v6 forKey:@"standardDeviation"];

  return v3;
}

@end