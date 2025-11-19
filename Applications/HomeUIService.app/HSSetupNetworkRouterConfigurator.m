@interface HSSetupNetworkRouterConfigurator
- (HSSetupNetworkRouterConfigurator)initWithCoordinator:(id)a3;
@end

@implementation HSSetupNetworkRouterConfigurator

- (HSSetupNetworkRouterConfigurator)initWithCoordinator:(id)a3
{
  v4 = a3;
  v5 = [[HSPCRouterProtectionAutoViewController alloc] initWithCoordinator:v4 configurationDelegate:self];

  v8.receiver = self;
  v8.super_class = HSSetupNetworkRouterConfigurator;
  v6 = [(HSSetupConfigurator *)&v8 initWithInitialViewController:v5];

  return v6;
}

@end