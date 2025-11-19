@interface _NSUndoInvocation
- (_NSUndoInvocation)initWithTarget:(id)a3 invocation:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation _NSUndoInvocation

- (_NSUndoInvocation)initWithTarget:(id)a3 invocation:(id)a4
{
  v5 = [(_NSUndoObject *)self initWithTarget:a3];
  v6 = a4;
  v5->_invocation = v6;
  [(NSInvocation *)v6 retainArguments];
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