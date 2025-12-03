@interface MPSNDArrayOffsetIdentity
- (MPSNDArrayOffsetIdentity)initWithDevice:(id)device;
@end

@implementation MPSNDArrayOffsetIdentity

- (MPSNDArrayOffsetIdentity)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayOffsetIdentity;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeArrayIdentityOffset;
  result->super.super.super._encodeData = result;
  return result;
}

@end