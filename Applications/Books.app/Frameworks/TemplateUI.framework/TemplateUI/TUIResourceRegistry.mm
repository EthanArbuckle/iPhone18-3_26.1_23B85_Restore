@interface TUIResourceRegistry
- (TUIResourceRegistry)init;
- (id)fileProviderForKind:(id)kind;
- (id)imageProviderForKind:(id)kind;
- (void)registerFileProvider:(id)provider forKind:(id)kind;
- (void)registerImageProvider:(id)provider forKind:(id)kind;
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

- (void)registerImageProvider:(id)provider forKind:(id)kind
{
  if (kind)
  {
    [(NSMutableDictionary *)self->_imageProviders setObject:provider forKeyedSubscript:?];
  }
}

- (id)imageProviderForKind:(id)kind
{
  if (kind)
  {
    v4 = [(NSMutableDictionary *)self->_imageProviders objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)registerFileProvider:(id)provider forKind:(id)kind
{
  if (kind)
  {
    [(NSMutableDictionary *)self->_fileProviders setObject:provider forKeyedSubscript:?];
  }
}

- (id)fileProviderForKind:(id)kind
{
  if (kind)
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