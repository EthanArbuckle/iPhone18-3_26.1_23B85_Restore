@interface HKObserverBridgeHandle
- (BOOL)notifyObserversOfChangeForKey:(id)key newValue:(id)value;
- (HKObserverBridge)bridge;
- (HKObserverBridgeHandle)initWithBridge:(id)bridge;
@end

@implementation HKObserverBridgeHandle

- (HKObserverBridgeHandle)initWithBridge:(id)bridge
{
  bridgeCopy = bridge;
  v8.receiver = self;
  v8.super_class = HKObserverBridgeHandle;
  v5 = [(HKObserverBridgeHandle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_bridge, bridgeCopy);
  }

  return v6;
}

- (BOOL)notifyObserversOfChangeForKey:(id)key newValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_bridge);
  v9 = [WeakRetained notifyObserversOfChangeForKey:keyCopy newValue:valueCopy];

  return v9;
}

- (HKObserverBridge)bridge
{
  WeakRetained = objc_loadWeakRetained(&self->_bridge);

  return WeakRetained;
}

@end