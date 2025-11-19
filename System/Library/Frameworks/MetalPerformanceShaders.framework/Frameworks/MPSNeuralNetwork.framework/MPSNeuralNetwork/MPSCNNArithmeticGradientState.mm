@interface MPSCNNArithmeticGradientState
- (MPSCNNArithmeticGradientState)init;
- (void)dealloc;
@end

@implementation MPSCNNArithmeticGradientState

- (MPSCNNArithmeticGradientState)init
{
  v3.receiver = self;
  v3.super_class = MPSCNNArithmeticGradientState;
  return [(MPSState *)&v3 initWithResource:0];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSCNNArithmeticGradientState;
  [(MPSNNBinaryGradientState *)&v2 dealloc];
}

@end