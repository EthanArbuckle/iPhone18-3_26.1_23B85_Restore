@interface NSConstantFloatNumber
- ($2F068FC02377E22BA03580A8162C781E)decimalValue;
- (void)getValue:(void *)a3 size:(unint64_t)a4;
@end

@implementation NSConstantFloatNumber

- (void)getValue:(void *)a3 size:(unint64_t)a4
{
  if (a4 != 4)
  {
    v4 = [NSString stringWithFormat:@"Cannot get value with size %zu. The type encoded as %s is expected to be %zu bytes", a4, "f", 4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v4 userInfo:0]);
  }

  *a3 = self->_value;
}

- ($2F068FC02377E22BA03580A8162C781E)decimalValue
{
  v5 = [NSDecimalNumber alloc];
  *&v6 = self->_value;
  v7 = [(NSNumber *)v5 initWithFloat:v6];
  *retstr = 0;
  *&retstr->var5[2] = 0;
  *&retstr->var5[6] = 0;
  if (v7)
  {
    v9 = v7;
    [(NSDecimalNumber *)v7 decimalValue];
    v7 = v9;
  }

  return result;
}

@end