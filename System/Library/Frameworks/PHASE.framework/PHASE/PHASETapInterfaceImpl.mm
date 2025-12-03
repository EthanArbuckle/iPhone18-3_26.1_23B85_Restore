@interface PHASETapInterfaceImpl
- (PHASETapInterfaceImpl)init;
- (PHASETapInterfaceImpl)initWithTapRegistry:(id)registry;
- (PHASETapRegistry)tapRegistry;
@end

@implementation PHASETapInterfaceImpl

- (PHASETapInterfaceImpl)init
{
  [(PHASETapInterfaceImpl *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASETapInterfaceImpl)initWithTapRegistry:(id)registry
{
  registryCopy = registry;
  v8.receiver = self;
  v8.super_class = PHASETapInterfaceImpl;
  v5 = [(PHASETapInterfaceImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tapRegistry, registryCopy);
  }

  return v6;
}

- (PHASETapRegistry)tapRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_tapRegistry);

  return WeakRetained;
}

@end