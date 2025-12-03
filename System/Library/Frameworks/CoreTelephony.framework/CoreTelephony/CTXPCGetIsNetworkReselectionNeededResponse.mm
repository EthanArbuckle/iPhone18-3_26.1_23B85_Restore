@interface CTXPCGetIsNetworkReselectionNeededResponse
+ (id)allowedClassesForArguments;
- (BOOL)needsReselection;
@end

@implementation CTXPCGetIsNetworkReselectionNeededResponse

- (BOOL)needsReselection
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"needsReselection"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetIsNetworkReselectionNeededResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end