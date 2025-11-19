@interface MXHistogramBucket
- (MXHistogramBucket)initWithBucketStart:(id)a3 bucketEnd:(id)a4 bucketCount:(unint64_t)a5;
- (MXHistogramBucket)initWithCoder:(id)a3;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXHistogramBucket

- (MXHistogramBucket)initWithBucketStart:(id)a3 bucketEnd:(id)a4 bucketCount:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = MXHistogramBucket;
  v10 = [(MXHistogramBucket *)&v21 init];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = 0;
  if (v8 && v9 && a5)
  {
    v12 = [v8 copy];
    bucketStart = v10->_bucketStart;
    v10->_bucketStart = v12;

    v14 = [v9 copy];
    bucketEnd = v10->_bucketEnd;
    v10->_bucketEnd = v14;

    v10->_bucketCount = a5;
    v16 = objc_alloc_init(MEMORY[0x277CCAB18]);
    histogramBucketFormatter = v10->_histogramBucketFormatter;
    v10->_histogramBucketFormatter = v16;

    [(NSMeasurementFormatter *)v10->_histogramBucketFormatter setUnitOptions:1];
    v18 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSMeasurementFormatter *)v10->_histogramBucketFormatter setLocale:v18];

    [(NSMeasurementFormatter *)v10->_histogramBucketFormatter setUnitStyle:2];
    v19 = [(NSMeasurementFormatter *)v10->_histogramBucketFormatter numberFormatter];
    [v19 setMaximumFractionDigits:0];

LABEL_6:
    v11 = v10;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  bucketStart = self->_bucketStart;
  v5 = a3;
  [v5 encodeObject:bucketStart forKey:@"bucketStart"];
  [v5 encodeObject:self->_bucketEnd forKey:@"bucketEnd"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bucketCount];
  [v5 encodeObject:v6 forKey:@"bucketCount"];
}

- (MXHistogramBucket)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MXHistogramBucket;
  v5 = [(MXHistogramBucket *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bucketStart"];
    bucketStart = v5->_bucketStart;
    v5->_bucketStart = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bucketEnd"];
    bucketEnd = v5->_bucketEnd;
    v5->_bucketEnd = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bucketCount"];
    v5->_bucketCount = [v10 unsignedIntegerValue];

    v5 = [(MXHistogramBucket *)v5 initWithBucketStart:v5->_bucketStart bucketEnd:v5->_bucketEnd bucketCount:v5->_bucketCount];
  }

  return v5;
}

- (id)toDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  if (self->_bucketStart && self->_bucketEnd && self->_bucketCount)
  {
    v9[0] = @"bucketStart";
    v3 = [(NSMeasurementFormatter *)self->_histogramBucketFormatter stringFromMeasurement:?];
    v10[0] = v3;
    v9[1] = @"bucketEnd";
    v4 = [(NSMeasurementFormatter *)self->_histogramBucketFormatter stringFromMeasurement:self->_bucketEnd];
    v10[1] = v4;
    v9[2] = @"bucketCount";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bucketCount];
    v10[2] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end