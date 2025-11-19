@interface NSPlaceholderValue
- (const)objCType;
- (void)getValue:(void *)a3;
- (void)getValue:(void *)a3 size:(unint64_t)a4;
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

- (void)getValue:(void *)a3
{
  NSLog(@"Did you forget to nest alloc and init?", a2, a3);
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

- (void)getValue:(void *)a3 size:(unint64_t)a4
{
  NSLog(@"Did you forget to nest alloc and init?", a2, a3, a4);
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