@interface NSConstantDoubleNumber
- ($2F068FC02377E22BA03580A8162C781E)decimalValue;
- (void)getValue:(void *)a3 size:(unint64_t)a4;
@end

@implementation NSConstantDoubleNumber

- (void)getValue:(void *)a3 size:(unint64_t)a4
{
  if (a4 != 8)
  {
    v4 = [NSString stringWithFormat:@"Cannot get value with size %zu. The type encoded as %s is expected to be %zu bytes", a4, "d", 8];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v4 userInfo:0]);
  }

  *a3 = self->_value;
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