@interface CTXPCTraveleSIMCheckResponse
+ (id)allowedClassesForArguments;
- (BOOL)isTraveleSIM;
- (BOOL)isUserTraveling;
@end

@implementation CTXPCTraveleSIMCheckResponse

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCTraveleSIMCheckResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (BOOL)isTraveleSIM
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"isTraveleSIM"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)isUserTraveling
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKeyedSubscript:@"isUserTraveling"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 BOOLValue];

  return v5;
}

@end