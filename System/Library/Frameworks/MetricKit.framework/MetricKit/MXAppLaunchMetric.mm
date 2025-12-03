@interface MXAppLaunchMetric
- (MXAppLaunchMetric)initWithCoder:(id)coder;
- (MXAppLaunchMetric)initWithLaunchTimeData:(id)data withResumeTimeData:(id)timeData;
- (MXAppLaunchMetric)initWithLaunchTimeData:(id)data withResumeTimeData:(id)timeData withActivationTimeData:(id)activationTimeData;
- (MXAppLaunchMetric)initWithLaunchTimeData:(id)data withResumeTimeData:(id)timeData withActivationTimeData:(id)activationTimeData withExtendedLaunchTimeData:(id)launchTimeData;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXAppLaunchMetric

- (MXAppLaunchMetric)initWithLaunchTimeData:(id)data withResumeTimeData:(id)timeData
{
  dataCopy = data;
  timeDataCopy = timeData;
  v15.receiver = self;
  v15.super_class = MXAppLaunchMetric;
  v8 = [(MXMetric *)&v15 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = 0;
  if (dataCopy && timeDataCopy)
  {
    v10 = [[MXHistogram alloc] initWithHistogramBucketData:dataCopy];
    histogrammedTimeToFirstDraw = v8->_histogrammedTimeToFirstDraw;
    v8->_histogrammedTimeToFirstDraw = v10;

    v12 = [[MXHistogram alloc] initWithHistogramBucketData:timeDataCopy];
    histogrammedApplicationResumeTime = v8->_histogrammedApplicationResumeTime;
    v8->_histogrammedApplicationResumeTime = v12;

LABEL_5:
    v9 = v8;
  }

  return v9;
}

- (MXAppLaunchMetric)initWithLaunchTimeData:(id)data withResumeTimeData:(id)timeData withActivationTimeData:(id)activationTimeData
{
  dataCopy = data;
  timeDataCopy = timeData;
  activationTimeDataCopy = activationTimeData;
  v20.receiver = self;
  v20.super_class = MXAppLaunchMetric;
  v11 = [(MXMetric *)&v20 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = 0;
  if (dataCopy && timeDataCopy && activationTimeDataCopy)
  {
    v13 = [[MXHistogram alloc] initWithHistogramBucketData:dataCopy];
    histogrammedTimeToFirstDraw = v11->_histogrammedTimeToFirstDraw;
    v11->_histogrammedTimeToFirstDraw = v13;

    v15 = [[MXHistogram alloc] initWithHistogramBucketData:timeDataCopy];
    histogrammedApplicationResumeTime = v11->_histogrammedApplicationResumeTime;
    v11->_histogrammedApplicationResumeTime = v15;

    v17 = [[MXHistogram alloc] initWithHistogramBucketData:activationTimeDataCopy];
    histogrammedOptimizedTimeToFirstDraw = v11->_histogrammedOptimizedTimeToFirstDraw;
    v11->_histogrammedOptimizedTimeToFirstDraw = v17;

LABEL_6:
    v12 = v11;
  }

  return v12;
}

- (MXAppLaunchMetric)initWithLaunchTimeData:(id)data withResumeTimeData:(id)timeData withActivationTimeData:(id)activationTimeData withExtendedLaunchTimeData:(id)launchTimeData
{
  dataCopy = data;
  timeDataCopy = timeData;
  activationTimeDataCopy = activationTimeData;
  launchTimeDataCopy = launchTimeData;
  v25.receiver = self;
  v25.super_class = MXAppLaunchMetric;
  v14 = [(MXMetric *)&v25 init];
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = 0;
  if (dataCopy && timeDataCopy && activationTimeDataCopy && launchTimeDataCopy)
  {
    v16 = [[MXHistogram alloc] initWithHistogramBucketData:dataCopy];
    histogrammedTimeToFirstDraw = v14->_histogrammedTimeToFirstDraw;
    v14->_histogrammedTimeToFirstDraw = v16;

    v18 = [[MXHistogram alloc] initWithHistogramBucketData:timeDataCopy];
    histogrammedApplicationResumeTime = v14->_histogrammedApplicationResumeTime;
    v14->_histogrammedApplicationResumeTime = v18;

    v20 = [[MXHistogram alloc] initWithHistogramBucketData:activationTimeDataCopy];
    histogrammedOptimizedTimeToFirstDraw = v14->_histogrammedOptimizedTimeToFirstDraw;
    v14->_histogrammedOptimizedTimeToFirstDraw = v20;

    v22 = [[MXHistogram alloc] initWithHistogramBucketData:launchTimeDataCopy];
    histogrammedExtendedLaunch = v14->_histogrammedExtendedLaunch;
    v14->_histogrammedExtendedLaunch = v22;

LABEL_7:
    v15 = v14;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  histogrammedTimeToFirstDraw = self->_histogrammedTimeToFirstDraw;
  coderCopy = coder;
  [coderCopy encodeObject:histogrammedTimeToFirstDraw forKey:@"histogrammedTimeToFirstDrawKey"];
  [coderCopy encodeObject:self->_histogrammedApplicationResumeTime forKey:@"histogrammedResumeTime"];
  [coderCopy encodeObject:self->_histogrammedOptimizedTimeToFirstDraw forKey:@"histogrammedOptimizedTimeToFirstDrawKey"];
  [coderCopy encodeObject:self->_histogrammedExtendedLaunch forKey:@"histogrammedExtendedLaunch"];
}

- (MXAppLaunchMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MXAppLaunchMetric;
  v5 = [(MXMetric *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedTimeToFirstDrawKey"];
    histogrammedTimeToFirstDraw = v5->_histogrammedTimeToFirstDraw;
    v5->_histogrammedTimeToFirstDraw = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedResumeTime"];
    histogrammedApplicationResumeTime = v5->_histogrammedApplicationResumeTime;
    v5->_histogrammedApplicationResumeTime = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedOptimizedTimeToFirstDrawKey"];
    histogrammedOptimizedTimeToFirstDraw = v5->_histogrammedOptimizedTimeToFirstDraw;
    v5->_histogrammedOptimizedTimeToFirstDraw = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"histogrammedExtendedLaunch"];
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
    toDictionary = [(MXHistogram *)histogrammedTimeToFirstDraw toDictionary];
    [v3 setObject:toDictionary forKey:@"histogrammedTimeToFirstDrawKey"];
  }

  histogrammedApplicationResumeTime = self->_histogrammedApplicationResumeTime;
  if (histogrammedApplicationResumeTime)
  {
    toDictionary2 = [(MXHistogram *)histogrammedApplicationResumeTime toDictionary];
    [v3 setObject:toDictionary2 forKey:@"histogrammedResumeTime"];
  }

  histogrammedOptimizedTimeToFirstDraw = self->_histogrammedOptimizedTimeToFirstDraw;
  if (histogrammedOptimizedTimeToFirstDraw)
  {
    toDictionary3 = [(MXHistogram *)histogrammedOptimizedTimeToFirstDraw toDictionary];
    [v3 setObject:toDictionary3 forKey:@"histogrammedOptimizedTimeToFirstDrawKey"];
  }

  histogrammedExtendedLaunch = self->_histogrammedExtendedLaunch;
  if (histogrammedExtendedLaunch)
  {
    toDictionary4 = [(MXHistogram *)histogrammedExtendedLaunch toDictionary];
    [v3 setObject:toDictionary4 forKey:@"histogrammedExtendedLaunch"];
  }

  return v3;
}

@end