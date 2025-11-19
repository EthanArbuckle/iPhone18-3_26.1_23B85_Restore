@interface MPSCNNMultiply
- (MPSCNNMultiply)initWithDevice:(id)device;
@end

@implementation MPSCNNMultiply

- (MPSCNNMultiply)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNMultiply;
  return [(MPSCNNArithmetic *)&v4 initWithDevice:device arithmeticType:2];
}

@end