@interface VCCallLinkCongestionDetector
- (VCCallLinkCongestionDetector)initWithRTTThreshold:(double)a3 lossRateThreshold:(double)a4;
@end

@implementation VCCallLinkCongestionDetector

- (VCCallLinkCongestionDetector)initWithRTTThreshold:(double)a3 lossRateThreshold:(double)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCCallLinkCongestionDetector;
  result = [(VCCallLinkCongestionDetector *)&v7 init];
  if (result)
  {
    result->isLinkCongested = 0;
    result->rttThreshold = a3;
    result->lossRateThreshold = a4;
  }

  return result;
}

@end