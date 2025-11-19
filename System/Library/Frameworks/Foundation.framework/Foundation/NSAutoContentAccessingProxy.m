@interface NSAutoContentAccessingProxy
+ (id)proxyWithTarget:(id)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
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

+ (id)proxyWithTarget:(id)a3
{
  if (![a3 conformsToProtocol:&unk_1EEF6EE48] || !objc_msgSend(a3, "beginContentAccess"))
  {
    return 0;
  }

  v4 = [NSAutoContentAccessingProxy alloc];
  v4->_target = a3;

  return v4;
}

- (void)forwardInvocation:(id)a3
{
  [a3 setTarget:self->_target];

  [a3 invoke];
}

@end