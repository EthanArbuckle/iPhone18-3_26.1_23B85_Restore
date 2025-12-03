@interface TKHostTokenRegistryTransaction
- (NSDictionary)tokenExtensions;
- (TKHostTokenRegistryTransaction)initWithRegistry:(id)registry name:(id)name;
- (id)keychainItemsModified:(id)modified;
- (id)markModified;
- (void)commit;
- (void)dealloc;
@end

@implementation TKHostTokenRegistryTransaction

- (TKHostTokenRegistryTransaction)initWithRegistry:(id)registry name:(id)name
{
  registryCopy = registry;
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = TKHostTokenRegistryTransaction;
  v8 = [(TKHostTokenRegistryTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_registry, registryCopy);
    objc_storeStrong(&v9->_name, name);
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

- (id)keychainItemsModified:(id)modified
{
  modifiedCopy = modified;
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  if (!WeakRetained)
  {
    sub_10001DCA8();
  }

  v6 = objc_loadWeakRetained(&self->_registry);
  [v6 keychainItemsModified:modifiedCopy];

  return self;
}

- (NSDictionary)tokenExtensions
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  tokenExtensions = [WeakRetained tokenExtensions];

  return tokenExtensions;
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