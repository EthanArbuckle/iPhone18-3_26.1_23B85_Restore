@interface AVServerWrapper
- (AVHapticServerInstance)serverInstance;
- (AVServerWrapper)initWithServerInstance:(id)instance;
- (BOOL)contains:(id)contains;
@end

@implementation AVServerWrapper

- (AVHapticServerInstance)serverInstance
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInstance);

  return WeakRetained;
}

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  serverInstance = [(AVServerWrapper *)self serverInstance];
  LOBYTE(self) = serverInstance == containsCopy;

  return self;
}

- (AVServerWrapper)initWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8.receiver = self;
  v8.super_class = AVServerWrapper;
  v5 = [(AVServerWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_serverInstance, instanceCopy);
  }

  return v6;
}

@end