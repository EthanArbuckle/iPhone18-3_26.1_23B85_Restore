@interface CTXPCGetServingPlmnResponse
- (CTXPCGetServingPlmnResponse)initWithPlmn:(id)plmn;
- (NSString)plmn;
@end

@implementation CTXPCGetServingPlmnResponse

- (CTXPCGetServingPlmnResponse)initWithPlmn:(id)plmn
{
  v11[1] = *MEMORY[0x1E69E9840];
  plmnCopy = plmn;
  v10 = @"plmn";
  v11[0] = plmnCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetServingPlmnResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)plmn
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"plmn"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end