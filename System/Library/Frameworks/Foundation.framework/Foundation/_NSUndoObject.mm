@interface _NSUndoObject
- (_NSUndoObject)initWithTarget:(id)target;
@end

@implementation _NSUndoObject

- (_NSUndoObject)initWithTarget:(id)target
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _NSUndoObject;
  result = [(_NSUndoObject *)&v5 init];
  result->_target = target;
  return result;
}

@end