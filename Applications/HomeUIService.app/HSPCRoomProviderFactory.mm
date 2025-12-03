@interface HSPCRoomProviderFactory
+ (id)providerForCoordinator:(id)coordinator config:(id)config;
@end

@implementation HSPCRoomProviderFactory

+ (id)providerForCoordinator:(id)coordinator config:(id)config
{
  configCopy = config;
  coordinatorCopy = coordinator;
  isSetupInitiatedByOtherMatterEcosystem = [configCopy isSetupInitiatedByOtherMatterEcosystem];
  v8 = off_1000C4920;
  if (!isSetupInitiatedByOtherMatterEcosystem)
  {
    v8 = off_1000C4930;
  }

  v9 = [objc_alloc(*v8) initWithCoordinator:coordinatorCopy configuration:configCopy];

  return v9;
}

@end