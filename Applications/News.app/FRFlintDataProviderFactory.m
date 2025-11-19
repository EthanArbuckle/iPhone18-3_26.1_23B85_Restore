@interface FRFlintDataProviderFactory
- (FRFlintDataProviderFactory)initWithCloudContext:(id)a3 resourceManager:(id)a4 embedConfigurationManager:(id)a5;
- (id)flintDataProviderForANFContent:(id)a3 headline:(id)a4;
@end

@implementation FRFlintDataProviderFactory

- (FRFlintDataProviderFactory)initWithCloudContext:(id)a3 resourceManager:(id)a4 embedConfigurationManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FRFlintDataProviderFactory;
  v12 = [(FRFlintDataProviderFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cloudContext, a3);
    objc_storeStrong(&v13->_resourceManager, a4);
    objc_storeStrong(&v13->_embedConfigurationManager, a5);
  }

  return v13;
}

- (id)flintDataProviderForANFContent:(id)a3 headline:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [FRFlintDataProvider alloc];
  v9 = [(FRFlintDataProviderFactory *)self resourceManager];
  v10 = [(FRFlintDataProviderFactory *)self cloudContext];
  v11 = [(FRFlintDataProviderFactory *)self embedConfigurationManager];
  v12 = [(FRFlintDataProvider *)v8 initWithANFContent:v7 headline:v6 resourceManager:v9 cloudContext:v10 embedConfigurationManager:v11];

  return v12;
}

@end