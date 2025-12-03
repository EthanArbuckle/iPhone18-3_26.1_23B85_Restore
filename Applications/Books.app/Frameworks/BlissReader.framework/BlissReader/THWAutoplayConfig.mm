@interface THWAutoplayConfig
- (THWAutoplayConfig)initWithAutoplayEnabled:(BOOL)enabled;
@end

@implementation THWAutoplayConfig

- (THWAutoplayConfig)initWithAutoplayEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = THWAutoplayConfig;
  result = [(THWAutoplayConfig *)&v5 init];
  if (result)
  {
    result->_enabled = enabled;
  }

  return result;
}

@end