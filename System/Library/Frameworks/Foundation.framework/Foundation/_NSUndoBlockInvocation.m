@interface _NSUndoBlockInvocation
- (_NSUndoBlockInvocation)initWithTarget:(id)a3 handler:(id)a4;
- (void)dealloc;
@end

@implementation _NSUndoBlockInvocation

- (_NSUndoBlockInvocation)initWithTarget:(id)a3 handler:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _NSUndoBlockInvocation;
  v5 = [(_NSUndoObject *)&v8 initWithTarget:a3];
  if (v5)
  {
    v6 = _Block_copy(a4);
    v5->_handler = v6;
    if (!v6)
    {

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"unable to copy handler" userInfo:0]);
    }
  }

  return v5;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  if (self)
  {
    handler = self->_handler;
    if (handler)
    {
      _Block_release(handler);
      self->_handler = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = _NSUndoBlockInvocation;
  [(_NSUndoBlockInvocation *)&v4 dealloc];
}

@end