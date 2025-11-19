@interface _NSUndoLightInvocation
- (_NSUndoLightInvocation)initWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5;
- (id)description;
- (void)dealloc;
- (void)invoke;
@end

@implementation _NSUndoLightInvocation

- (_NSUndoLightInvocation)initWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSUndoLightInvocation;
  v7 = [(_NSUndoObject *)&v10 initWithTarget:a3];
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0;
  }

  v7->_selector = v8;
  v7->_arg = a5;
  return v7;
}

- (void)invoke
{
  target = self->super._target;
  selector = self->_selector;
  if (selector)
  {
    [target selector];
  }

  else
  {
    [target 0];
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSUndoLightInvocation;
  [(_NSUndoLightInvocation *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  target = self->super._target;
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v7 = NSStringFromSelector(selector);
  if (self->_arg)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    arg = self->_arg;
  }

  else
  {
    arg = 0;
    v9 = @"none";
  }

  return [NSString stringWithFormat:@"target: %@ %p -- selector:%@ -- arg:%@ %p", v4, target, v7, v9, arg];
}

@end