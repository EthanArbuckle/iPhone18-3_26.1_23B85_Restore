@interface NWURLSessionDataTask
+ (BOOL)isSubclassOfClass:(Class)class;
- (BOOL)isKindOfClass:(Class)class;
- (void)joiningContext;
@end

@implementation NWURLSessionDataTask

- (void)joiningContext
{
  if (self)
  {
    return *(self + 52);
  }

  return self;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = NWURLSessionDataTask;
  if ([(NWURLSessionTask *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isEqual:objc_opt_class()];
  }
}

+ (BOOL)isSubclassOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___NWURLSessionDataTask;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isEqual:objc_opt_class()];
  }
}

@end