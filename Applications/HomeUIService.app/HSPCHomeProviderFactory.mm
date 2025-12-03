@interface HSPCHomeProviderFactory
+ (id)providerForCoordinator:(id)coordinator config:(id)config;
@end

@implementation HSPCHomeProviderFactory

+ (id)providerForCoordinator:(id)coordinator config:(id)config
{
  configCopy = config;
  coordinatorCopy = coordinator;
  isSetupInitiatedByOtherMatterEcosystem = [configCopy isSetupInitiatedByOtherMatterEcosystem];
  v8 = off_1000C4918;
  if (!isSetupInitiatedByOtherMatterEcosystem)
  {
    v8 = off_1000C4928;
  }

  v9 = [objc_alloc(*v8) initWithCoordinator:coordinatorCopy configuration:configCopy];

  return v9;
}

@end