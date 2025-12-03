@interface MXAppResponsivenessMetric
- (MXAppResponsivenessMetric)initWithAppResponsivenessData:(id)data;
- (MXAppResponsivenessMetric)initWithAppResponsivenessHangData:(id)data spinData:(id)spinData;
- (MXAppResponsivenessMetric)initWithCoder:(id)coder;
- (id)toDictionary;
@end

@implementation MXAppResponsivenessMetric

- (MXAppResponsivenessMetric)initWithAppResponsivenessData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = MXAppResponsivenessMetric;
  v5 = [(MXMetric *)&v10 init];
  if (v5)
  {
    if (!dataCopy)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [[MXHistogram alloc] initWithHistogramBucketData:dataCopy];
    histogrammedApplicationHangTime = v5->_histogrammedApplicationHangTime;
    v5->_histogrammedApplicationHangTime = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- (MXAppResponsivenessMetric)initWithAppResponsivenessHangData:(id)data spinData:(id)spinData
{
  spinDataCopy = spinData;
  v11.receiver = self;
  v11.super_class = MXAppResponsivenessMetric;
  v6 = [(MXMetric *)&v11 init];
  if (v6)
  {
    if (!spinDataCopy)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = [[MXHistogram alloc] initWithHistogramBucketData:spinDataCopy];
    histogrammedApplicationHangTime = v6->_histogrammedApplicationHangTime;
    v6->_histogrammedApplicationHangTime = v7;
  }

  v9 = v6;
LABEL_6:

  return v9;
}

- (MXAppResponsivenessMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MXAppResponsivenessMetric;
  v5 = [(MXMetric *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedAppHangTime"];
    histogrammedApplicationHangTime = v5->_histogrammedApplicationHangTime;
    v5->_histogrammedApplicationHangTime = v6;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  histogrammedApplicationHangTime = self->_histogrammedApplicationHangTime;
  if (histogrammedApplicationHangTime)
  {
    toDictionary = [(MXHistogram *)histogrammedApplicationHangTime toDictionary];
    [v3 setObject:toDictionary forKey:@"histogrammedAppHangTime"];
  }

  return v3;
}

@end