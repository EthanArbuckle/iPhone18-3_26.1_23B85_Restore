@interface MPSCNNUpsamplingBilinear
- (MPSCNNUpsamplingBilinear)initWithDevice:(id)device integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY alignCorners:(BOOL)alignCorners;
@end

@implementation MPSCNNUpsamplingBilinear

- (MPSCNNUpsamplingBilinear)initWithDevice:(id)device integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY alignCorners:(BOOL)alignCorners
{
  v7.receiver = self;
  v7.super_class = MPSCNNUpsamplingBilinear;
  return [(MPSCNNUpsampling *)&v7 initWithDevice:device filterType:1 integerScaleFactorX:integerScaleFactorX integerScaleFactorY:integerScaleFactorY alignCorners:alignCorners];
}

@end