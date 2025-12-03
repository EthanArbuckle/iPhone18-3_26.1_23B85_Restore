@interface NSKeyValueSharedObservers
- (NSKeyValueSharedObservers)initWithObservableClass:(Class)class;
- (id)snapshot;
- (void)addSharedObserver:(id)observer forKey:(id)key options:(unint64_t)options context:(void *)context;
- (void)dealloc;
@end

@implementation NSKeyValueSharedObservers

- (NSKeyValueSharedObservers)initWithObservableClass:(Class)class
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSKeyValueSharedObservers;
  result = [(NSKeyValueSharedObservers *)&v5 init];
  if (result)
  {
    result->_observableClass = class;
    result->_currentClass = class;
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

- (void)addSharedObserver:(id)observer forKey:(id)key options:(unint64_t)options context:(void *)context
{
  v15[1] = *MEMORY[0x1E69E9840];

  self->_snapshot = 0;
  os_unfair_recursive_lock_lock_with_options();
  v11 = NSKeyValuePropertyForIsaAndKeyPath(self->_currentClass, key);
  currentObservationInfo = self->_currentObservationInfo;
  v15[0] = 0;
  v14 = 0;
  self->_currentObservationInfo = _NSKeyValueObservationInfoCreateByAdding(currentObservationInfo, observer, v11, options, context, 0, &v14, v15);

  isaForAutonotifying = [(NSKeyValueProperty *)v11 isaForAutonotifying];
  if (isaForAutonotifying)
  {
    self->_currentClass = isaForAutonotifying;
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