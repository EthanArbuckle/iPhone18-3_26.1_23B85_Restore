@interface TKHostTokenRegistryTransaction
- (NSDictionary)tokenExtensions;
- (TKHostTokenRegistryTransaction)initWithRegistry:(id)a3 name:(id)a4;
- (id)keychainItemsModified:(id)a3;
- (id)markModified;
- (void)commit;
- (void)dealloc;
@end

@implementation TKHostTokenRegistryTransaction

- (TKHostTokenRegistryTransaction)initWithRegistry:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TKHostTokenRegistryTransaction;
  v8 = [(TKHostTokenRegistryTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_registry, v6);
    objc_storeStrong(&v9->_name, a4);
  }

  return v9;
}

- (void)commit
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  if (!WeakRetained)
  {
    sub_10001DBD0();
  }

  v4 = objc_loadWeakRetained(&self->_registry);
  [v4 commitTransaction];

  objc_storeWeak(&self->_registry, 0);
}

- (id)markModified
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  if (!WeakRetained)
  {
    sub_10001DC3C();
  }

  v4 = objc_loadWeakRetained(&self->_registry);
  [v4 markModified];

  return self;
}

- (id)keychainItemsModified:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  if (!WeakRetained)
  {
    sub_10001DCA8();
  }

  v6 = objc_loadWeakRetained(&self->_registry);
  [v6 keychainItemsModified:v4];

  return self;
}

- (NSDictionary)tokenExtensions
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v3 = [WeakRetained tokenExtensions];

  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  if (WeakRetained)
  {
    sub_10001DD14();
  }

  v4.receiver = self;
  v4.super_class = TKHostTokenRegistryTransaction;
  [(TKHostTokenRegistryTransaction *)&v4 dealloc];
}

@end