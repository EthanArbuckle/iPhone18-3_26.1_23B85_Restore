@interface ATXGuardedHistData
- (ATXGuardedHistData)initWithHistogramData:(id)a3 bucketCount:(unsigned __int16)a4 filter:(BOOL)a5;
@end

@implementation ATXGuardedHistData

- (ATXGuardedHistData)initWithHistogramData:(id)a3 bucketCount:(unsigned __int16)a4 filter:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = ATXGuardedHistData;
  v9 = [(ATXGuardedHistData *)&v13 init];
  if (v9)
  {
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    histogramData = v9->_histogramData;
    v9->_histogramData = v10;

    v9->_bucketCount = a4;
    v9->_filter = a5;
  }

  return v9;
}

@end