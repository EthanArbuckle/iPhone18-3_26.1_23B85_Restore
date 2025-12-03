@interface NSMethodSignature
- (int64_t)getArgumentIndexForClass:(Class)class;
@end

@implementation NSMethodSignature

- (int64_t)getArgumentIndexForClass:(Class)class
{
  v4 = [NSString stringWithFormat:@"@%@", NSStringFromClass(class)];
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