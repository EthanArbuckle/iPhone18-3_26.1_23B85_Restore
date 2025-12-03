@interface NSKeyValueSharedObserversSnapshot
- (id)_initWithObservationInfo:(id)info andNotifyingISA:(Class)a forObjectOfClass:(Class)class;
- (void)_assignToObject:(id)object;
- (void)dealloc;
@end

@implementation NSKeyValueSharedObserversSnapshot

- (id)_initWithObservationInfo:(id)info andNotifyingISA:(Class)a forObjectOfClass:(Class)class
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSKeyValueSharedObserversSnapshot;
  v8 = [(NSKeyValueSharedObserversSnapshot *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_observableClass = class;
    v8->_cachedObservationInfo = [info copy];
    v9->_autonotifyingClass = a;
  }

  return v9;
}

- (void)_assignToObject:(id)object
{
  Class = object_getClass(object);
  v6 = Class;
  if (Class != self->_observableClass)
  {
    v7 = _NSKVONotifyingOriginalClassForIsa(Class);
    if (v7 != _NSKVONotifyingOriginalClassForIsa(self->_observableClass))
    {
      v10 = [NSString stringWithFormat:@"%@: Attempted to set shared observers from snapshot %@, which is targetting a different class", object, self];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v10 userInfo:0]);
    }
  }

  [object _setSharedObservationInfo:?];
  autonotifyingClass = self->_autonotifyingClass;
  if (autonotifyingClass)
  {
    v9 = v6 == autonotifyingClass;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {

    object_setClass(object, autonotifyingClass);
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueSharedObserversSnapshot;
  [(NSKeyValueSharedObserversSnapshot *)&v3 dealloc];
}

@end