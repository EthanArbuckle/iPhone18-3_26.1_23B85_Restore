@interface NSKeyValueSharedObserversSnapshot
- (id)_initWithObservationInfo:(id)a3 andNotifyingISA:(Class)a4 forObjectOfClass:(Class)a5;
- (void)_assignToObject:(id)a3;
- (void)dealloc;
@end

@implementation NSKeyValueSharedObserversSnapshot

- (id)_initWithObservationInfo:(id)a3 andNotifyingISA:(Class)a4 forObjectOfClass:(Class)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSKeyValueSharedObserversSnapshot;
  v8 = [(NSKeyValueSharedObserversSnapshot *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_observableClass = a5;
    v8->_cachedObservationInfo = [a3 copy];
    v9->_autonotifyingClass = a4;
  }

  return v9;
}

- (void)_assignToObject:(id)a3
{
  Class = object_getClass(a3);
  v6 = Class;
  if (Class != self->_observableClass)
  {
    v7 = _NSKVONotifyingOriginalClassForIsa(Class);
    if (v7 != _NSKVONotifyingOriginalClassForIsa(self->_observableClass))
    {
      v10 = [NSString stringWithFormat:@"%@: Attempted to set shared observers from snapshot %@, which is targetting a different class", a3, self];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v10 userInfo:0]);
    }
  }

  [a3 _setSharedObservationInfo:?];
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

    object_setClass(a3, autonotifyingClass);
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