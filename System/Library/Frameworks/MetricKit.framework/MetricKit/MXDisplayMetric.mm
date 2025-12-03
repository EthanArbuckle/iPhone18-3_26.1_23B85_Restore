@interface MXDisplayMetric
- (MXDisplayMetric)initWithAveragePictureLevel:(id)level;
- (MXDisplayMetric)initWithCoder:(id)coder;
- (id)toDictionary;
@end

@implementation MXDisplayMetric

- (MXDisplayMetric)initWithAveragePictureLevel:(id)level
{
  levelCopy = level;
  v12.receiver = self;
  v12.super_class = MXDisplayMetric;
  v6 = [(MXMetric *)&v12 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  averageMeasurement = [levelCopy averageMeasurement];
  [averageMeasurement doubleValue];
  v9 = v8;

  if (v9 >= 0.0)
  {
    objc_storeStrong(&v6->_averagePixelLuminance, level);
LABEL_5:
    v10 = v6;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (MXDisplayMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MXDisplayMetric;
  v5 = [(MXMetric *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averagePixelLuminance"];
    averagePixelLuminance = v5->_averagePixelLuminance;
    v5->_averagePixelLuminance = v6;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  averagePixelLuminance = self->_averagePixelLuminance;
  if (averagePixelLuminance)
  {
    toDictionary = [(MXAverage *)averagePixelLuminance toDictionary];
    [v3 setObject:toDictionary forKey:@"averagePixelLuminance"];
  }

  return v3;
}

@end