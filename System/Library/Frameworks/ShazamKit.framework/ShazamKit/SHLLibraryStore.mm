@interface SHLLibraryStore
- (SHLLibraryCache)currentCache;
- (SHLLibraryStore)initWithConfiguration:(id)configuration;
@end

@implementation SHLLibraryStore

- (SHLLibraryStore)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SHLLibraryStore;
  v6 = [(SHLLibraryStore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = -[SHLCloudContainerTransformer initWithScope:]([SHLCloudContainerTransformer alloc], "initWithScope:", [configurationCopy sessionScope]);
    containerTransformer = v7->_containerTransformer;
    v7->_containerTransformer = v8;
  }

  return v7;
}

- (SHLLibraryCache)currentCache
{
  currentCache = self->_currentCache;
  if (currentCache)
  {
    goto LABEL_4;
  }

  configuration = [(SHLLibraryStore *)self configuration];
  sessionType = [configuration sessionType];

  if (sessionType)
  {
    currentCache = self->_currentCache;
LABEL_4:
    v6 = currentCache;
    goto LABEL_5;
  }

  containerTransformer = [(SHLLibraryStore *)self containerTransformer];
  cloudBackedContainer = [containerTransformer cloudBackedContainer];

  v10 = [SHLCloudLibraryCache alloc];
  configuration2 = [(SHLLibraryStore *)self configuration];
  callingProcessIdentifier = [configuration2 callingProcessIdentifier];
  container = [cloudBackedContainer container];
  containerIdentifier = [container containerIdentifier];
  configuration3 = [(SHLLibraryStore *)self configuration];
  sessionIdentifier = [configuration3 sessionIdentifier];
  v6 = [(SHLCloudLibraryCache *)v10 initWithCallingProcessIdentifier:callingProcessIdentifier containerIdentifier:containerIdentifier transactionIdentifier:sessionIdentifier];

LABEL_5:

  return v6;
}

@end