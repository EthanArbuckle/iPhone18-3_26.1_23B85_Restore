@interface AVServerWrapper
- (AVHapticServerInstance)serverInstance;
- (AVServerWrapper)initWithServerInstance:(id)a3;
- (BOOL)contains:(id)a3;
@end

@implementation AVServerWrapper

- (AVHapticServerInstance)serverInstance
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInstance);

  return WeakRetained;
}

- (BOOL)contains:(id)a3
{
  v4 = a3;
  v5 = [(AVServerWrapper *)self serverInstance];
  LOBYTE(self) = v5 == v4;

  return self;
}

- (AVServerWrapper)initWithServerInstance:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVServerWrapper;
  v5 = [(AVServerWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_serverInstance, v4);
  }

  return v6;
}

@end