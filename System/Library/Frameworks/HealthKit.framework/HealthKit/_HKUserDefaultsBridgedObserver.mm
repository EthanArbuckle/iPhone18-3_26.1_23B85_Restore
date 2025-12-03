@interface _HKUserDefaultsBridgedObserver
- (_HKUserDefaultsBridgedObserver)initWithHandle:(id)handle;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _HKUserDefaultsBridgedObserver

- (_HKUserDefaultsBridgedObserver)initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = _HKUserDefaultsBridgedObserver;
  v6 = [(_HKUserDefaultsBridgedObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v13 = 0;
    }
  }

  if (![(HKObserverBridgeHandle *)self->_handle notifyObserversOfChangeForKey:pathCopy newValue:v13])
  {
    v14.receiver = self;
    v14.super_class = _HKUserDefaultsBridgedObserver;
    [(_HKUserDefaultsBridgedObserver *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

@end