@interface MPSNDArrayOffsetIdentity
- (MPSNDArrayOffsetIdentity)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayOffsetIdentity

- (MPSNDArrayOffsetIdentity)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayOffsetIdentity;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:a3];
  result->super.super._encode = EncodeArrayIdentityOffset;
  result->super.super.super._encodeData = result;
  return result;
}

@end