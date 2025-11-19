@interface HSPCHomeProviderFactory
+ (id)providerForCoordinator:(id)a3 config:(id)a4;
@end

@implementation HSPCHomeProviderFactory

+ (id)providerForCoordinator:(id)a3 config:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 isSetupInitiatedByOtherMatterEcosystem];
  v8 = off_1000C4918;
  if (!v7)
  {
    v8 = off_1000C4928;
  }

  v9 = [objc_alloc(*v8) initWithCoordinator:v6 configuration:v5];

  return v9;
}

@end