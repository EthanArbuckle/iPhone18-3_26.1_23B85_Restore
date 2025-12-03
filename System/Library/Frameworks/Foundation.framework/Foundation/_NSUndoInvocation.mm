@interface _NSUndoInvocation
- (_NSUndoInvocation)initWithTarget:(id)target invocation:(id)invocation;
- (id)description;
- (void)dealloc;
@end

@implementation _NSUndoInvocation

- (_NSUndoInvocation)initWithTarget:(id)target invocation:(id)invocation
{
  v5 = [(_NSUndoObject *)self initWithTarget:target];
  invocationCopy = invocation;
  v5->_invocation = invocationCopy;
  [(NSInvocation *)invocationCopy retainArguments];
  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSUndoInvocation;
  [(_NSUndoInvocation *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  return [NSString stringWithFormat:@"target: %@ %p -- selector:%@", v4, self->super._target, NSStringFromSelector([(NSInvocation *)self->_invocation selector])];
}

@end