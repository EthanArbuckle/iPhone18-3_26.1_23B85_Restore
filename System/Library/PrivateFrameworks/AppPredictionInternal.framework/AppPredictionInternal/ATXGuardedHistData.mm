@interface ATXGuardedHistData
- (ATXGuardedHistData)initWithHistogramData:(id)data bucketCount:(unsigned __int16)count filter:(BOOL)filter;
@end

@implementation ATXGuardedHistData

- (ATXGuardedHistData)initWithHistogramData:(id)data bucketCount:(unsigned __int16)count filter:(BOOL)filter
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = ATXGuardedHistData;
  v9 = [(ATXGuardedHistData *)&v13 init];
  if (v9)
  {
    if (dataCopy)
    {
      v10 = dataCopy;
    }

    else
    {
      v10 = objc_opt_new();
    }

    histogramData = v9->_histogramData;
    v9->_histogramData = v10;

    v9->_bucketCount = count;
    v9->_filter = filter;
  }

  return v9;
}

@end