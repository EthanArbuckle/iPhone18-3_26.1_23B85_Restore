@interface AEPluginDelegateInstance
- (AEPluginDelegateInstance)initWithDelegate:(id)a3 forURL:(id)a4;
- (id)annotationProviderWithCoordination:(BOOL)a3 forAssetID:(id)a4;
- (void)dealloc;
- (void)setMetadata:(id)a3 forKey:(id)a4;
@end

@implementation AEPluginDelegateInstance

- (AEPluginDelegateInstance)initWithDelegate:(id)a3 forURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(AEPluginDelegateInstance *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a4);
    objc_storeStrong(&v10->_delegate, a3);
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

- (void)setMetadata:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(AEInstanceDelegate *)self->_delegate helper:self setMetadata:v7 forKey:v6 forURL:self->_url];
  }
}

- (id)annotationProviderWithCoordination:(BOOL)a3 forAssetID:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(AEInstanceDelegate *)self->_delegate helper:self annotationProviderForURL:self->_url needsCoordination:v4 forAssetID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end