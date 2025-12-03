@interface CTXPCGetIsDataAttachedResponse
+ (id)allowedClassesForArguments;
- (BOOL)isDataAttached;
@end

@implementation CTXPCGetIsDataAttachedResponse

- (BOOL)isDataAttached
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"isDataAttached"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetIsDataAttachedResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end