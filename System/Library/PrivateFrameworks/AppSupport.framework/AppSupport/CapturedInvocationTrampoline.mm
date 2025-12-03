@interface CapturedInvocationTrampoline
- (CapturedInvocationTrampoline)initWithTarget:(id)target outInvocation:(id *)invocation;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CapturedInvocationTrampoline

- (CapturedInvocationTrampoline)initWithTarget:(id)target outInvocation:(id *)invocation
{
  v9.receiver = self;
  v9.super_class = CapturedInvocationTrampoline;
  v6 = [(CapturedInvocationTrampoline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(InvocationTrampoline *)v6 setTarget:target];
    v7->_outInvocation = invocation;
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  [invocation setTarget:{-[InvocationTrampoline target](self, "target")}];
  outInvocation = self->_outInvocation;
  if (outInvocation)
  {
    *outInvocation = invocation;
  }
}

@end