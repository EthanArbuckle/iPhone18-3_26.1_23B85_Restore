@interface MigratorConfiguration
- (MigratorConfiguration)init;
@end

@implementation MigratorConfiguration

- (MigratorConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MigratorConfiguration;
  result = [(MigratorConfiguration *)&v3 init];
  if (result)
  {
    result->_attempts = 0;
  }

  return result;
}

@end