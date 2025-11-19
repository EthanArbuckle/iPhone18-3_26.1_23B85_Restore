@interface NSKeyValueSharedObservers
- (NSKeyValueSharedObservers)initWithObservableClass:(Class)a3;
- (id)snapshot;
- (void)addSharedObserver:(id)a3 forKey:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)dealloc;
@end

@implementation NSKeyValueSharedObservers

- (NSKeyValueSharedObservers)initWithObservableClass:(Class)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSKeyValueSharedObservers;
  result = [(NSKeyValueSharedObservers *)&v5 init];
  if (result)
  {
    result->_observableClass = a3;
    result->_currentClass = a3;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueSharedObservers;
  [(NSKeyValueSharedObservers *)&v3 dealloc];
}

- (void)addSharedObserver:(id)a3 forKey:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v15[1] = *MEMORY[0x1E69E9840];

  self->_snapshot = 0;
  os_unfair_recursive_lock_lock_with_options();
  v11 = NSKeyValuePropertyForIsaAndKeyPath(self->_currentClass, a4);
  currentObservationInfo = self->_currentObservationInfo;
  v15[0] = 0;
  v14 = 0;
  self->_currentObservationInfo = _NSKeyValueObservationInfoCreateByAdding(currentObservationInfo, a3, v11, a5, a6, 0, &v14, v15);

  v13 = [(NSKeyValueProperty *)v11 isaForAutonotifying];
  if (v13)
  {
    self->_currentClass = v13;
  }

  os_unfair_recursive_lock_unlock();
}

- (id)snapshot
{
  snapshot = self->_snapshot;
  if (!snapshot)
  {
    snapshot = [[NSKeyValueSharedObserversSnapshot alloc] _initWithObservationInfo:self->_currentObservationInfo andNotifyingISA:self->_currentClass forObjectOfClass:self->_observableClass];
    self->_snapshot = snapshot;
  }

  v4 = snapshot;

  return v4;
}

@end