@interface VCCallLinkCongestionDetector
- (VCCallLinkCongestionDetector)initWithRTTThreshold:(double)threshold lossRateThreshold:(double)rateThreshold;
@end

@implementation VCCallLinkCongestionDetector

- (VCCallLinkCongestionDetector)initWithRTTThreshold:(double)threshold lossRateThreshold:(double)rateThreshold
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCCallLinkCongestionDetector;
  result = [(VCCallLinkCongestionDetector *)&v7 init];
  if (result)
  {
    result->isLinkCongested = 0;
    result->rttThreshold = threshold;
    result->lossRateThreshold = rateThreshold;
  }

  return result;
}

@end