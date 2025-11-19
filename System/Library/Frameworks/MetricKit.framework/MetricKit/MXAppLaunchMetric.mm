@interface MXAppLaunchMetric
- (MXAppLaunchMetric)initWithCoder:(id)a3;
- (MXAppLaunchMetric)initWithLaunchTimeData:(id)a3 withResumeTimeData:(id)a4;
- (MXAppLaunchMetric)initWithLaunchTimeData:(id)a3 withResumeTimeData:(id)a4 withActivationTimeData:(id)a5;
- (MXAppLaunchMetric)initWithLaunchTimeData:(id)a3 withResumeTimeData:(id)a4 withActivationTimeData:(id)a5 withExtendedLaunchTimeData:(id)a6;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXAppLaunchMetric

- (MXAppLaunchMetric)initWithLaunchTimeData:(id)a3 withResumeTimeData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MXAppLaunchMetric;
  v8 = [(MXMetric *)&v15 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = 0;
  if (v6 && v7)
  {
    v10 = [[MXHistogram alloc] initWithHistogramBucketData:v6];
    histogrammedTimeToFirstDraw = v8->_histogrammedTimeToFirstDraw;
    v8->_histogrammedTimeToFirstDraw = v10;

    v12 = [[MXHistogram alloc] initWithHistogramBucketData:v7];
    histogrammedApplicationResumeTime = v8->_histogrammedApplicationResumeTime;
    v8->_histogrammedApplicationResumeTime = v12;

LABEL_5:
    v9 = v8;
  }

  return v9;
}

- (MXAppLaunchMetric)initWithLaunchTimeData:(id)a3 withResumeTimeData:(id)a4 withActivationTimeData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = MXAppLaunchMetric;
  v11 = [(MXMetric *)&v20 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = 0;
  if (v8 && v9 && v10)
  {
    v13 = [[MXHistogram alloc] initWithHistogramBucketData:v8];
    histogrammedTimeToFirstDraw = v11->_histogrammedTimeToFirstDraw;
    v11->_histogrammedTimeToFirstDraw = v13;

    v15 = [[MXHistogram alloc] initWithHistogramBucketData:v9];
    histogrammedApplicationResumeTime = v11->_histogrammedApplicationResumeTime;
    v11->_histogrammedApplicationResumeTime = v15;

    v17 = [[MXHistogram alloc] initWithHistogramBucketData:v10];
    histogrammedOptimizedTimeToFirstDraw = v11->_histogrammedOptimizedTimeToFirstDraw;
    v11->_histogrammedOptimizedTimeToFirstDraw = v17;

LABEL_6:
    v12 = v11;
  }

  return v12;
}

- (MXAppLaunchMetric)initWithLaunchTimeData:(id)a3 withResumeTimeData:(id)a4 withActivationTimeData:(id)a5 withExtendedLaunchTimeData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = MXAppLaunchMetric;
  v14 = [(MXMetric *)&v25 init];
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = 0;
  if (v10 && v11 && v12 && v13)
  {
    v16 = [[MXHistogram alloc] initWithHistogramBucketData:v10];
    histogrammedTimeToFirstDraw = v14->_histogrammedTimeToFirstDraw;
    v14->_histogrammedTimeToFirstDraw = v16;

    v18 = [[MXHistogram alloc] initWithHistogramBucketData:v11];
    histogrammedApplicationResumeTime = v14->_histogrammedApplicationResumeTime;
    v14->_histogrammedApplicationResumeTime = v18;

    v20 = [[MXHistogram alloc] initWithHistogramBucketData:v12];
    histogrammedOptimizedTimeToFirstDraw = v14->_histogrammedOptimizedTimeToFirstDraw;
    v14->_histogrammedOptimizedTimeToFirstDraw = v20;

    v22 = [[MXHistogram alloc] initWithHistogramBucketData:v13];
    histogrammedExtendedLaunch = v14->_histogrammedExtendedLaunch;
    v14->_histogrammedExtendedLaunch = v22;

LABEL_7:
    v15 = v14;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  histogrammedTimeToFirstDraw = self->_histogrammedTimeToFirstDraw;
  v5 = a3;
  [v5 encodeObject:histogrammedTimeToFirstDraw forKey:@"histogrammedTimeToFirstDrawKey"];
  [v5 encodeObject:self->_histogrammedApplicationResumeTime forKey:@"histogrammedResumeTime"];
  [v5 encodeObject:self->_histogrammedOptimizedTimeToFirstDraw forKey:@"histogrammedOptimizedTimeToFirstDrawKey"];
  [v5 encodeObject:self->_histogrammedExtendedLaunch forKey:@"histogrammedExtendedLaunch"];
}

- (MXAppLaunchMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MXAppLaunchMetric;
  v5 = [(MXMetric *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedTimeToFirstDrawKey"];
    histogrammedTimeToFirstDraw = v5->_histogrammedTimeToFirstDraw;
    v5->_histogrammedTimeToFirstDraw = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedResumeTime"];
    histogrammedApplicationResumeTime = v5->_histogrammedApplicationResumeTime;
    v5->_histogrammedApplicationResumeTime = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedOptimizedTimeToFirstDrawKey"];
    histogrammedOptimizedTimeToFirstDraw = v5->_histogrammedOptimizedTimeToFirstDraw;
    v5->_histogrammedOptimizedTimeToFirstDraw = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedExtendedLaunch"];
    histogrammedExtendedLaunch = v5->_histogrammedExtendedLaunch;
    v5->_histogrammedExtendedLaunch = v12;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  histogrammedTimeToFirstDraw = self->_histogrammedTimeToFirstDraw;
  if (histogrammedTimeToFirstDraw)
  {
    v5 = [(MXHistogram *)histogrammedTimeToFirstDraw toDictionary];
    [v3 setObject:v5 forKey:@"histogrammedTimeToFirstDrawKey"];
  }

  histogrammedApplicationResumeTime = self->_histogrammedApplicationResumeTime;
  if (histogrammedApplicationResumeTime)
  {
    v7 = [(MXHistogram *)histogrammedApplicationResumeTime toDictionary];
    [v3 setObject:v7 forKey:@"histogrammedResumeTime"];
  }

  histogrammedOptimizedTimeToFirstDraw = self->_histogrammedOptimizedTimeToFirstDraw;
  if (histogrammedOptimizedTimeToFirstDraw)
  {
    v9 = [(MXHistogram *)histogrammedOptimizedTimeToFirstDraw toDictionary];
    [v3 setObject:v9 forKey:@"histogrammedOptimizedTimeToFirstDrawKey"];
  }

  histogrammedExtendedLaunch = self->_histogrammedExtendedLaunch;
  if (histogrammedExtendedLaunch)
  {
    v11 = [(MXHistogram *)histogrammedExtendedLaunch toDictionary];
    [v3 setObject:v11 forKey:@"histogrammedExtendedLaunch"];
  }

  return v3;
}

@end