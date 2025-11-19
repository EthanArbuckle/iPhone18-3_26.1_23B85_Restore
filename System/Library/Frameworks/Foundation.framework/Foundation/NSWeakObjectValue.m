@interface NSWeakObjectValue
- (BOOL)isEqualToValue:(id)a3;
- (NSWeakObjectValue)initWithObject:(id)a3;
- (void)dealloc;
- (void)getValue:(void *)a3 size:(unint64_t)a4;
@end

@implementation NSWeakObjectValue

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  _NSObjectStoreWeak();
  v3.receiver = self;
  v3.super_class = NSWeakObjectValue;
  [(NSWeakObjectValue *)&v3 dealloc];
}

- (NSWeakObjectValue)initWithObject:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSWeakObjectValue;
  v4 = [(NSValue *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = a3;
    _NSObjectStoreWeak();
  }

  return v5;
}

- (BOOL)isEqualToValue:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  value = self->_value;
  return value == [a3 nonretainedObjectValue];
}

- (void)getValue:(void *)a3 size:(unint64_t)a4
{
  if (a4 != 8)
  {
    v4 = [NSString stringWithFormat:@"Cannot get value with size %zu. The type encoded as %s is expected to be %zu bytes", a4, [(NSWeakObjectValue *)self objCType], 8];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v4 userInfo:0]);
  }

  *a3 = _NSObjectLoadWeak();
}

@end