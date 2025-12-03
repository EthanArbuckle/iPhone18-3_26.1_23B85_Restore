@interface CTXPCGetCameraScanInfoForCardDataResponse
+ (id)allowedClassesForArguments;
- (CTCellularPlanManagerCameraScanAction)action;
- (CTXPCGetCameraScanInfoForCardDataResponse)initWithAction:(id)action;
@end

@implementation CTXPCGetCameraScanInfoForCardDataResponse

- (CTXPCGetCameraScanInfoForCardDataResponse)initWithAction:(id)action
{
  actionCopy = action;
  v5 = objc_opt_new();
  [v5 setObject:actionCopy forKeyedSubscript:@"action"];
  v8.receiver = self;
  v8.super_class = CTXPCGetCameraScanInfoForCardDataResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTCellularPlanManagerCameraScanAction)action
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"action"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetCameraScanInfoForCardDataResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end