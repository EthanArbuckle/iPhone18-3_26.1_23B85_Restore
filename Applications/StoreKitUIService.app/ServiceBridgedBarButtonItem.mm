@interface ServiceBridgedBarButtonItem
+ (id)itemFromItem:(id)a3;
- (ServiceBridgedNavigationItemProxy)proxyHandler;
- (void)setTitle:(id)a3;
@end

@implementation ServiceBridgedBarButtonItem

+ (id)itemFromItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = v3;

  return v4;
}

- (void)setTitle:(id)a3
{
  [(UIBarButtonItem *)self->_underlyingBarButtonItem setTitle:a3];
  v4 = [(ServiceBridgedBarButtonItem *)self proxyHandler];
  [v4 navigationItemUpdated];
}

- (ServiceBridgedNavigationItemProxy)proxyHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyHandler);

  return WeakRetained;
}

@end