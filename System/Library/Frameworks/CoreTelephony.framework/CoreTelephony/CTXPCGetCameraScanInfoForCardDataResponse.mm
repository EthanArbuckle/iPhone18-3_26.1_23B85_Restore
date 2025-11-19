@interface CTXPCGetCameraScanInfoForCardDataResponse
+ (id)allowedClassesForArguments;
- (CTCellularPlanManagerCameraScanAction)action;
- (CTXPCGetCameraScanInfoForCardDataResponse)initWithAction:(id)a3;
@end

@implementation CTXPCGetCameraScanInfoForCardDataResponse

- (CTXPCGetCameraScanInfoForCardDataResponse)initWithAction:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setObject:v4 forKeyedSubscript:@"action"];
  v8.receiver = self;
  v8.super_class = CTXPCGetCameraScanInfoForCardDataResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTCellularPlanManagerCameraScanAction)action
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"action"];
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
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetCameraScanInfoForCardDataResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end