@interface FRFlintDataProviderFactory
- (FRFlintDataProviderFactory)initWithCloudContext:(id)context resourceManager:(id)manager embedConfigurationManager:(id)configurationManager;
- (id)flintDataProviderForANFContent:(id)content headline:(id)headline;
@end

@implementation FRFlintDataProviderFactory

- (FRFlintDataProviderFactory)initWithCloudContext:(id)context resourceManager:(id)manager embedConfigurationManager:(id)configurationManager
{
  contextCopy = context;
  managerCopy = manager;
  configurationManagerCopy = configurationManager;
  v15.receiver = self;
  v15.super_class = FRFlintDataProviderFactory;
  v12 = [(FRFlintDataProviderFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cloudContext, context);
    objc_storeStrong(&v13->_resourceManager, manager);
    objc_storeStrong(&v13->_embedConfigurationManager, configurationManager);
  }

  return v13;
}

- (id)flintDataProviderForANFContent:(id)content headline:(id)headline
{
  headlineCopy = headline;
  contentCopy = content;
  v8 = [FRFlintDataProvider alloc];
  resourceManager = [(FRFlintDataProviderFactory *)self resourceManager];
  cloudContext = [(FRFlintDataProviderFactory *)self cloudContext];
  embedConfigurationManager = [(FRFlintDataProviderFactory *)self embedConfigurationManager];
  v12 = [(FRFlintDataProvider *)v8 initWithANFContent:contentCopy headline:headlineCopy resourceManager:resourceManager cloudContext:cloudContext embedConfigurationManager:embedConfigurationManager];

  return v12;
}

@end