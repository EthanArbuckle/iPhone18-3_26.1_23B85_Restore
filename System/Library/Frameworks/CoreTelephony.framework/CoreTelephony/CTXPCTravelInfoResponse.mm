@interface CTXPCTravelInfoResponse
+ (id)allowedClassesForArguments;
- (CTPlanTravelDetails)details;
- (CTXPCTravelInfoResponse)initWithDetails:(id)details;
@end

@implementation CTXPCTravelInfoResponse

- (CTXPCTravelInfoResponse)initWithDetails:(id)details
{
  detailsCopy = details;
  v5 = objc_opt_new();
  [v5 setObject:detailsCopy forKeyedSubscript:@"travelInfo"];
  v8.receiver = self;
  v8.super_class = CTXPCTravelInfoResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCTravelInfoResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

- (CTPlanTravelDetails)details
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKeyedSubscript:@"travelInfo"];
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

@end