@interface MPSNDArraySelect
- (MPSNDArraySelect)initWithDevice:(id)device;
@end

@implementation MPSNDArraySelect

- (MPSNDArraySelect)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySelect;
  result = [(MPSNDArrayMathTernaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeArrayMathTernary;
  result->super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end