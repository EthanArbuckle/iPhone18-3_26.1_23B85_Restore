@interface CapturedInvocationTrampoline
- (CapturedInvocationTrampoline)initWithTarget:(id)a3 outInvocation:(id *)a4;
- (void)forwardInvocation:(id)a3;
@end

@implementation CapturedInvocationTrampoline

- (CapturedInvocationTrampoline)initWithTarget:(id)a3 outInvocation:(id *)a4
{
  v9.receiver = self;
  v9.super_class = CapturedInvocationTrampoline;
  v6 = [(CapturedInvocationTrampoline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(InvocationTrampoline *)v6 setTarget:a3];
    v7->_outInvocation = a4;
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  [a3 setTarget:{-[InvocationTrampoline target](self, "target")}];
  outInvocation = self->_outInvocation;
  if (outInvocation)
  {
    *outInvocation = a3;
  }
}

@end