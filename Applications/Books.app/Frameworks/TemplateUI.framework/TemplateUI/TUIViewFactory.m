@interface TUIViewFactory
- (TUIViewFactory)initWithRegistry:(id)a3;
- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)a3 indexPath:(id)a4 host:(id)a5;
@end

@implementation TUIViewFactory

- (TUIViewFactory)initWithRegistry:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TUIViewFactory;
  v6 = [(TUIViewFactory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registry, a3);
    v8 = [[TUIReusableSubviewPool alloc] initWithRegistry:v5];
    subviewPool = v7->_subviewPool;
    v7->_subviewPool = v8;
  }

  return v7;
}

- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)a3 indexPath:(id)a4 host:(id)a5
{
  v6 = [(TUIReusableSubviewPool *)self->_subviewPool dequeueReusableSubviewWithReuseIdentifier:a3 host:a5];
  if (objc_opt_respondsToSelector())
  {
    [v6 setFactory:self];
  }

  [v6 setHidden:0];

  return v6;
}

@end