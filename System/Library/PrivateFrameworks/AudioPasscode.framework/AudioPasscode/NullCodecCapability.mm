@interface NullCodecCapability
- (NullCodecCapability)init;
- (NullCodecCapability)initWithCoder:(id)coder;
@end

@implementation NullCodecCapability

- (NullCodecCapability)init
{
  v3.receiver = self;
  v3.super_class = NullCodecCapability;
  return [(AUPasscodeCodecCapability *)&v3 initWithAlgorithmName:@"null"];
}

- (NullCodecCapability)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = NullCodecCapability;
  return [(AUPasscodeCodecCapability *)&v4 initWithAlgorithmName:@"null"];
}

@end