@interface PHASETapInterfaceImpl
- (PHASETapInterfaceImpl)init;
- (PHASETapInterfaceImpl)initWithTapRegistry:(id)a3;
- (PHASETapRegistry)tapRegistry;
@end

@implementation PHASETapInterfaceImpl

- (PHASETapInterfaceImpl)init
{
  [(PHASETapInterfaceImpl *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASETapInterfaceImpl)initWithTapRegistry:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHASETapInterfaceImpl;
  v5 = [(PHASETapInterfaceImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tapRegistry, v4);
  }

  return v6;
}

- (PHASETapRegistry)tapRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_tapRegistry);

  return WeakRetained;
}

@end