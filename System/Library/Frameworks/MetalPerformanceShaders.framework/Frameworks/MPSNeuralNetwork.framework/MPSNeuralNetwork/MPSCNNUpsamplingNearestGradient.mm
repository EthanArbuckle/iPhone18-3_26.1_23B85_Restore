@interface MPSCNNUpsamplingNearestGradient
- (MPSCNNUpsamplingNearestGradient)initWithDevice:(id)device integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY;
@end

@implementation MPSCNNUpsamplingNearestGradient

- (MPSCNNUpsamplingNearestGradient)initWithDevice:(id)device integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY
{
  v6.receiver = self;
  v6.super_class = MPSCNNUpsamplingNearestGradient;
  return [(MPSCNNUpsamplingGradient *)&v6 initWithDevice:device filterType:0 integerScaleFactorX:integerScaleFactorX integerScaleFactorY:integerScaleFactorY];
}

@end