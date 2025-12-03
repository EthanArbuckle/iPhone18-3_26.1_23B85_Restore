@interface HMKTCommand
+ (NSString)name;
- (int)main:(id)main;
@end

@implementation HMKTCommand

+ (NSString)name
{
  v2 = NSStringFromClass(self);
  if ([v2 hasPrefix:@"HMKT"])
  {
    v3 = [v2 substringFromIndex:{objc_msgSend(@"HMKT", "length")}];

    v2 = v3;
  }

  lowercaseString = [v2 lowercaseString];

  return lowercaseString;
}

- (int)main:(id)main
{
  mainCopy = main;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end