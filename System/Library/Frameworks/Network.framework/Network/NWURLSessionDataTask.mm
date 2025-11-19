@interface NWURLSessionDataTask
+ (BOOL)isSubclassOfClass:(Class)a3;
- (BOOL)isKindOfClass:(Class)a3;
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

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = NWURLSessionDataTask;
  if ([(NWURLSessionTask *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

+ (BOOL)isSubclassOfClass:(Class)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___NWURLSessionDataTask;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

@end