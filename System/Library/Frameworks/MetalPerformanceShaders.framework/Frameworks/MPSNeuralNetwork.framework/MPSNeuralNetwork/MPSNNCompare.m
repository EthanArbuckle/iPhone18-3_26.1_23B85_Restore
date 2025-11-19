@interface MPSNNCompare
- (MPSNNCompare)initWithDevice:(id)device;
@end

@implementation MPSNNCompare

- (MPSNNCompare)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNCompare;
  result = [(MPSCNNArithmetic *)&v4 initWithDevice:device arithmeticType:4];
  if (result)
  {
    *&result->_threshold = 0;
    *(&result->super._arithmeticType + 1) = 0;
  }

  return result;
}

@end