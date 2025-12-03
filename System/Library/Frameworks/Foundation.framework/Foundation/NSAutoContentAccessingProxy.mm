@interface NSAutoContentAccessingProxy
+ (id)proxyWithTarget:(id)target;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation NSAutoContentAccessingProxy

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [self->_target endContentAccess];

  v3.receiver = self;
  v3.super_class = NSAutoContentAccessingProxy;
  [(NSProxy *)&v3 dealloc];
}

+ (id)proxyWithTarget:(id)target
{
  if (![target conformsToProtocol:&unk_1EEF6EE48] || !objc_msgSend(target, "beginContentAccess"))
  {
    return 0;
  }

  v4 = [NSAutoContentAccessingProxy alloc];
  v4->_target = target;

  return v4;
}

- (void)forwardInvocation:(id)invocation
{
  [invocation setTarget:self->_target];

  [invocation invoke];
}

@end