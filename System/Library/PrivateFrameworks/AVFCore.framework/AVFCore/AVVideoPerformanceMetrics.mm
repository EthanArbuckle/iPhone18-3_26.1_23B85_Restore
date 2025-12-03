@interface AVVideoPerformanceMetrics
- (AVVideoPerformanceMetrics)initWithDictionary:(id)dictionary;
- (double)totalFrameDelay;
- (int64_t)numberOfCorruptedFrames;
- (int64_t)numberOfDroppedFrames;
- (int64_t)totalNumberOfFrames;
- (unint64_t)numberOfDisplayCompositedVideoFrames;
- (unint64_t)numberOfNonDisplayCompositedVideoFrames;
- (void)dealloc;
@end

@implementation AVVideoPerformanceMetrics

- (AVVideoPerformanceMetrics)initWithDictionary:(id)dictionary
{
  if (!dictionary)
  {

    return 0;
  }

  v7.receiver = self;
  v7.super_class = AVVideoPerformanceMetrics;
  v4 = [(AVVideoPerformanceMetrics *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVVideoPerformanceMetricsInternal);
    v4->_performanceMetricsInternal = v5;
    if (v5)
    {
      CFRetain(v5);
      v4->_performanceMetricsInternal->_metricsDictionary = dictionary;
      return v4;
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  performanceMetricsInternal = self->_performanceMetricsInternal;
  if (performanceMetricsInternal)
  {

    CFRelease(self->_performanceMetricsInternal);
  }

  v4.receiver = self;
  v4.super_class = AVVideoPerformanceMetrics;
  [(AVVideoPerformanceMetrics *)&v4 dealloc];
}

- (int64_t)totalNumberOfFrames
{
  v3 = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C90]];
  v4 = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C60]];
  v5 = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C68]];
  v6 = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C78]];
  v7 = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C88]];
  if (v3)
  {

    return [v3 unsignedLongValue];
  }

  v9 = v7;
  if (!v4)
  {
    unsignedLongValue = 0;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  unsignedLongValue = [v4 unsignedLongValue];
  if (v5)
  {
LABEL_7:
    unsignedLongValue += [v5 unsignedLongValue];
  }

LABEL_8:
  if (v6)
  {
    unsignedLongValue += [v6 unsignedLongValue];
  }

  if (v9)
  {
    unsignedLongValue += [v9 unsignedLongValue];
  }

  return unsignedLongValue;
}

- (int64_t)numberOfDroppedFrames
{
  v3 = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C80]];
  v4 = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C98]];
  v5 = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C78]];
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6 && v5 == 0)
  {
    return 0;
  }

  v8 = v5;
  unsignedLongValue = [v3 unsignedLongValue];
  v10 = [v4 unsignedLongValue] + unsignedLongValue;
  return v10 + [v8 unsignedLongValue];
}

- (int64_t)numberOfCorruptedFrames
{
  result = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C50]];
  if (result)
  {

    return [result unsignedLongValue];
  }

  return result;
}

- (unint64_t)numberOfDisplayCompositedVideoFrames
{
  result = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973C58]];
  if (result)
  {

    return [result unsignedLongValue];
  }

  return result;
}

- (unint64_t)numberOfNonDisplayCompositedVideoFrames
{
  result = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973CA0]];
  if (result)
  {

    return [result unsignedLongValue];
  }

  return result;
}

- (double)totalFrameDelay
{
  v2 = [(NSDictionary *)self->_performanceMetricsInternal->_metricsDictionary objectForKey:*MEMORY[0x1E6973CA8]];
  if (!v2)
  {
    return 0.0;
  }

  [v2 doubleValue];
  return result;
}

@end