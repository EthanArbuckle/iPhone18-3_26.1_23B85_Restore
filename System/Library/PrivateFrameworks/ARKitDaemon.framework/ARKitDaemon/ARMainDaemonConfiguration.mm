@interface ARMainDaemonConfiguration
- (ARMainDaemonConfiguration)init;
@end

@implementation ARMainDaemonConfiguration

- (ARMainDaemonConfiguration)init
{
  v3.receiver = self;
  v3.super_class = ARMainDaemonConfiguration;
  return [(ARMainDaemonConfiguration *)&v3 init];
}

@end