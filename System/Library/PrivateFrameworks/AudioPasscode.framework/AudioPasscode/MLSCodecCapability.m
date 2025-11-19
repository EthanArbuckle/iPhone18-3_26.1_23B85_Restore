@interface MLSCodecCapability
- (MLSCodecCapability)init;
- (MLSCodecCapability)initWithCoder:(id)a3;
@end

@implementation MLSCodecCapability

- (MLSCodecCapability)init
{
  v3.receiver = self;
  v3.super_class = MLSCodecCapability;
  return [(AUPasscodeCodecCapability *)&v3 initWithAlgorithmName:@"mls "];
}

- (MLSCodecCapability)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = MLSCodecCapability;
  return [(AUPasscodeCodecCapability *)&v4 init];
}

@end