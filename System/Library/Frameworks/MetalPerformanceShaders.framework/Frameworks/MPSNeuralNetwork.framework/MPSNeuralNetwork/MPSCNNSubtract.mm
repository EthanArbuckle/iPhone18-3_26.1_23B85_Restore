@interface MPSCNNSubtract
- (MPSCNNSubtract)initWithDevice:(id)device;
@end

@implementation MPSCNNSubtract

- (MPSCNNSubtract)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNSubtract;
  return [(MPSCNNArithmetic *)&v4 initWithDevice:device arithmeticType:1];
}

@end