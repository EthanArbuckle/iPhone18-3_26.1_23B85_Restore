@interface NSMethodSignature
- (int64_t)getArgumentIndexForClass:(Class)a3;
@end

@implementation NSMethodSignature

- (int64_t)getArgumentIndexForClass:(Class)a3
{
  v4 = [NSString stringWithFormat:@"@%@", NSStringFromClass(a3)];
  if (![(NSMethodSignature *)self numberOfArguments])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  while (strcmp([(NSMethodSignature *)self getArgumentTypeAtIndex:v5], [(NSString *)v4 UTF8String]))
  {
    if (++v5 >= [(NSMethodSignature *)self numberOfArguments])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

@end