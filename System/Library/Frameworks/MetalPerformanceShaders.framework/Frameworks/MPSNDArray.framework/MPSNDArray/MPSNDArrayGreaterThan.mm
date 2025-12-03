@interface MPSNDArrayGreaterThan
- (MPSNDArrayGreaterThan)initWithDevice:(id)device;
@end

@implementation MPSNDArrayGreaterThan

- (MPSNDArrayGreaterThan)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGreaterThan;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 13;
  return result;
}

@end