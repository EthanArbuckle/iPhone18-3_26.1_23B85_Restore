@interface NSObservationSource
- (void)_observerStorageOfSize:(unint64_t)size;
- (void)dealloc;
@end

@implementation NSObservationSource

- (void)_observerStorageOfSize:(unint64_t)size
{
  if (size != 32)
  {
    __assert_rtn("[NSObservationSource _observerStorageOfSize:]", "NSObservationTransformers.m", 21, "sz == 4 * sizeof(id)");
  }

  return self->_observers;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSObservationSource *)self _destroyObserverList];
  v3.receiver = self;
  v3.super_class = NSObservationSource;
  [(NSObservationSource *)&v3 dealloc];
}

@end