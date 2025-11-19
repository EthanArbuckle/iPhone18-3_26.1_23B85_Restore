@interface CTXPCGetRegulatedRATsSwitchEnabledResponse
+ (id)allowedClassesForArguments;
- (BOOL)enabled;
@end

@implementation CTXPCGetRegulatedRATsSwitchEnabledResponse

- (BOOL)enabled
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"enable"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  v5 = [v4 BOOLValue];

  return v5;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetRegulatedRATsSwitchEnabledResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end