@interface MPSCNNSubtractGradient
- (MPSCNNSubtractGradient)initWithDevice:(id)device isSecondarySourceFilter:(BOOL)isSecondarySourceFilter;
@end

@implementation MPSCNNSubtractGradient

- (MPSCNNSubtractGradient)initWithDevice:(id)device isSecondarySourceFilter:(BOOL)isSecondarySourceFilter
{
  v5.receiver = self;
  v5.super_class = MPSCNNSubtractGradient;
  return [(MPSCNNArithmeticGradient *)&v5 initWithDevice:device arithmeticType:1 isSecondarySourceFilter:isSecondarySourceFilter];
}

@end