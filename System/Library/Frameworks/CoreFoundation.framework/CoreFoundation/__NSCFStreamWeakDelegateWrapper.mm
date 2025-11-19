@interface __NSCFStreamWeakDelegateWrapper
- (__NSCFStreamWeakDelegateWrapper)initWithDelegate:(id)a3;
- (void)dealloc;
@end

@implementation __NSCFStreamWeakDelegateWrapper

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  _NSObjectStoreWeak(&self->_object, 0, &self->_useFallback);
  v4.receiver = self;
  v4.super_class = __NSCFStreamWeakDelegateWrapper;
  [(__NSCFStreamWeakDelegateWrapper *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (__NSCFStreamWeakDelegateWrapper)initWithDelegate:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = __NSCFStreamWeakDelegateWrapper;
  v4 = [(__NSCFStreamWeakDelegateWrapper *)&v8 init];
  v5 = v4;
  if (v4)
  {
    _NSObjectStoreWeak(&v4->_object, a3, &v4->_useFallback);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

@end