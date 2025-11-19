@interface TUIResourceRegistry
- (TUIResourceRegistry)init;
- (id)fileProviderForKind:(id)a3;
- (id)imageProviderForKind:(id)a3;
- (void)registerFileProvider:(id)a3 forKind:(id)a4;
- (void)registerImageProvider:(id)a3 forKind:(id)a4;
@end

@implementation TUIResourceRegistry

- (TUIResourceRegistry)init
{
  v8.receiver = self;
  v8.super_class = TUIResourceRegistry;
  v2 = [(TUIResourceRegistry *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    imageProviders = v2->_imageProviders;
    v2->_imageProviders = v3;

    v5 = objc_opt_new();
    fileProviders = v2->_fileProviders;
    v2->_fileProviders = v5;
  }

  return v2;
}

- (void)registerImageProvider:(id)a3 forKind:(id)a4
{
  if (a4)
  {
    [(NSMutableDictionary *)self->_imageProviders setObject:a3 forKeyedSubscript:?];
  }
}

- (id)imageProviderForKind:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_imageProviders objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)registerFileProvider:(id)a3 forKind:(id)a4
{
  if (a4)
  {
    [(NSMutableDictionary *)self->_fileProviders setObject:a3 forKeyedSubscript:?];
  }
}

- (id)fileProviderForKind:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_fileProviders objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end