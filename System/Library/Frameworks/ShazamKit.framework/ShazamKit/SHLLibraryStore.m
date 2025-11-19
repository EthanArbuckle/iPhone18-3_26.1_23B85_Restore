@interface SHLLibraryStore
- (SHLLibraryCache)currentCache;
- (SHLLibraryStore)initWithConfiguration:(id)a3;
@end

@implementation SHLLibraryStore

- (SHLLibraryStore)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SHLLibraryStore;
  v6 = [(SHLLibraryStore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = -[SHLCloudContainerTransformer initWithScope:]([SHLCloudContainerTransformer alloc], "initWithScope:", [v5 sessionScope]);
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

  v4 = [(SHLLibraryStore *)self configuration];
  v5 = [v4 sessionType];

  if (v5)
  {
    currentCache = self->_currentCache;
LABEL_4:
    v6 = currentCache;
    goto LABEL_5;
  }

  v8 = [(SHLLibraryStore *)self containerTransformer];
  v9 = [v8 cloudBackedContainer];

  v10 = [SHLCloudLibraryCache alloc];
  v11 = [(SHLLibraryStore *)self configuration];
  v12 = [v11 callingProcessIdentifier];
  v13 = [v9 container];
  v14 = [v13 containerIdentifier];
  v15 = [(SHLLibraryStore *)self configuration];
  v16 = [v15 sessionIdentifier];
  v6 = [(SHLCloudLibraryCache *)v10 initWithCallingProcessIdentifier:v12 containerIdentifier:v14 transactionIdentifier:v16];

LABEL_5:

  return v6;
}

@end