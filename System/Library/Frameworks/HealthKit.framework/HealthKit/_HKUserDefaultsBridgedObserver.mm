@interface _HKUserDefaultsBridgedObserver
- (_HKUserDefaultsBridgedObserver)initWithHandle:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _HKUserDefaultsBridgedObserver

- (_HKUserDefaultsBridgedObserver)initWithHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HKUserDefaultsBridgedObserver;
  v6 = [(_HKUserDefaultsBridgedObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, a3);
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v13 = 0;
    }
  }

  if (![(HKObserverBridgeHandle *)self->_handle notifyObserversOfChangeForKey:v10 newValue:v13])
  {
    v14.receiver = self;
    v14.super_class = _HKUserDefaultsBridgedObserver;
    [(_HKUserDefaultsBridgedObserver *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

@end