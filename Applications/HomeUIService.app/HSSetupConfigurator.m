@interface HSSetupConfigurator
- (HSSetupConfigurator)initWithInitialViewController:(id)a3;
- (void)configuratorDidFinish:(id)a3;
- (void)configuratorDidUpdateViewController:(id)a3;
@end

@implementation HSSetupConfigurator

- (HSSetupConfigurator)initWithInitialViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = HSSetupConfigurator;
  return [(HSSetupConfigurator *)&v4 initWithConfiguratorDelegate:self initialViewController:a3];
}

- (void)configuratorDidUpdateViewController:(id)a3
{
  if (self != a3)
  {
    NSLog(@"Invalid delegate originator not bridging self", a2);
  }
}

- (void)configuratorDidFinish:(id)a3
{
  if (self != a3)
  {
    NSLog(@"Invalid delegate originator not bridging self", a2);
  }
}

@end