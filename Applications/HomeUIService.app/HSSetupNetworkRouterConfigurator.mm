@interface HSSetupNetworkRouterConfigurator
- (HSSetupNetworkRouterConfigurator)initWithCoordinator:(id)coordinator;
@end

@implementation HSSetupNetworkRouterConfigurator

- (HSSetupNetworkRouterConfigurator)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v5 = [[HSPCRouterProtectionAutoViewController alloc] initWithCoordinator:coordinatorCopy configurationDelegate:self];

  v8.receiver = self;
  v8.super_class = HSSetupNetworkRouterConfigurator;
  v6 = [(HSSetupConfigurator *)&v8 initWithInitialViewController:v5];

  return v6;
}

@end