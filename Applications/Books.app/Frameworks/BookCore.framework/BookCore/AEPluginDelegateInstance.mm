@interface AEPluginDelegateInstance
- (AEPluginDelegateInstance)initWithDelegate:(id)delegate forURL:(id)l;
- (id)annotationProviderWithCoordination:(BOOL)coordination forAssetID:(id)d;
- (void)dealloc;
- (void)setMetadata:(id)metadata forKey:(id)key;
@end

@implementation AEPluginDelegateInstance

- (AEPluginDelegateInstance)initWithDelegate:(id)delegate forURL:(id)l
{
  delegateCopy = delegate;
  lCopy = l;
  v9 = [(AEPluginDelegateInstance *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_delegate, delegate);
  }

  return v10;
}

- (void)dealloc
{
  delegate = self->_delegate;
  self->_delegate = 0;

  url = self->_url;
  self->_url = 0;

  v5.receiver = self;
  v5.super_class = AEPluginDelegateInstance;
  [(AEPluginDelegateInstance *)&v5 dealloc];
}

- (void)setMetadata:(id)metadata forKey:(id)key
{
  metadataCopy = metadata;
  keyCopy = key;
  if (objc_opt_respondsToSelector())
  {
    [(AEInstanceDelegate *)self->_delegate helper:self setMetadata:metadataCopy forKey:keyCopy forURL:self->_url];
  }
}

- (id)annotationProviderWithCoordination:(BOOL)coordination forAssetID:(id)d
{
  coordinationCopy = coordination;
  dCopy = d;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(AEInstanceDelegate *)self->_delegate helper:self annotationProviderForURL:self->_url needsCoordination:coordinationCopy forAssetID:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end