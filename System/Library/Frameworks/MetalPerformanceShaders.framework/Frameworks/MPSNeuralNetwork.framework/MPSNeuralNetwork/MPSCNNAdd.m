@interface MPSCNNAdd
- (MPSCNNAdd)initWithDevice:(id)device;
@end

@implementation MPSCNNAdd

- (MPSCNNAdd)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNAdd;
  return [(MPSCNNArithmetic *)&v4 initWithDevice:device arithmeticType:0];
}

@end