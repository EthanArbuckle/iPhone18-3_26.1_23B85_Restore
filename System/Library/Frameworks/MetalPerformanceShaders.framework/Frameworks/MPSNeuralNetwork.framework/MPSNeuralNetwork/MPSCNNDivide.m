@interface MPSCNNDivide
- (MPSCNNDivide)initWithDevice:(id)device;
@end

@implementation MPSCNNDivide

- (MPSCNNDivide)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNDivide;
  return [(MPSCNNArithmetic *)&v4 initWithDevice:device arithmeticType:3];
}

@end