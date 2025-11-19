@interface HKObserverBridgeHandle
- (BOOL)notifyObserversOfChangeForKey:(id)a3 newValue:(id)a4;
- (HKObserverBridge)bridge;
- (HKObserverBridgeHandle)initWithBridge:(id)a3;
@end

@implementation HKObserverBridgeHandle

- (HKObserverBridgeHandle)initWithBridge:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKObserverBridgeHandle;
  v5 = [(HKObserverBridgeHandle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_bridge, v4);
  }

  return v6;
}

- (BOOL)notifyObserversOfChangeForKey:(id)a3 newValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bridge);
  v9 = [WeakRetained notifyObserversOfChangeForKey:v7 newValue:v6];

  return v9;
}

- (HKObserverBridge)bridge
{
  WeakRetained = objc_loadWeakRetained(&self->_bridge);

  return WeakRetained;
}

@end