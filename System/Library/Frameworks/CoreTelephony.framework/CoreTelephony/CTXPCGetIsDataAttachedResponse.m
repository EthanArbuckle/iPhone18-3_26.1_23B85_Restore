@interface CTXPCGetIsDataAttachedResponse
+ (id)allowedClassesForArguments;
- (BOOL)isDataAttached;
@end

@implementation CTXPCGetIsDataAttachedResponse

- (BOOL)isDataAttached
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"isDataAttached"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 BOOLValue];

  return v5;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetIsDataAttachedResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end