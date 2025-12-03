@interface TUIDynamicRegistry
- (TUIDynamicRegistry)init;
- (id)progressProviderForKind:(id)kind;
- (id)stateProviderForKind:(id)kind;
- (void)registerProgressProvider:(id)provider forKind:(id)kind;
- (void)registerStateProvider:(id)provider forKind:(id)kind;
- (void)unregisterStateProviderForKind:(id)kind;
@end

@implementation TUIDynamicRegistry

- (TUIDynamicRegistry)init
{
  v8.receiver = self;
  v8.super_class = TUIDynamicRegistry;
  v2 = [(TUIDynamicRegistry *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    stateProviders = v2->_stateProviders;
    v2->_stateProviders = v3;

    v5 = objc_opt_new();
    progressProviders = v2->_progressProviders;
    v2->_progressProviders = v5;
  }

  return v2;
}

- (void)registerStateProvider:(id)provider forKind:(id)kind
{
  if (kind)
  {
    [(NSMutableDictionary *)self->_stateProviders setObject:provider forKey:?];
  }
}

- (void)unregisterStateProviderForKind:(id)kind
{
  if (kind)
  {
    [(NSMutableDictionary *)self->_stateProviders removeObjectForKey:?];
  }
}

- (id)stateProviderForKind:(id)kind
{
  if (kind)
  {
    v4 = [(NSMutableDictionary *)self->_stateProviders objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)registerProgressProvider:(id)provider forKind:(id)kind
{
  if (kind)
  {
    [(NSMutableDictionary *)self->_progressProviders setObject:provider forKey:?];
  }
}

- (id)progressProviderForKind:(id)kind
{
  if (kind)
  {
    v4 = [(NSMutableDictionary *)self->_progressProviders objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end