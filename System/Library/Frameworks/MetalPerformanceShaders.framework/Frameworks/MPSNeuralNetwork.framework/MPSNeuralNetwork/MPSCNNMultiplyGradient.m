@interface MPSCNNMultiplyGradient
- (MPSCNNMultiplyGradient)initWithDevice:(id)device isSecondarySourceFilter:(BOOL)isSecondarySourceFilter;
@end

@implementation MPSCNNMultiplyGradient

- (MPSCNNMultiplyGradient)initWithDevice:(id)device isSecondarySourceFilter:(BOOL)isSecondarySourceFilter
{
  v5.receiver = self;
  v5.super_class = MPSCNNMultiplyGradient;
  return [(MPSCNNArithmeticGradient *)&v5 initWithDevice:device arithmeticType:2 isSecondarySourceFilter:isSecondarySourceFilter];
}

@end