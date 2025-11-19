@interface MPSCNNAddGradient
- (MPSCNNAddGradient)initWithDevice:(id)device isSecondarySourceFilter:(BOOL)isSecondarySourceFilter;
@end

@implementation MPSCNNAddGradient

- (MPSCNNAddGradient)initWithDevice:(id)device isSecondarySourceFilter:(BOOL)isSecondarySourceFilter
{
  v5.receiver = self;
  v5.super_class = MPSCNNAddGradient;
  return [(MPSCNNArithmeticGradient *)&v5 initWithDevice:device arithmeticType:0 isSecondarySourceFilter:isSecondarySourceFilter];
}

@end