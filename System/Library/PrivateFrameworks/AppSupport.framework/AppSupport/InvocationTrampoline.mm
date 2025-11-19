@interface InvocationTrampoline
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)performInvocation:(id)a3;
@end

@implementation InvocationTrampoline

- (void)dealloc
{
  self->_target = 0;
  v3.receiver = self;
  v3.super_class = InvocationTrampoline;
  [(InvocationTrampoline *)&v3 dealloc];
}

- (void)performInvocation:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [a3 invokeWithTarget:{-[InvocationTrampoline target](self, "target")}];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = self;
  v6.receiver = self;
  v6.super_class = InvocationTrampoline;
  if (![(InvocationTrampoline *)&v6 respondsToSelector:?])
  {
    v4 = [(InvocationTrampoline *)v4 target];
  }

  return [(InvocationTrampoline *)v4 methodSignatureForSelector:a3];
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (void)forwardInvocation:(id)a3
{
  v4 = [(InvocationTrampoline *)self target];

  [a3 invokeWithTarget:v4];
}

@end