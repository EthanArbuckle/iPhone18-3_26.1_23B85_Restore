@interface MXCellularConditionMetric
- (MXCellularConditionMetric)initWithCellularConditionTime:(id)time;
- (MXCellularConditionMetric)initWithCoder:(id)coder;
- (id)toDictionary;
@end

@implementation MXCellularConditionMetric

- (MXCellularConditionMetric)initWithCellularConditionTime:(id)time
{
  timeCopy = time;
  v10.receiver = self;
  v10.super_class = MXCellularConditionMetric;
  v5 = [(MXMetric *)&v10 init];
  if (v5)
  {
    if (!timeCopy)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [[MXHistogram alloc] initWithHistogramBucketData:timeCopy];
    histogrammedCellularConditionTime = v5->_histogrammedCellularConditionTime;
    v5->_histogrammedCellularConditionTime = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- (MXCellularConditionMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MXCellularConditionMetric;
  v5 = [(MXMetric *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cellConditionTime"];
    histogrammedCellularConditionTime = v5->_histogrammedCellularConditionTime;
    v5->_histogrammedCellularConditionTime = v6;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  histogrammedCellularConditionTime = self->_histogrammedCellularConditionTime;
  if (histogrammedCellularConditionTime)
  {
    toDictionary = [(MXHistogram *)histogrammedCellularConditionTime toDictionary];
    [v3 setObject:toDictionary forKey:@"cellConditionTime"];
  }

  return v3;
}

@end