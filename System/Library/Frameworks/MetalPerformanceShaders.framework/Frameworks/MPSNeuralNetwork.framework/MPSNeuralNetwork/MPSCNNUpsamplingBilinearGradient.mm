@interface MPSCNNUpsamplingBilinearGradient
- (MPSCNNUpsamplingBilinearGradient)initWithDevice:(id)device integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY;
@end

@implementation MPSCNNUpsamplingBilinearGradient

- (MPSCNNUpsamplingBilinearGradient)initWithDevice:(id)device integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY
{
  v6.receiver = self;
  v6.super_class = MPSCNNUpsamplingBilinearGradient;
  return [(MPSCNNUpsamplingGradient *)&v6 initWithDevice:device filterType:1 integerScaleFactorX:integerScaleFactorX integerScaleFactorY:integerScaleFactorY];
}

@end