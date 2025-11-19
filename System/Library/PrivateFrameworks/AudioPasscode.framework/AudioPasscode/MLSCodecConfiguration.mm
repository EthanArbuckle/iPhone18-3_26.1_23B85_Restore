@interface MLSCodecConfiguration
- (MLSCodecConfiguration)init;
@end

@implementation MLSCodecConfiguration

- (MLSCodecConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MLSCodecConfiguration;
  return [(MLSCodecConfiguration *)&v3 init];
}

@end