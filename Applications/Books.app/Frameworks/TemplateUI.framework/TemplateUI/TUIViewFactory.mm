@interface TUIViewFactory
- (TUIViewFactory)initWithRegistry:(id)registry;
- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)identifier indexPath:(id)path host:(id)host;
@end

@implementation TUIViewFactory

- (TUIViewFactory)initWithRegistry:(id)registry
{
  registryCopy = registry;
  v11.receiver = self;
  v11.super_class = TUIViewFactory;
  v6 = [(TUIViewFactory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registry, registry);
    v8 = [[TUIReusableSubviewPool alloc] initWithRegistry:registryCopy];
    subviewPool = v7->_subviewPool;
    v7->_subviewPool = v8;
  }

  return v7;
}

- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)identifier indexPath:(id)path host:(id)host
{
  v6 = [(TUIReusableSubviewPool *)self->_subviewPool dequeueReusableSubviewWithReuseIdentifier:identifier host:host];
  if (objc_opt_respondsToSelector())
  {
    [v6 setFactory:self];
  }

  [v6 setHidden:0];

  return v6;
}

@end