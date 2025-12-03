@interface MXAverage
- (MXAverage)initWithCoder:(id)coder;
- (MXAverage)initWithDoubleValue:(double)value sampleCount:(int64_t)count standardDeviation:(double)deviation unit:(id)unit;
- (MXAverage)initWithMeasurement:(id)measurement sampleCount:(int64_t)count standardDeviation:(double)deviation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXAverage

- (MXAverage)initWithDoubleValue:(double)value sampleCount:(int64_t)count standardDeviation:(double)deviation unit:(id)unit
{
  unitCopy = unit;
  v19.receiver = self;
  v19.super_class = MXAverage;
  v11 = [(MXAverage *)&v19 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB10]) initWithDoubleValue:unitCopy unit:value];
    averageMeasurement = v11->_averageMeasurement;
    v11->_averageMeasurement = v12;

    v11->_sampleCount = count;
    v11->_standardDeviation = deviation;
    v14 = objc_alloc_init(MEMORY[0x277CCAB18]);
    averageMeasurementFormatter = v11->_averageMeasurementFormatter;
    v11->_averageMeasurementFormatter = v14;

    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setUnitOptions:1];
    v16 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setLocale:v16];

    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setUnitStyle:2];
    numberFormatter = [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter numberFormatter];
    [numberFormatter setMaximumFractionDigits:0];
  }

  return v11;
}

- (MXAverage)initWithMeasurement:(id)measurement sampleCount:(int64_t)count standardDeviation:(double)deviation
{
  measurementCopy = measurement;
  v17.receiver = self;
  v17.super_class = MXAverage;
  v10 = [(MXAverage *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_averageMeasurement, measurement);
    v11->_sampleCount = count;
    v11->_standardDeviation = deviation;
    v12 = objc_alloc_init(MEMORY[0x277CCAB18]);
    averageMeasurementFormatter = v11->_averageMeasurementFormatter;
    v11->_averageMeasurementFormatter = v12;

    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setUnitOptions:1];
    v14 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setLocale:v14];

    [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter setUnitStyle:2];
    numberFormatter = [(NSMeasurementFormatter *)v11->_averageMeasurementFormatter numberFormatter];
    [numberFormatter setMaximumFractionDigits:0];
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"NSMeasurement cannot be encoded by non-keyed archivers"];
  }

  [coderCopy encodeObject:self->_averageMeasurement forKey:@"averageValue"];
  [coderCopy encodeInteger:self->_sampleCount forKey:@"sampleCount"];
  [coderCopy encodeDouble:@"standardDeviation" forKey:self->_standardDeviation];
}

- (MXAverage)initWithCoder:(id)coder
{
  v20[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageValue"];
    v6 = [coderCopy decodeIntegerForKey:@"sampleCount"];
    [coderCopy decodeDoubleForKey:@"standardDeviation"];
    if (v5)
    {
      v8 = v7;
      [v5 doubleValue];
      v10 = v9;
      unit = [v5 unit];
      self = [(MXAverage *)self initWithDoubleValue:v6 sampleCount:unit standardDeviation:v10 unit:v8];

      selfCopy = self;
    }

    else
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA050];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"Measurement class object has been corrupted!";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v16 = [v13 errorWithDomain:v14 code:4864 userInfo:v15];
      [coderCopy failWithError:v16];

      selfCopy = 0;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"NSMeasurement cannot be decoded by non-keyed archivers"];
    selfCopy = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return selfCopy;
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