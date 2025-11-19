@interface CTXPCLoadCarrierStoreVisitStatusResponse
+ (id)allowedClassesForArguments;
- (CTXPCLoadCarrierStoreVisitStatusResponse)initWithVisited:(id)a3;
- (NSNumber)visited;
@end

@implementation CTXPCLoadCarrierStoreVisitStatusResponse

- (CTXPCLoadCarrierStoreVisitStatusResponse)initWithVisited:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = @"visited";
    v13[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11.receiver = self;
    v11.super_class = CTXPCLoadCarrierStoreVisitStatusResponse;
    v7 = [(CTXPCMessage *)&v11 initWithNamedArguments:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CTXPCLoadCarrierStoreVisitStatusResponse;
    v7 = [(CTXPCMessage *)&v10 initWithNamedArguments:MEMORY[0x1E695E0F8]];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCLoadCarrierStoreVisitStatusResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (NSNumber)visited
{
  v3 = [(CTXPCMessage *)self namedArguments];
  v4 = [v3 objectForKeyedSubscript:@"visited"];

  if (v4)
  {
    v5 = [(CTXPCMessage *)self namedArguments];
    v6 = [v5 objectForKeyedSubscript:@"visited"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end