@interface NSPlaceholderValue
- (const)objCType;
- (void)getValue:(void *)value;
- (void)getValue:(void *)value size:(unint64_t)size;
@end

@implementation NSPlaceholderValue

- (const)objCType
{
  NSLog(@"Did you forget to nest alloc and init?");
  v4 = objc_opt_class();
  v5 = objc_opt_self();
  v6 = __SCR_NSValue;
  if (v4 == v5)
  {
    v6 = __SCR_NSNumber;
  }

  NSRequestConcreteImplementation(self, a2, *v6);
}

- (void)getValue:(void *)value
{
  NSLog(@"Did you forget to nest alloc and init?", a2, value);
  v5 = objc_opt_class();
  v6 = objc_opt_self();
  v7 = __SCR_NSValue;
  if (v5 == v6)
  {
    v7 = __SCR_NSNumber;
  }

  v8 = *v7;

  NSRequestConcreteImplementation(self, a2, v8);
}

- (void)getValue:(void *)value size:(unint64_t)size
{
  NSLog(@"Did you forget to nest alloc and init?", a2, value, size);
  v6 = objc_opt_class();
  v7 = objc_opt_self();
  v8 = __SCR_NSValue;
  if (v6 == v7)
  {
    v8 = __SCR_NSNumber;
  }

  v9 = *v8;

  NSRequestConcreteImplementation(self, a2, v9);
}

@end