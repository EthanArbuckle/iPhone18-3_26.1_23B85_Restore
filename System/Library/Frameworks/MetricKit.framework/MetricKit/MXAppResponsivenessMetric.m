@interface MXAppResponsivenessMetric
- (MXAppResponsivenessMetric)initWithAppResponsivenessData:(id)a3;
- (MXAppResponsivenessMetric)initWithAppResponsivenessHangData:(id)a3 spinData:(id)a4;
- (MXAppResponsivenessMetric)initWithCoder:(id)a3;
- (id)toDictionary;
@end

@implementation MXAppResponsivenessMetric

- (MXAppResponsivenessMetric)initWithAppResponsivenessData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MXAppResponsivenessMetric;
  v5 = [(MXMetric *)&v10 init];
  if (v5)
  {
    if (!v4)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [[MXHistogram alloc] initWithHistogramBucketData:v4];
    histogrammedApplicationHangTime = v5->_histogrammedApplicationHangTime;
    v5->_histogrammedApplicationHangTime = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- (MXAppResponsivenessMetric)initWithAppResponsivenessHangData:(id)a3 spinData:(id)a4
{
  v5 = a4;
  v11.receiver = self;
  v11.super_class = MXAppResponsivenessMetric;
  v6 = [(MXMetric *)&v11 init];
  if (v6)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = [[MXHistogram alloc] initWithHistogramBucketData:v5];
    histogrammedApplicationHangTime = v6->_histogrammedApplicationHangTime;
    v6->_histogrammedApplicationHangTime = v7;
  }

  v9 = v6;
LABEL_6:

  return v9;
}

- (MXAppResponsivenessMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MXAppResponsivenessMetric;
  v5 = [(MXMetric *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedAppHangTime"];
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
    v5 = [(MXHistogram *)histogrammedApplicationHangTime toDictionary];
    [v3 setObject:v5 forKey:@"histogrammedAppHangTime"];
  }

  return v3;
}

@end