@interface HMKTCommand
+ (NSString)name;
- (int)main:(id)a3;
@end

@implementation HMKTCommand

+ (NSString)name
{
  v2 = NSStringFromClass(a1);
  if ([v2 hasPrefix:@"HMKT"])
  {
    v3 = [v2 substringFromIndex:{objc_msgSend(@"HMKT", "length")}];

    v2 = v3;
  }

  v4 = [v2 lowercaseString];

  return v4;
}

- (int)main:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end