@interface NSWeakObjectValue
- (BOOL)isEqualToValue:(id)value;
- (NSWeakObjectValue)initWithObject:(id)object;
- (void)dealloc;
- (void)getValue:(void *)value size:(unint64_t)size;
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

- (NSWeakObjectValue)initWithObject:(id)object
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSWeakObjectValue;
  v4 = [(NSValue *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = object;
    _NSObjectStoreWeak();
  }

  return v5;
}

- (BOOL)isEqualToValue:(id)value
{
  if (self == value)
  {
    return 1;
  }

  if (!value)
  {
    return 0;
  }

  value = self->_value;
  return value == [value nonretainedObjectValue];
}

- (void)getValue:(void *)value size:(unint64_t)size
{
  if (size != 8)
  {
    v4 = [NSString stringWithFormat:@"Cannot get value with size %zu. The type encoded as %s is expected to be %zu bytes", size, [(NSWeakObjectValue *)self objCType], 8];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v4 userInfo:0]);
  }

  *value = _NSObjectLoadWeak();
}

@end