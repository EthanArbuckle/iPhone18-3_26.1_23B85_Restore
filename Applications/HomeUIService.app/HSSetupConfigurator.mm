@interface HSSetupConfigurator
- (HSSetupConfigurator)initWithInitialViewController:(id)controller;
- (void)configuratorDidFinish:(id)finish;
- (void)configuratorDidUpdateViewController:(id)controller;
@end

@implementation HSSetupConfigurator

- (HSSetupConfigurator)initWithInitialViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = HSSetupConfigurator;
  return [(HSSetupConfigurator *)&v4 initWithConfiguratorDelegate:self initialViewController:controller];
}

- (void)configuratorDidUpdateViewController:(id)controller
{
  if (self != controller)
  {
    NSLog(@"Invalid delegate originator not bridging self", a2);
  }
}

- (void)configuratorDidFinish:(id)finish
{
  if (self != finish)
  {
    NSLog(@"Invalid delegate originator not bridging self", a2);
  }
}

@end