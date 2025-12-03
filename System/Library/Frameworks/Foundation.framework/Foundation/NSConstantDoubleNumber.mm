@interface NSConstantDoubleNumber
- ($2F068FC02377E22BA03580A8162C781E)decimalValue;
- (void)getValue:(void *)value size:(unint64_t)size;
@end

@implementation NSConstantDoubleNumber

- (void)getValue:(void *)value size:(unint64_t)size
{
  if (size != 8)
  {
    v4 = [NSString stringWithFormat:@"Cannot get value with size %zu. The type encoded as %s is expected to be %zu bytes", size, "d", 8];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v4 userInfo:0]);
  }

  *value = self->_value;
}

- ($2F068FC02377E22BA03580A8162C781E)decimalValue
{
  v4 = [(NSNumber *)[NSDecimalNumber alloc] initWithDouble:self->_value];
  *retstr = 0;
  *&retstr->var5[2] = 0;
  *&retstr->var5[6] = 0;
  if (v4)
  {
    v6 = v4;
    [(NSDecimalNumber *)v4 decimalValue];
    v4 = v6;
  }

  return result;
}

@end