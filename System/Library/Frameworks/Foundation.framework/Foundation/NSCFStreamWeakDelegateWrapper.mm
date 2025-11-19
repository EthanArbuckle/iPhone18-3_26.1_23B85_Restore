@interface NSCFStreamWeakDelegateWrapper
- (NSCFStreamWeakDelegateWrapper)initWithDelegate:(id)a3;
- (void)dealloc;
@end

@implementation NSCFStreamWeakDelegateWrapper

- (NSCFStreamWeakDelegateWrapper)initWithDelegate:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSCFStreamWeakDelegateWrapper;
  v3 = [(NSCFStreamWeakDelegateWrapper *)&v5 init];
  if (v3)
  {
    _NSObjectStoreWeak();
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  _NSObjectStoreWeak();
  v3.receiver = self;
  v3.super_class = NSCFStreamWeakDelegateWrapper;
  [(NSCFStreamWeakDelegateWrapper *)&v3 dealloc];
}

@end