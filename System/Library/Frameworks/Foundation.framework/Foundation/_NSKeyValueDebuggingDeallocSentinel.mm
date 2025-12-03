@interface _NSKeyValueDebuggingDeallocSentinel
+ (void)_invalidateSentinelWithKey:(void *)key fromObject:(id)object;
- (_NSKeyValueDebuggingDeallocSentinel)initWithObjectPointer:(unint64_t)pointer callbackBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _NSKeyValueDebuggingDeallocSentinel

+ (void)_invalidateSentinelWithKey:(void *)key fromObject:(id)object
{
  AssociatedObject = objc_getAssociatedObject(object, key);

  [AssociatedObject invalidate];
}

- (_NSKeyValueDebuggingDeallocSentinel)initWithObjectPointer:(unint64_t)pointer callbackBlock:(id)block
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _NSKeyValueDebuggingDeallocSentinel;
  v6 = [(_NSKeyValueDebuggingDeallocSentinel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isInvalid = 0;
    v6->_objectPointer = pointer;
    v6->_callbackBlock = [block copy];
  }

  return v7;
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_isInvalid, 1u) & 1) == 0)
  {

    self->_callbackBlock = 0;
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_isInvalid);
  if ((v3 & 1) == 0)
  {
    (*(self->_callbackBlock + 2))();
  }

  v4.receiver = self;
  v4.super_class = _NSKeyValueDebuggingDeallocSentinel;
  [(_NSKeyValueDebuggingDeallocSentinel *)&v4 dealloc];
}

@end