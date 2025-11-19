@interface MPSCNNUpsamplingNearest
- (MPSCNNUpsamplingNearest)initWithDevice:(id)device integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY;
@end

@implementation MPSCNNUpsamplingNearest

- (MPSCNNUpsamplingNearest)initWithDevice:(id)device integerScaleFactorX:(NSUInteger)integerScaleFactorX integerScaleFactorY:(NSUInteger)integerScaleFactorY
{
  v6.receiver = self;
  v6.super_class = MPSCNNUpsamplingNearest;
  return [(MPSCNNUpsampling *)&v6 initWithDevice:device filterType:0 integerScaleFactorX:integerScaleFactorX integerScaleFactorY:integerScaleFactorY alignCorners:0];
}

@end