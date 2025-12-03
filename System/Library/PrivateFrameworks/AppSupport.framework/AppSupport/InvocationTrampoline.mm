@interface InvocationTrampoline
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)performInvocation:(id)invocation;
@end

@implementation InvocationTrampoline

- (void)dealloc
{
  self->_target = 0;
  v3.receiver = self;
  v3.super_class = InvocationTrampoline;
  [(InvocationTrampoline *)&v3 dealloc];
}

- (void)performInvocation:(id)invocation
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [invocation invokeWithTarget:{-[InvocationTrampoline target](self, "target")}];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  selfCopy = self;
  v6.receiver = self;
  v6.super_class = InvocationTrampoline;
  if (![(InvocationTrampoline *)&v6 respondsToSelector:?])
  {
    selfCopy = [(InvocationTrampoline *)selfCopy target];
  }

  return [(InvocationTrampoline *)selfCopy methodSignatureForSelector:selector];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = InvocationTrampoline;
  if ([(InvocationTrampoline *)&v6 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    [(InvocationTrampoline *)self target];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  target = [(InvocationTrampoline *)self target];

  [invocation invokeWithTarget:target];
}

@end